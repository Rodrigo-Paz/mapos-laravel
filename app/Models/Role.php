<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Spatie\Permission\Models\Role as ModelsRole;


class Role extends ModelsRole
{
    use HasFactory;

    //Insto implementa a restrição de acesso ao tenant Team equipe para todos os models    
  public function team(): BelongsToMany
  {
    return $this->belongsToMany(Team::class);
  }
  //até aqui
}
