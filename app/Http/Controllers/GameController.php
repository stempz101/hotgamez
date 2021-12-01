<?php

namespace App\Http\Controllers;


use App\Http\Resources\GameResource;
use App\Http\Resources\MainResource;
use App\Models\Game;
use App\Models\Genre;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class GameController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return AnonymousResourceCollection
     */
    public function index(Request $request)
    {
        if ($request->has('count')) {
            return MainResource::collection(Game::with('minPrices')
                ->get()
                ->reverse()
                ->take($request->get('count')));
        } else if ($request->has('genres')) {  // фильтрация по жанрам
            return MainResource::collection(Game::with(['minPrices', 'genres' => function ($q) {
                $q->whereIn('genres.id', \request()->request->get('genres'));
            }])->get()->filter(function ($games) {
                return $games->genres->count() == count(\request()->request->get('genres'));
            }));
        } else if ($request->has('nameaz')) {      //фильтры по названию
            return MainResource::collection(Game::with('minPrices')->orderBy('game')->get());
        } else if ($request->has('nameza')) {
            return MainResource::collection(Game::with('minPrices')->orderBy('game')->get()->reverce());
        } else if ($request->has('pricemin')) {        //фильтры по цене
            return MainResource::collection(Game::select(['games.id', 'games.game', 'games.image', 'prices.price'])
                ->join('prices', 'games.id', '=', 'prices.idGame')->orderBy('price')->get()->unique('id'));
        } else if ($request->has('pricemax')) {
            return MainResource::collection(Game::select(['games.id', 'games.game', 'games.image', 'prices.price'])
                ->join('prices', 'games.id', '=', 'prices.idGame')->orderBy('price')->get()->unique('id')->reverce());
        } else if ($request->has('idmax')) {           //фильтры по добавлению
            return MainResource::collection(Game::with('minPrices')->get()->reverse());
        } else {
            return MainResource::collection(Game::with('minPrices')->get());
        }
    }

    public function getGenres() {
        return Genre::query()->orderBy('id')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return GameResource
     */
    public function show($id)
    {
        return new GameResource(Game::with('prices', 'genres', 'gallery')->findOrFail($id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
