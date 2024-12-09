<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductJavascriptController extends Controller
{
    private function generateToken(){
        return explode('|', Auth()->user()->createToken('API Token')->plainTextToken)[1] ?? null;
    }

    public function index(Request $request)
    {
        $token = $this->generateToken();
        return view('products_js.index', compact('token'));
    }
}
