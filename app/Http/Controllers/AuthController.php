<?php

namespace App\Http\Controllers;

use App\Exceptions\ErrorCode;
use App\Exceptions\LoginException;
use App\Exceptions\RegistrationException;
use App\Models\User;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
    /**
     * @throws RegistrationException
     */
    public function register(Request $request): JsonResponse
    {

        try {
            $this->validate($request, [
            'password' => 'required|string',
            'email' => 'required|email',
            'username' => 'required|string'
            ]);
        } catch (\Exception $e) {
            throw new RegistrationException('Validation Fail!', ErrorCode::VALIDATION_ERROR);
        }

        $email = $request->input('email');
        $username = $request->input('username');
        $password = Hash::make($request->input('password'));

        $userName = User::where('username', $username)->first();
        if ($userName){
            throw new RegistrationException('This username is taken',ErrorCode::THIS_USERNAME_IS_TAKEN);
        }

        $mail = User::where('email', $email)->first();
        if ($mail){
            throw new RegistrationException('This email is already taken',ErrorCode::THIS_EMAIL_IS_ALREADY_TAKEN);
        }

        $user = User::create([
            'email' => $email,
            'password' => $password,
            'username' => $username
        ]);
        /* @var User $user */
        return $this->successResponse($user);
    }

    /**
     * @throws LoginException
     */
    public function login(Request $request): JsonResponse
    {
        try {

            $this->validate($request, [
                'password' => 'required',
                'email' => 'required|email'
            ]);
        } catch (\Exception $e){
            throw new LoginException('Validation fail!', ErrorCode::VALIDATION_ERROR);
        }

        $user = User::where('email', $request->input('email'))->first();

        if (!$user) {
            throw new LoginException('Such user does not exist',ErrorCode::USER_DOES_NOT_EXIST);
        }
        if (!Hash::check($request->input('password'), $user->password)) {
            throw new LoginException('Incorrect password', ErrorCode::INCORRECT_PASSWORD);
        }
        $token = $user->createToken('token')->plainTextToken;

        $cookie = cookie('jwt',$token,60 * 24);
        return $this->successResponse($user)->withCookie($cookie);
    }

    public function user()
    {
        return Auth::user();
    }

    public function logout(Request $request)
    {
        $cookie = Cookie::forget('jwt');
        return response([
            'message' => 'Success'
        ])->withCookie($cookie);

    }







}
