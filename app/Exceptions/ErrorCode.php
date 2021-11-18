<?php
namespace App\Exceptions;
/**
 * Interface ErrorCode
 */
interface ErrorCode{
    //auth + validation
    public const REGISTER_FAIL = 1000;
    public const LOGIN_ERROR = 1001;
    public const INCORRECT_PASSWORD = 1002;
    public const USER_DOES_NOT_EXIST = 1003;
    public const VALIDATION_ERROR = 1004;
    public const THIS_USERNAME_IS_TAKEN = 1005;
    public const THIS_EMAIL_IS_ALREADY_TAKEN = 1006;
    public const USER_NOT_AUTHORIZED = 1007;

    public const MESSAGE_FAIL = 2000;
    public const EMPTY_MESSAGE = 2001;

}
