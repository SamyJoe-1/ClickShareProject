<?php

namespace App\Traits;

trait belongsUser
{
    public function user()
    {
        return $this->belongsTo('App\Models\User', 'user_id');
    }
}
