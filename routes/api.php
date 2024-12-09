<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\APIs\ProductController;
use App\Http\Controllers\APIs\AuthenticationController;


Route::post('register', [AuthenticationController::class, 'register']);
Route::post('login', [AuthenticationController::class, 'login']);

Route::group(['middleware' => ['auth:sanctum']], function (){

    Route::get('profile', [AuthenticationController::class, 'index']);

    //    ProductController
    Route::apiResource('products', ProductController::class);

});

