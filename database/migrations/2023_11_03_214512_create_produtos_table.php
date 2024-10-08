<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('produtos', function (Blueprint $table) {
            $table->id();
            $table->string('codDeBarra');
            $table->string('nomeProduto');
            $table->string('unidade');
            $table->string('precoCompra');
            $table->string('precoVenda');
            $table->string('estoque');
            $table->string('estoqueMinimo');
            $table->string('saida');
            $table->string('entrada');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('produtos');
    }
};
