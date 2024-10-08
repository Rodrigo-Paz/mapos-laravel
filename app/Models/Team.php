<?php

namespace App\Models;

use Filament\Tables\Columns\Layout\Panel;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use PhpParser\Node\Stmt\Label;
use Spatie\Activitylog\Models\Activity;

class Team extends Model
{
    use HasFactory;

    //Criando a relação dessa Model com muitos devido ter colocado o inverso em cada model

   // public function panel(Panel $panel): Panel
//{
//    return $panel
        // ...
 //       ->tenant(Team::class);
//}

    public function vendas(): BelongsToMany
    {
        return $this->BelongsToMany(Venda::class);
    }
    //final do relacionamento desse Team com muitas models
    //Aqui inicia se os outros relacionamentos necessarios
    public function tenant(): BelongsToMany
    {
        return $this->BelongsToMany(Tenant::class);
    }

    public function members(): BelongsToMany
    {
        return $this->belongsToMany(User::class);
    }

    public function servico(): BelongsToMany
    {
        return $this->BelongsToMany(Servico::class);
    }

    public function roles(): BelongsToMany
    {
        return $this->BelongsToMany(Role::class);
    }

    public function produto(): BelongsToMany
    {
        return $this->BelongsToMany(Produto::class);
    }

    public function permissions(): BelongsToMany
    {
        return $this->BelongsToMany(Permission::class);
    }

    public function os(): BelongsToMany
    {
        return $this->BelongsToMany(Os::class);
    }

    public function marcas(): BelongsToMany
    {
        return $this->BelongsToMany(Marca::class);
    }

    public function lancamentos(): BelongsToMany
    {
        return $this->BelongsToMany(Lancamento::class);
    }
    public function garantias(): BelongsToMany
    {
        return $this->BelongsToMany(Garantia::class);
    }

    public function equipamentos(): BelongsToMany
    {
        return $this->BelongsToMany(Equipamento::class);
    }

    public function contas(): BelongsToMany
    {
        return $this->BelongsToMany(Conta::class);
    }

    public function clientes(): BelongsToMany
    {
        return $this->BelongsToMany(Cliente::class);
    }

    public function categoria(): BelongsToMany
    {
        return $this->BelongsToMany(Categoria::class);
    }

    public function catalogos(): BelongsToMany
    {
        return $this->belongsToMany(Catalogo::class);
    }

    public function activity(): BelongsToMany
    {
        return $this->belongsToMany(Activity::class);
    }

    //final do relacionamento desse time com

}

