<?php

namespace App\Policies;

use App\Models\Cliente;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class ClientePolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->hasPermissionTo('cliente_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Cliente $cliente): bool
    {
        return $user->hasPermissionTo('cliente_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->hasPermissionTo('cliente_create');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Cliente $cliente): bool
    {
        return $user->hasPermissionTo('cliente_update');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Cliente $cliente): bool
    {
        return $user->hasPermissionTo('cliente_delete');
    }

    /**
     * Determine whether the user can restore the model.
     */
    //public function restore(User $user, Cliente $cliente): bool
    //{
        //
    //}

    /**
     * Determine whether the user can permanently delete the model.
     */
    //public function forceDelete(User $user, Cliente $cliente): bool
    //{
        //
    //}
}