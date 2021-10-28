<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('games', function (Blueprint $table) {
            $table->id();
            $table->string('game');
            $table->text('description')->nullable();
            $table->string('platform')->nullable();
            $table->string('publisher')->nullable();
            $table->string('developer')->nullable();
            $table->date('releaseDate')->nullable();
            $table->string('franchise')->nullable();
            $table->integer('memory')->nullable();
            $table->foreignId('idIntelProcessor')->nullable()->constrained('processors');
            $table->foreignId('idAmdProcessor')->nullable()->constrained('processors');
            $table->foreignId('idNvidiaGraphicsCard')->nullable()->constrained('graphics_cards');
            $table->foreignId('idAmdGraphicsCard')->nullable()->constrained('graphics_cards');
            $table->string('image')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('games');
    }
}
