<?php

namespace App\Http\Controllers\APIs;

trait ResponseJSON
{
    public function ResponseAPI($status, $msg=null, $data=null){
        $array = [
            'status' => $status,
            'message' => $msg,
            'data' => $data,
        ];

        return response($array, $status);
    }
}
