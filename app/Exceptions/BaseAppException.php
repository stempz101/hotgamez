<?php


namespace App\Exceptions;



use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;


/**
 * Class BaseAppException
 * @property int errorCode
 * @package App\Exceptions
 */
class BaseAppException extends Exception
{
    /**
     * @var int
     */
    protected $httpStatusCode = Response::HTTP_INTERNAL_SERVER_ERROR;
    /**
     * @var int
     */
    protected $errorCode = Response::HTTP_INTERNAL_SERVER_ERROR;

    /**
     * @return JsonResponse
     */
    public function render(): JsonResponse
    {
        return response()->json([
            'success' => false,
            'message' => $this->message,
            'error_code' => $this->errorCode
        ], $this->httpStatusCode);
    }
}
