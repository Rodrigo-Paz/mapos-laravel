<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Categoria extends Model
{
    use HasFactory;

      //Insto implementa a restrição de acesso ao tenant Team equipe para todos os models    
  public function team(): BelongsTo
  {
    return $this->belongsTo(Team::class);
  }
  //até aqui
}
