<?php

namespace Database\Factories;

use App\Models\Owner;
use App\Models\Pets;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pets>
 */
class PetsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Pets::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $owner_id = Owner::pluck('id');
        return [
            'owner_id' => $owner_id->random(),
            'pet_name' => fake()->name(),
            'pet_description' => fake()->text(),
            'pet_dob' => fake()->date(),
        ];
    }
}
