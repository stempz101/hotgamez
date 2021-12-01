<?php

namespace App\Exceptions;
use Illuminate\Http\Response;

/**
 * Class RegistrationException
 * @package App\Exceptions
 */
class UpdateUserException extends BaseAppException
{
    /**
     * @var int
     */
    protected $httpStatusCode = Response::HTTP_INTERNAL_SERVER_ERROR;
    protected $errorCode = ErrorCode::UPDATE_USER_DATA_FAIL;

    public function __construct(string $message, int $errorCode)
    {
        $this->message = $message;
        $this->errorCode = $errorCode;
    }
}
