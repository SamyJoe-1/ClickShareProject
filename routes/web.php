<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductJavascriptController;
use App\Http\Controllers\HomeController;

Auth::routes();

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['auth']], function (){

    //    ProductController
    Route::resource('products', ProductController::class);

    //    ProductJavascriptController
    Route::get('js/products', [ProductJavascriptController::class, 'index'])->name('js.products');

});
