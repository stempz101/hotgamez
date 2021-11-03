<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    use HasFactory;

    // получение минимальной цены
    public function minPrices() {
        return $this->hasOne(Price::class, 'idGame')
            ->orderBy('price');
    }

    // получение всех цен игры
    public function prices() {
        return $this->hasMany(Price::class, 'idGame')
            ->join('shops', 'prices.idShop', '=', 'shops.id')
            ->orderBy('price');
    }

    // получение жанров игры
    public function genres() {
        return $this->hasMany(GameGenres::class, 'idGame')
            ->join('genres', 'game_genres.idGenre', '=', 'genres.id')
            ->orderBy('idGenre');
    }

    public function gallery() {
        return $this->hasMany(Gallery::class, 'idGame')
            ->join('games', 'gallery.idGame', '=', 'games.id');
    }
}
