<?php

namespace App\Services;

class ApiResponse
{
    private int $code;
    private array $data;
    private array $messages;

    public function __construct(int $code, array $data = [])
    {
        $this->messages = [
            200 => 'Ok.',
            201 => 'Created.',
            400 => 'Bad request.',
            404 => 'Not found.',
            500 => 'Internal server error.'
        ];

        $this->code = in_array($code, array_keys($this->messages)) ? $code : 200;
        $this->data = $data;
    }

    public function getResponse(): array
    {
        $response = [
            'code' => $this->code,
            'message' => $this->messages[$this->code]
        ];

        if (!empty($this->data))
            $response[$this->code === 400 ? "errors" : "data"] = $this->data;

        return $response;
    }

}