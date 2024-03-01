<?php

namespace Database\Seeders;

use App\Models\Customer;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CustomerSeeder extends Seeder {
    /**
     * Run the database seeds.
     */
    public function run(): void {
        $faker = Factory::create();

        // Create 10 dummy customer records
        for ($i = 0; $i < 10; $i++) {
            Customer::create([
                'name' => $faker->name,
                'email' => $faker->email,
                'contact' => $faker->phoneNumber,
                'address' => $faker->address,
            ]);
        }
    }
}
