<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AdminGameResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $imageName = $this->image;
        $chars = array('<', '>' , ':' , '"' , '/' , '\\' , '|' , '?' , '*', '™', '®');
        $image = str_replace($chars, '', $imageName);

        return [
            'id' => $this->id,
            'game' => $this->game,
            'image' => url('/') . '/images/previews/' . str_replace(' ', '%20', $image)
        ];
    }
}
