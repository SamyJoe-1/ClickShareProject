@extends('layouts.app')

@section('content')
    <x-card.v1>
        <h1 class="text-center">Show product #{{ $product->id }}</h1>
        <div align="start">
            <a href="{{ route('products.index') }}" class="btn btn-primary px-4 py-1 rounded-pill">
                <i class="fa-solid fa-arrow-left"></i>
                Back
            </a>
        </div>
        <hr>
        <h4>{{ "Title: $product->name" }}</h4>
        <h6 class="text-secondary fst-italic">
            Price: {{ "$$product->price" }} | Date: {{ $product->created_at }}
        </h6>
        <div>
            <b>Quantity: </b>
            <span class="badge bg-dark px-3 py-1 rounded-pill">{{ $product->quantity }}</span>
        </div>
        <hr>
        <h2 class="text-danger">Description</h2>
        <p class="fs-5"><?php echo nl2br($product->description)?></p>
    </x-card.v1>
@endsection
