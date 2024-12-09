<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::where('user_id', Auth()->id())->latest()->paginate(10);
        return view('products.index', compact('products'));
    }

    public function create()
    {
        return view('products.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|max:255|unique:products,name',
            'price' => 'required|numeric|max:99999',
            'quantity' => 'required|numeric|max:99999',
            'description' => 'required|string|max:5000',
        ]);
        Product::create([
            'user_id' => Auth()->id(),
            'name' => $request->name ?? null,
            'price' => $request->price ?? null,
            'quantity' => $request->quantity ?? null,
            'description' => $request->description ?? null,
        ]);
        return redirect()->back()->with('success', 'Product has added successfully');
    }

    public function show(Product $product)
    {
        Unauthorized($product->user_id);
        return view('products.show', compact('product'));
    }

    public function edit(Product $product)
    {
        Unauthorized($product->user_id);
        return view('products.edit', compact('product'));
    }

    public function update(Request $request, Product $product)
    {
        Unauthorized($product->user_id);
        $this->validate($request, [
            'name' => "required|string|max:255|unique:products,name,$product->id",
            'price' => 'required|numeric|max:99999',
            'quantity' => 'required|numeric|max:99999',
            'description' => 'required|string|max:5000',
        ]);
        $product->name = $request->name ?? null;
        $product->price = $request->price ?? null;
        $product->quantity = $request->quantity ?? null;
        $product->description = $request->description ?? null;
        $product->save();
        return redirect()->back()->with('success', 'Product has updated successfully');
    }

    public function destroy(Product $product)
    {
        Unauthorized($product->user_id);
        $product->delete();
        return redirect()->back()->with('success', 'Operation has done successfully');
    }
}
