<?php
use Illuminate\Support\Facades\Route;

function DateFormat_2($date){
    if($date == null || $date == ""){
        return "فارغ";
    }else{
        $date = Date('Y Md', strtotime($date));
        return $date;
    }
}

function Unauthorized($ID){
    if (Auth()->id() != $ID){
        abort(401);
    }
}
