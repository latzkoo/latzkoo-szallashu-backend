<?php

namespace App\Http\Controllers;

use App\Http\Resources\CompanyFoundationsResource;
use App\Http\Resources\CompanyResource;
use App\Models\Company;
use App\Models\CompanyFoundations;
use App\Services\ApiRequestValidator;
use App\Services\ApiResponse;
use App\Services\CompanyIdValidator;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CompanyController extends Controller
{
    /**
     * Display a listing of companies ordered by foundation date.
     *
     * @param Request $request
     * @return array
     */
    public function getCompaniesByFoundations(Request $request): array
    {
        try {
            $companies = CompanyFoundations::paginate();

            return (new ApiResponse(200,
                CompanyFoundationsResource::collection($companies)->toArray($request)))->getResponse();
        }
        catch (Exception $e) {
            return (new ApiResponse(404))->getResponse();
        }
    }

    /**
     * Display a transposed listing of companies by activities.
     *
     * @return array
     */
    public function getCompaniesByActivities(): array
    {
        try {
            $companies = DB::select('call companies_activities()');
            return (new ApiResponse(200, $companies))->getResponse();
        }
        catch (Exception $e) {
            return (new ApiResponse(404))->getResponse();
        }
    }

    /**
     * Display the specified companies.
     *
     * @param Request $request
     * @param CompanyIdValidator $apiRequestValidator
     * @return array
     */
    public function getByIds(Request $request, CompanyIdValidator $apiRequestValidator): array
    {
        if (!$apiRequestValidator->isValid($request)) {
            return (new ApiResponse(400, $apiRequestValidator->getMessages()))->getResponse();
        }

        $companies = Company::whereIn("companyId", $request->post("id"))->get();

        return (new ApiResponse(200, CompanyResource::collection($companies)->toArray($request)))->getResponse();
    }

    /**
     * Store a newly created company in storage.
     *
     * @param Request $request
     * @param ApiRequestValidator $apiRequestValidator
     * @return array
     */
    public function store(Request $request, ApiRequestValidator $apiRequestValidator): array
    {
        try {
            if (!$apiRequestValidator->isValid($request)) {
                return (new ApiResponse(400, $apiRequestValidator->getMessages()))->getResponse();
            }

            $company = Company::create($request->all());

            return (new ApiResponse(201, collect(new CompanyResource($company))->toArray()))->getResponse();
        }
        catch (Exception $e) {
            return (new ApiResponse(500))->getResponse();
        }
    }

    /**
     * Update the specified company in storage.
     * @param Request $request
     * @param ApiRequestValidator $apiRequestValidator
     * @param int $id
     * @return array
     */
    public function update(Request $request, ApiRequestValidator $apiRequestValidator, int $id): array
    {
        try {
            $company = Company::find($id);

            if (!$company)
                return (new ApiResponse(404))->getResponse();

            if (!$apiRequestValidator->isValid($request, $id))
                return (new ApiResponse(400, $apiRequestValidator->getMessages()))->getResponse();

            $company->fill($request->all())->save();

            return (new ApiResponse(200, collect(new CompanyResource($company))->toArray()))->getResponse();
        }
        catch (Exception $e) {
            return (new ApiResponse(500))->getResponse();
        }
    }

}
