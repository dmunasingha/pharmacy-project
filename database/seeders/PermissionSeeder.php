<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionSeeder extends Seeder {
    /**
     * Run the database seeds.
     */
    public function run(): void {
        $data = [
            'manage users',
            'create users',
            'edit users',
            'delete users',
            'manage roles',
            'create roles',
            'edit roles',
            'delete roles',
            'assign permissions',
            'manage medications',
            'create medications',
            'edit medications',
            'soft-delete medications',
            'delete medications',
            'manage customers',
            'create customers',
            'edit customers',
            'soft-delete customers',
            'delete customers',
        ];

        foreach ($data as $key => $value) {
            Permission::create([
                'name' => $value
            ]);
        }


        $owner = Role::create([
            'name' => 'Owner'
        ]);
        $manager = Role::create([
            'name' => 'Manager'
        ]);
        $cashier = Role::create([
            'name' => 'Cashier'
        ]);


        // Assign permissions to roles
        $owner->givePermissionTo([
            'manage users',
            'create users',
            'edit users',
            'delete users',
            'manage roles',
            'create roles',
            'edit roles',
            'delete roles',
            'assign permissions',
            'manage medications',
            'create medications',
            'edit medications',
            'soft-delete medications',
            'delete medications',
            'manage customers',
            'create customers',
            'edit customers',
            'soft-delete customers',
            'delete customers',
        ]);

        $manager->givePermissionTo([
            'manage medications',
            'edit medications',
            'soft-delete medications',
            'manage customers',
            'edit customers',
            'soft-delete customers',
        ]);

        $cashier->givePermissionTo([
            'manage medications',
            'edit medications',
            'manage customers',
            'edit customers',
        ]);
    }
}
