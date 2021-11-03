<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use JsonSerializable;

class MainResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'game' => $this->game,
            'image' => url('/') . '/images/previews/' . str_replace(' ', '%20', $this->image),
            'min_price' => new MinPriceResource($this->minPrices)
        ];
    }
}
