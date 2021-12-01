<?php

namespace App\Http\Controllers;

use App\Exceptions\ErrorCode;
use App\Exceptions\LoginException;
use App\Exceptions\UpdateUserException;
use App\Models\User;
use http\Env\Request;
use Illuminate\Support\Facades\Auth;

/**
 * @method validate(Request $request, string[] $array)
 */
class UserController
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


    }

}
