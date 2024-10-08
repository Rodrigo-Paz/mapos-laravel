<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Venda;
use Illuminate\Auth\Access\Response;

class VendaPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->hasPermissionTo('venda_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Venda $venda): bool
    {
        return $user->hasPermissionTo('venda_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->hasPermissionTo('venda_create');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Venda $venda): bool
    {
        return $user->hasPermissionTo('venda_update');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Venda $venda): bool
    {
        return $user->hasPermissionTo('venda_delete');
    }

    /**
     * Determine whether the user can restore the model.
     */
   // public function restore(User $user, Venda $venda): bool
   // {
        //
   // }

    /**
     * Determine whether the user can permanently delete the model.
     */
    //public function forceDelete(User $user, Venda $venda): bool
   // {
        //
   // }
}
