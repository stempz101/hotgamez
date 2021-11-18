<?php

namespace App\Http\Controllers;

use App\Exceptions\ErrorCode;
use App\Exceptions\MessageException;
use App\Exceptions\RegistrationException;
use App\Models\Question;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class MessageController extends Controller
{
    /**
     * @throws RegistrationException
     */
    public function mailMessage(Request $request): JsonResponse
    {
        /* @var User $user */
        $user = Auth::user();
        $text = $request->input('question');
        if (!$text){
            throw new MessageException('Message is empty!', ErrorCode::EMPTY_MESSAGE);
        }

        $message = Question::create([
            'question' => $text,
            'idUser' => $user->id
        ]);

        return $this->successResponse($message);
    }
}
