<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder {
    /**
     * Run the database seeds.
     */
    public function run(): void {
        $user = User::create([
            'name' => 'Test Email',
            'email' => 'test@gmail.com',
            'password' => Hash::make('password'),
        ]);

        $user->assignRole('Owner');
    }
}
