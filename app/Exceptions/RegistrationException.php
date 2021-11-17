<?php

namespace App\Exceptions;
use Illuminate\Http\Response;

/**
 * Class RegistrationException
 * @package App\Exceptions
 */
class RegistrationException extends BaseAppException
{
    /**
     * @var int
     */
    protected $httpStatusCode = Response::HTTP_INTERNAL_SERVER_ERROR;
    protected $errorCode = ErrorCode::REGISTER_FAIL;

    public function __construct(string $message, int $errorCode)
    {
        $this->message = $message;
        $this->errorCode = $errorCode;
    }
}
