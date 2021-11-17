<?php

namespace App\Http\Controllers;

use App\Http\Resources\AdminGameResource;
use App\Models\Game;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    //
    public function getGames(Request $request) {
        return AdminGameResource::collection(Game::query()->orderBy('id')->get()->reverse());
    }
}
