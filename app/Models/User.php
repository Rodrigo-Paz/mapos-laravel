<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;

use DragonCode\Contracts\Http\Builder;
use Filament\Models\Contracts\FilamentUser;
use Filament\Models\Contracts\HasTenants;
use Filament\Notifications\Collection;
use Filament\Panel;
use Filament\Support\Facades\FilamentColor;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Permission\Traits\HasRoles;
use Stancl\Tenancy\Database\Concerns\TenantRun;
use Filament\Notifications\Collection as FilamentCollection;


class User extends Authenticatable implements FilamentUser, HasTenants
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles, LogsActivity;

   //protected $with = ['tenant']; testar performace
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'tenant_id',
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logOnly(['name', 'email']);

    }

    public function canAccessPanel(Panel $panel): bool
    {
        //return str_ends_with($this->email, '@yourdomain.com') && $this->hasVerifiedEmail();
        //return $this->hasRole(['Admin', 'SuperAdmin', 'catalogo', 'User', 'Manager', 'Tenant']);
        return $this->hasPermissionTo('acess_admin');

    }
    public function team(): BelongsToMany
    {
        return $this->belongsToMany(Team::class);
    }

   // public function tenant(): BelongsToTenant
   // {
   //     return $this->BelongsToTenant(Tenant::class);
   // }


   // Inicio da implementação do tenant com base no HasTenants acima

   public function canAccessTenant(Model $tenant): bool
   {
       return $this->team->isNotEmpty();
   }

   public function getTenants(Panel $panel): FilamentCollection
   {
    //$this->hasPermissionTo('team_admin');
    $this->load('team');
    return new FilamentCollection($this->team ?? new Collection());
   }




}
