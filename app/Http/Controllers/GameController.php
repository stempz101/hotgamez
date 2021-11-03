<?php

namespace App\Http\Controllers;


use App\Http\Resources\GameResource;
use App\Http\Resources\MainResource;
use App\Models\Game;
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
        } else {
            return MainResource::collection(Game::with('minPrices')->get()->reverse());
        }
//        Commentasdfasdfasdf
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
