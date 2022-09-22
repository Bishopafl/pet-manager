<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Breed extends Model
{
    use HasFactory;

    protected $guarded = [];
    /**
     * The relationships that should always be loaded.
     *
     * @var array
     */
    protected $with = ['pets'];

    public function breed() {
        $this->belongsTo(Pets::class);
    }
}
