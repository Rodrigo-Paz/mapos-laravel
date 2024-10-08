<?php

namespace App\Policies;

use App\Models\Equipamento;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class EquipamentoPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->hasPermissionTo('equipamento_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Equipamento $equipamento): bool
    {
        return $user->hasPermissionTo('equipamento_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->hasPermissionTo('equipamento_create');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Equipamento $equipamento): bool
    {
        return $user->hasPermissionTo('equipamento_update');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Equipamento $equipamento): bool
    {
        return $user->hasPermissionTo('equipamento_delete');
    }

    /**
     * Determine whether the user can restore the model.
     */
    //public function restore(User $user, Equipamento $equipamento): bool
    //{
        //
    //}

    /**
     * Determine whether the user can permanently delete the model.
     */
    //public function forceDelete(User $user, Equipamento $equipamento): bool
    //{
        //
    //}
}
