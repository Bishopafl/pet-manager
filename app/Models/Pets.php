<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pets extends Model
{
    use HasFactory;

    protected $guarded = [];

    /**
     * The relationships that should always be loaded.
     *
     * @var array
     */
    protected $with = ['owner'];

    public function owner() {
        return $this->belongsTo(Owner::class);
    }

    public function breed() {
        return $this->hasMany(Pets::class, 'breed_id');
    }
}
