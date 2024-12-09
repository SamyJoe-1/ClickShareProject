@extends('layouts.app')

@section('content')
    <x-card.v1>
        <h1 class="text-center">Products</h1>
        <div align="start">
            <a href="{{ route('products.create') }}" class="btn btn-primary px-4 py-1 rounded-pill">
                <i class="fa-solid fa-plus"></i>
                new product
            </a>
        </div>
        <hr>
        <x-alerts.alerts></x-alerts.alerts>
        <h4 class="font-monospace">Total => ({{ $products->total() }})</h4>
        <x-table.layout>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Date</th>
                    <th>Event</th>
                </tr>
            </thead>
            <tbody>
            @foreach($products as $product)
                <tr>
                    <th>{{ "#$product->id" }}</th>
                    <td>{{ $product->name ?? null }}</td>
                    <td>{{ $product->description ?? null }}</td>
                    <td class="text-success">{{ "$$product->price" }}</td>
                    <td>{{ $product->quantity ?? null }}</td>
                    <td width="100">{{ DateFormat_2($product->created_at) }}</td>
                    <td width="80">
                        <a href="{{ route('products.show', $product) }}" class="text-success text-decoration-none">
                            <i class="fa-solid fa-eye"></i>
                        </a>
                        <a href="{{ route('products.edit', $product) }}" class="text-primary text-decoration-none">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </a>
                        <a href="#" class="text-danger text-decoration-none" onclick="submitForm('form-{{ $product->id }}')">
                            <i class="fa-solid fa-circle-xmark"></i>
                        </a>
                        <x-form.form method="delete" id="form-{{ $product->id }}" action="{{ route('products.destroy', $product) }}"></x-form.form>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </x-table.layout>
        {{ $products->links() }}
    </x-card.v1>
@endsection

@section('script')
    <script src="{{ asset('style/js/submitForm.js') }}"></script>
@endsection
