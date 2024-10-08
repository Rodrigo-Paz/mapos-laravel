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
        Schema::create('lancamentos', function (Blueprint $table) {
            $table->id();
            $table->string('nomeLancamento');
            $table->string('valor');
            $table->string('desconto');
            $table->string('valorDesconto');
            $table->string('tipoDesconto');
            $table->string('dataVencimento');
            $table->string('dataPagamento');
            $table->string('baixado');
            $table->string('clienteFornecedor');
            $table->string('formaPgto');
            $table->string('tipo');
            $table->string('anexo');
            $table->string('observacoes');
            $table->foreignId('cliente_id')->constrained('clientes')->cascadeOnDelete();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->foreignId('categoria_id')->constrained('categorias')->cascadeOnDelete();
            $table->foreignId('conta_id')->constrained('contas')->cascadeOnDelete();
           // $table->foreignId('venda_id')->constrained('vendas')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lancamentos');
    }
};
