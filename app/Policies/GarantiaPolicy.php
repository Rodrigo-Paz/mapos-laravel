<?php

namespace App\Policies;

use App\Models\Garantia;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class GarantiaPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->hasPermissionTo('garantia_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Garantia $garantia): bool
    {
        return $user->hasPermissionTo('garantia_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->hasPermissionTo('garantia_create');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Garantia $garantia): bool
    {
        return $user->hasPermissionTo('garantia_update');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Garantia $garantia): bool
    {
        return $user->hasPermissionTo('garantia_delete');
    }

    /**
     * Determine whether the user can restore the model.
     */
   // public function restore(User $user, Garantia $garantia): bool
   // {
        //
   // }

    /**
     * Determine whether the user can permanently delete the model.
     */
   // public function forceDelete(User $user, Garantia $garantia): bool
   // {
        //
   // }
}
