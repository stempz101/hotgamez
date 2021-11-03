<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PriceResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'price' => $this->price,
            'currency' => 'UAH',
            'shop' => $this->shop,
            'link' => $this->link,
            'shop_image' => url('/') . '/images/shops/' . $this->imgShop
        ];
    }
}
