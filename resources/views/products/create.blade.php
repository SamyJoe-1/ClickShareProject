@extends('layouts.app')

@section('content')
    <x-card.v1>
        <h1 class="text-center">Add a new product</h1>
        <div align="start">
            <a href="{{ route('products.index') }}" class="btn btn-primary px-4 py-1 rounded-pill">
                <i class="fa-solid fa-arrow-left"></i>
                Back
            </a>
        </div>
        <hr>
        <x-alerts.alerts></x-alerts.alerts>
        <x-form.form method="post" action="{{ route('products.store') }}">
            <div class="row">
                <x-form.input name="name" title="Name" placeholder="Enter product name..."></x-form.input>
            </div>
            <div class="row row-cols-md-2 row-cols-1 g-3 my-3">
                <div class="col">
                    <x-form.input type="number" name="price" title="Price" placeholder="xxxxxx"></x-form.input>
                </div>
                <div class="col">
                    <x-form.input type="number" name="quantity" title="Quantity" placeholder="xxx"></x-form.input>
                </div>
            </div>
            <div class="row">
                <x-form.textarea name="description" title="Description" placeholder="Enter the description here..." rows="8"></x-form.textarea>
            </div>
            <div class="mt-3" align="center">
                <button type="submit" class="btn btn-danger fw-bolder px-4 py-2 rounded-pill">
                    <i class="fa-solid fa-fire"></i>
                    Publish
                </button>
            </div>
        </x-form.form>
    </x-card.v1>
@endsection
