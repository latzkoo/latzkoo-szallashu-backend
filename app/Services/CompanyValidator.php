<?php

namespace App\Services;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class CompanyValidator extends ApiRequestValidator
{

    /**
     * @param Request $request
     * @param int|null $id
     */
    public function validate(Request $request, int $id = null)
    {
        $validator = Validator::make($request->all(), [
            'companyName' => 'required|string|max:255',
            'companyRegistrationNumber' => ['required', 'string', 'max:11',
                Rule::unique('companies')->where(function ($query) use ($request, $id) {
                    $query->where('companyRegistrationNumber', $request->post('companyRegistrationNumber'))
                        ->where('country', $request->post('country'));

                    if ($id)
                        $query->where('companyId', '!=', $id);

                    return $query;
                }),
            ],
            'companyFoundationDate' => 'nullable|date',
            'country' => 'required|string|max:255',
            'zipCode' => 'nullable|string|max:255',
            'city' => 'nullable|string|max:255',
            'streetAddress' => 'required|string|max:255',
            'latitude' => 'nullable|numeric',
            'longitude' => 'nullable|numeric',
            'companyOwner' => 'nullable|string|max:255',
            'employees' => 'nullable|integer|min:0',
            'activity' => 'nullable|string|max:255',
            'active' => 'nullable|string|in:true,false',
            'email' => ['required', 'email', 'max:255',
                Rule::unique('companies', 'email')->ignore($id, "companyId")],
            'password' => 'required|string|min:12|max:255'
        ]);

        if ($validator->fails())
            $this->errorMessages = $validator->errors()->toArray();

        else
            $this->valid = true;
    }

    /**
     * @param Request $request
     * @param int|null $id
     * @return bool
     */
    public function isValid(Request $request, int $id = null): bool
    {
        $this->validate($request, $id);

        return $this->valid;
    }

    /**
     * @return array
     */
    public function getMessages(): array
    {
        return $this->errorMessages;
    }

}