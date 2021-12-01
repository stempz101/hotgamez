<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/genres', [GameController::class, 'getGenres']);

Route::middleware('auth:sanctum')->group(function (){
    Route::get('/user', [UserController::class, 'getUser']);
    Route::put('/user/username', [UserController::class, 'updateUsername']);
    Route::put('/user/password', [UserController::class, 'updatePassword']);
    Route::put('/user/email', [UserController::class, 'updateEmail']);
    Route::get('/admin/control-panel/games', [AdminController::class, 'getGames']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/about/message', [MessageController::class, 'mailMessage']);
    Route::get('/favorites', [FavoriteController::class, 'getFavorites']);
    Route::post('/game/{id}/action-favorite', [FavoriteController::class, 'actionFavorite']);
});

Route::apiResources([
    'games' => GameController::class,
]);
