<form method="{{ in_array($method, ['get', 'post']) ? $method:"post" }}" action="{{ $action }}" id="{{ $id ?? 'form' }}">
    @if($method != 'get')
        @csrf
        @method("$method")
    @endif
    {{ $slot }}
</form>
