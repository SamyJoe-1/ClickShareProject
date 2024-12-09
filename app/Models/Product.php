<?php

namespace App\Models;

use App\Traits\belongsUser;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use belongsUser;

    protected $fillable = [
        'user_id', 'name', 'description', 'price', 'quantity',
    ];

    protected $table = 'products';
}
