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
        Schema::create('vendas', function (Blueprint $table) {
            $table->id();
            $table->string('dataVenda');
            $table->string('valorTotal');
            $table->string('desconto');
            $table->string('valorDesconto');
            $table->string('tipoDesconto');
            $table->string('faturado');
            $table->string('observacoes');
            $table->string('observacoesCliente');
          //  $table->foreignId('cliente_id')->constrained('clientes')->cascadeOnDelete();
          //  $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
          //  $table->foreignId('lancamento_id')->constrained('lancamentos')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('vendas');
    }
};
