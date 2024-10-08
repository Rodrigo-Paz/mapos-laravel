<?php

namespace App\Policies;

use App\Models\Os;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class OsPolicy
{
    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user): bool
    {
        return $user->hasPermissionTo('os_read');
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Os $os): bool
    {
        return $user->hasPermissionTo('os_read');
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->hasPermissionTo('os_create');
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user, Os $os): bool
    {
        return $user->hasPermissionTo('os_update');
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user, Os $os): bool
    {
        return $user->hasPermissionTo('os_delete');
    }

    /**
     * Determine whether the user can restore the model.
     */
    //public function restore(User $user, Os $os): bool
    //{
        //
    //}

    /**
     * Determine whether the user can permanently delete the model.
     */
    //public function forceDelete(User $user, Os $os): bool
    //{
        //
    //}
}
