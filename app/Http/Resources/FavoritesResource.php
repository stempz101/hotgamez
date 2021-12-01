<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class FavoritesResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param Request $request
     * @return array
     */
    public function toArray($request): array
    {
        return [
            'id' => $this->idGame,
            'game' => $this->game,
            'min_price' => [
                'price' => $this->price,
                'currency' => 'UAH'
            ],
            'image' => url('/') . '/images/previews/' . str_replace(' ', '%20', $this->image)
            ];
    }
}
