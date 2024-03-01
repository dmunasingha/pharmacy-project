<?php

namespace Database\Seeders;

use App\Models\Medication;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MedicationSeeder extends Seeder {
    /**
     * Run the database seeds.
     */
    public function run(): void {
        $faker = Factory::create();

        // Create 10 dummy medication records
        for ($i = 0; $i < 10; $i++) {
            Medication::create([
                'name' => $faker->sentence(2),
                'description' => $faker->paragraph,
                'quantity' => $faker->randomFloat(2, 1, 100),
            ]);
        }
    }
}
