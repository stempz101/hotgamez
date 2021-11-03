<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class GalleryResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {

        $gameName = $this->game;
        $chars = array('<', '>' , ':' , '"' , '/' , '\\' , '|' , '?' , '*', '™', '®');
        $game = str_replace($chars, '', $gameName);

        return [
            'image' => url('/') . '/images/gallery/' . str_replace(' ', '%20', $game) . '/' . $this->nameImg,
        ];
    }
}
