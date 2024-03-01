<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class DatabaseSeeder extends Seeder {
    /**
     * Seed the application's database.
     */
    public function run(): void {
        $this->call(PermissionSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(MedicationSeeder::class);
        $this->call(CustomerSeeder::class);
    }
}
