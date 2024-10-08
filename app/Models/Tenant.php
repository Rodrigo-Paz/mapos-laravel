<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Stancl\Tenancy\Database\Models\Tenant as BaseTenant;
use Stancl\Tenancy\Contracts\TenantWithDatabase;
use Stancl\Tenancy\Database\Concerns\HasDatabase;
use Stancl\Tenancy\Database\Concerns\HasDomains;

class Tenant extends BaseTenant implements TenantWithDatabase
{
    use HasDatabase, HasDomains;

    //public function domains() : BelongsTo
    //{
     //   return $this->belongsTo(Domain::class);
    //}
//Insto implementa a restrição de acesso ao tenant Team equipe para todos os models
  public function team(): BelongsTo
  {
    return $this->belongsTo(Team::class);
  }
  //até aqui
}
