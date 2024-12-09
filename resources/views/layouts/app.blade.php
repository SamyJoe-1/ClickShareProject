<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('style/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('style/css/font_awesome_all.min.css') }}" rel="stylesheet">

</head>
<body>
    <div id="app">
        <x-layout.navbar></x-layout.navbar>

        <main class="py-4">
            @yield('content')
        </main>

        <x-layout.footer></x-layout.footer>
    </div>
    <script src="{{ asset('style/js/font_awesome_all.min.js') }}"></script>
    <script src="{{ asset('style/js/bootstrap.bundle.min.js') }}"></script>
    @yield('script')
</body>
</html>
