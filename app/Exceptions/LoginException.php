<?php

namespace App\Exceptions;



use Illuminate\Http\Response;


/**
 * Class LoginException
 * @package App\Exceptions
 */
class LoginException extends BaseAppException
{
    /**
     * @var int
     */
    protected $httpStatusCode = Response::HTTP_INTERNAL_SERVER_ERROR;
    protected $errorCode = ErrorCode::LOGIN_ERROR;

    /**
     * @param int $httpStatusCode
     * @param int $errorCode
     */

    public function __construct(string $message, int $errorCode)
    {
        $this->message = $message;
        $this->errorCode = $errorCode;
    }

}
