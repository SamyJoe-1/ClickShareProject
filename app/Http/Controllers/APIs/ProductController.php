<?php

namespace App\Http\Controllers\APIs;

use App\Http\Controllers\APIs\ResponseJSON;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    use ResponseJSON;

    public function index()
    {
        $products = Product::where('user_id', Auth()->id())->latest()->paginate(10);
        return $this->ResponseAPI(200, 'My products', ['products' => $products]);
    }

    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|string|max:255|unique:products,name',
            'price' => 'required|numeric|max:99999',
            'quantity' => 'required|numeric|max:99999',
            'description' => 'required|string|max:5000',
        ];
        $validator = Validator::make($request->all(), $rules);
        if (count($validator->errors()) > 0){
            return $this->ResponseAPI(401, "error", $validator->errors()->first());
        }
        $product = Product::create([
            'user_id' => Auth()->id(),
            'name' => $request->name ?? null,
            'price' => $request->price ?? null,
            'quantity' => $request->quantity ?? null,
            'description' => $request->description ?? null,
        ]);
        return $this->ResponseAPI(200, 'Product has added successfully', ['product' => $product]);
    }

    public function show(Product $product)
    {
        Unauthorized($product->user_id);
        return $this->ResponseAPI(200, 'Product details', ['product' => $product]);
    }

    public function update(Request $request, Product $product)
    {
        Unauthorized($product->user_id);
        $rules = [
            'name' => 'required|string|max:255|unique:products,name',
            'price' => 'required|numeric|max:99999',
            'quantity' => 'required|numeric|max:99999',
            'description' => 'required|string|max:5000',
        ];
        $validator = Validator::make($request->all(), $rules);
        if (count($validator->errors()) > 0){
            return $this->ResponseAPI(401, "error", $validator->errors()->first());
        }
        $product->name = $request->name ?? null;
        $product->price = $request->price ?? null;
        $product->quantity = $request->quantity ?? null;
        $product->description = $request->description ?? null;
        $product->save();
        return $this->ResponseAPI(200, 'Product has updated successfully', ['product' => $product]);
    }

    public function destroy(Product $product)
    {
        Unauthorized($product->user_id);
        $product->delete();
        return $this->ResponseAPI(200, 'Operation has done successfully');
    }
}
