<?php

namespace App\Http\Controllers;

use App\Exceptions\ErrorCode;
use App\Exceptions\LoginException;
use App\Exceptions\UpdateUserException;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

/**
 * @method validate(Request $request, string[] $array)
 */
class UserController extends Controller
{
    public function getUser()
    {
        return Auth::user();
    }

    /**
     * @param Request $request
     */
    public function updateUsername(Request $request)
    {
        try {
            $this->validate($request, [
                'username' => 'required'
            ]);
        } catch (\Exception $e){
            throw new LoginException('Username cannot be empty!', ErrorCode::VALIDATION_ERROR);
        }
        $user = User::where('username', $request->input('username'))->first();
        if ($user) {
            throw new UpdateUserException('Username is taken!!', ErrorCode::THIS_USERNAME_IS_TAKEN);
        }
        $user = Auth::user();
        $user->username = $request->input('username');
        $user->save();
        return $this->successResponse($user);
    }

    public function updatePassword(Request $request)
    {
        try {
            $this->validate($request, [
                'password' => 'required'
            ]);
        } catch (\Exception $e){
            throw new LoginException('Password cannot be empty!', ErrorCode::VALIDATION_ERROR);
        }
        $newPassword = Hash::make($request->input('password'));
        $user = Auth::user();
        $user->password = $newPassword;
        $user->save();
        return $this->successResponse($user);
    }

    public function updateEmail(Request $request)
    {
        $newEmail = $request->input('email');
        if ($newEmail == ""){
            throw new LoginException('Email cannot be empty!', ErrorCode::VALIDATION_ERROR);
        }
        try {
            $this->validate($request, [
                'email' => 'email'
            ]);
        } catch (\Exception $e){
            throw new LoginException('Validation error!', ErrorCode::VALIDATION_ERROR);
        }
        $user = User::where('email', $newEmail)->first();
        if ($user) {
            throw new UpdateUserException('Email is taken!!', ErrorCode::THIS_EMAIL_IS_ALREADY_TAKEN);
        }
        $user = Auth::user();
        $user->email = $newEmail;
        $user->save();
        return $this->successResponse($user);
    }

}
