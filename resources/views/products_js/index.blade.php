@extends('layouts.app')

@section('content')
    <x-card.v1>
        <h1 class="text-center">Products</h1>
        <hr>
        <x-alerts.alerts></x-alerts.alerts>
        <h4 class="font-monospace">Total => (<span id="totalProducts"></span>)</h4>
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
            <tbody></tbody>
        </x-table.layout>
        <div class="d-flex justify-content-center">
            <div class="btn-group" id="btnGroup"></div>
        </div>
    </x-card.v1>
@endsection

@section('script')
    <script>userToken = '{{ $token }}';</script>
    <script src="{{ asset('style/js/productsAPIs.js') }}"></script>
@endsection
