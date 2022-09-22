<?php

namespace Database\Factories;

use App\Models\Breed;
use App\Models\Pets;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Breed>
 */
class BreedFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Breed::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $pet_id = Pets::pluck('id');
        $breeds = array(
            'Old English Sheepdog',
            'Terrier',
            'Rottweiler',
        );
        $breed_name = $breeds[array_rand($breeds)];
        return [
            'breed_name' => $breed_name,
            'breed_id' => $pet_id->random(),
        ];
    }
}
