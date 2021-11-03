<?php

namespace App\Http\Controllers;

use App\Exceptions\LoginException;
use App\Exceptions\RegistrationException;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    /**
     * @throws ValidationException
     */
    public function register(Request $request): JsonResponse
    {

        try {
         $validated = $request->validate([
            'password' => 'required|string',
            'email' => 'required|email|unique:users',
            'username' => 'required|string|unique:users'
        ]);

        $email = $request->input('email');
        $username = $request->input('username');
        $password = Hash::make($request->input('password'));

        $user = User::create([
            'email' => $email,
            'password' => $password,
            'username' => $username
        ]);

        } catch (ValidationException $e) {
            throw new RegistrationException('Register Fail!');
        }

        /* @var User $user */
        return $this->successResponse($user);
    }

    /**
     * @throws ValidationException
     * @throws LoginException
     */
    public function login(Request $request): JsonResponse
    {
        $this->validate($request, [
            'password' => 'required',
            'email' => 'required|email'
        ]);

        $login = User::where('email', $request->input('email'))->first();

        if (!$login) {
            throw new LoginException('Such user does not exist');
        }
        if (!Hash::check($request->input('password'), $login->password)) {
            throw new LoginException('Incorrect password');
        }
        return $this->successResponse($login);
    }


}
