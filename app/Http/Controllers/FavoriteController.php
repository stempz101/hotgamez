<?php

namespace App\Http\Controllers;


use App\Exceptions\ErrorCode;
use App\Exceptions\RegistrationException;
use App\Http\Resources\FavoritesResource;
use App\Models\Favorite;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{

    public function getFavorites(): AnonymousResourceCollection
    {

        return FavoritesResource::collection(Favorite::select(['favorites.idGame', 'idUser', 'games.game', 'games.image', 'prices.price'])
            ->join('games', 'games.id', '=', 'idGame')->join('prices', 'games.id', '=', 'prices.idGame')->orderBy('price')
            ->where('idUser', Auth::id())->get()->unique('idGame'));
    }

    public function actionFavorite(string $id)
    {
        $user = Auth::user();

        $check = Favorite::where('idGame', $id)->where('idUser', $user->id)->first();
        if ($check) {
            $check->delete();
            return $this->successResponse('Success delete');
        } else {
            $favorite = Favorite::create([
                'idUser' => $user->id,
                'idGame' => $id
            ]);
            return $this->successResponse($favorite);
        }
    }

}
