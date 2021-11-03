<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class GameResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $months = [
            'января',
            'февраля',
            'марта',
            'апреля',
            'мая',
            'июня',
            'июля',
            'августа',
            'сентября',
            'октября',
            'ноября',
            'декабря'
        ];

        $day = date('j', strtotime($this->releaseDate));
        $monthNum = date('n', strtotime($this->releaseDate)) - 1;
        $month = $months[$monthNum];
        $year = date('Y', strtotime($this->releaseDate));
        $releaseDate = "$day $month $year г.";

        return [
            'id' => $this->id,
            'game' => $this->game,
            'prices' => PriceResource::collection($this->prices),
            'short_description' => $this->shortDescription,
            'description' => $this->description,
            'platform' => $this->platform,
            'publisher' => $this->publisher,
            'developer' => $this->developer,
            'release_date' => $releaseDate,
            'memory' => $this->memory . ' GB',
            'processors' => $this->processor,
            'graphics_cards' => $this->graphicsCard,
            'main_image' => url('/') . '/images/previews/' . str_replace(' ', '%20', $this->image),
            'images' => GalleryResource::collection($this->gallery),
            'genres' => GenreResource::collection($this->genres)
//            'images' => $this->gallery
        ];
    }
}
