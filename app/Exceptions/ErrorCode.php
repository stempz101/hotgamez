<?php
namespace App\Exceptions;
/**
 * Interface ErrorCode
 */
interface ErrorCode{

    public const REGISTER_FAIL = 1000;
    public const LOGIN_ERROR = 1001;
    public const INCORRECT_PASSWORD = 1002;
    public const USER_NOT_CONFIRM = 1003;
    public const NOT_HAVE_PERMISSION = 1004;

}
