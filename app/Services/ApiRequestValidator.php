<?php

namespace App\Services;

use Illuminate\Http\Request;

abstract class ApiRequestValidator
{
    protected bool $valid = false;
    protected array $errorMessages;

    abstract public function validate(Request $request);
}