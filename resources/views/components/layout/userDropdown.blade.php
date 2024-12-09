<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false" v-pre>
    {{ Auth::user()->name }}
</a>

<div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
    <div class="dropdown-item">
        <h6>Welcome, {{ Auth()->user()->name ?? null }}</h6>
    </div>
    <a class="dropdown-item" href="{{ route('products.index') }}">Products</a>
    <a class="dropdown-item" href="{{ route('js.products') }}">Products (JS)</a>

    <div class="dropdown-divider"></div>

    <a class="dropdown-item text-danger fw-bolder" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
        <i class="fa-solid fa-door-open"></i>
        {{ __('Logout') }}
    </a>
    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
        @csrf
    </form>
</div>
