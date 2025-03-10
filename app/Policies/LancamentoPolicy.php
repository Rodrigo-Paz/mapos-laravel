<?php

namespace App\Policies;

use App\Models\Lancamento;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class LancamentoPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->hasPermissionTo('lancamento_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Lancamento $lancamento): bool
    {
        return $user->hasPermissionTo('lancamento_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->hasPermissionTo('lancamento_create');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Lancamento $lancamento): bool
    {
        return $user->hasPermissionTo('lancamento_update');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Lancamento $lancamento): bool
    {
        return $user->hasPermissionTo('lancamento_delete');
    }

    /**
     * Determine whether the user can restore the model.
     */
   // public function restore(User $user, Lancamento $lancamento): bool
   // {
        //
   // }

    /**
     * Determine whether the user can permanently delete the model.
     */
    //public function forceDelete(User $user, Lancamento $lancamento): bool
    //{
        //
    //}
}
