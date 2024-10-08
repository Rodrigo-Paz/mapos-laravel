<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Cliente extends Model
{
   /*
    public function clientes(): HasMany
    {
        return $this->hasMany(Cliente::class);
    }
    
    public function vendas(): HasMany
    {
        return $this->hasMany(Venda::class);
    }
    public function os(): HasMany
    {
        return $this->hasMany(Os::class);
    }
    public function equipamentos(): HasMany
    {
        return $this->hasMany(Equipamento::class);
    }
    public function lancamentos(): HasMany
    {
        return $this->hasMany(Lancamento::class);
    }
    */

    //Insto implementa a restrição de acesso ao tenant Team equipe para todos os models    
  public function team(): BelongsToMany
  {
    return $this->belongsToMany(Team::class);
  }
  //até aqui
    


}
