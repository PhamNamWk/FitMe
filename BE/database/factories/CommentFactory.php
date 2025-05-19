<?php

namespace Database\Factories;

use App\Models\User;
use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Comment>
 */
class CommentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'content' => $this->faker->sentence,
            'user_id' => User::inRandomOrder()->value('id'),
            'product_id' => Product::inRandomOrder()->value('id'),
            'is_active' => $this->faker->boolean,
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
