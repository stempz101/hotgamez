<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePCSpecificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pc_specifications', function (Blueprint $table) {
            $table->foreignId('idUser')->constrained('users');
            $table->foreignId('idProcessor')->constrained('processors');
            $table->foreignId('idGraphicsCard')->constrained('graphics_cards');
            $table->integer('memory')->nullable();
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
        Schema::dropIfExists('p_c_specifications');
    }
}
