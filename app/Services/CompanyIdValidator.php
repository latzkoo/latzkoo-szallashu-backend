<?php

namespace App\Services;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CompanyIdValidator extends ApiRequestValidator
{

    /**
     * @param Request $request
     */
    public function validate(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|array',
            'id.*' => 'required|integer|min:1',
        ]);

        if ($validator->fails())
            $this->errorMessages = $validator->errors()->toArray();

        else
            $this->valid = true;
    }

    /**
     * @param Request $request
     * @return bool
     */
    public function isValid(Request $request): bool
    {
        $this->validate($request);

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