<?php

namespace App\Policies;

use App\Models\Servico;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class ServicoPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->hasPermissionTo('servico_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Servico $servico): bool
    {
        return $user->hasPermissionTo('servico_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->hasPermissionTo('servico_create');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Servico $servico): bool
    {
        return $user->hasPermissionTo('servico_update');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Servico $servico): bool
    {
        return $user->hasPermissionTo('servico_delete');
    }

    /**
     * Determine whether the user can restore the model.
     */
   // public function restore(User $user, Servico $servico): bool
   // {
        //
   // }

    /**
     * Determine whether the user can permanently delete the model.
     */
    //public function forceDelete(User $user, Servico $servico): bool
    //{
        //
    //}
}
