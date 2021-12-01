<?php

namespace App\Http\Controllers;


use App\Http\Resources\FavoritesResource;
use App\Models\Favorite;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class FavoriteController extends Controller
{

    public function getFavorites(Request $request): AnonymousResourceCollection
    {

        return FavoritesResource::collection(Favorite::select(['idGame', 'idUser', 'games.game'])->join('games', 'games.id', '=', 'idGame')
            ->where('idUser', $request->get('id'))->get());
    }

}
