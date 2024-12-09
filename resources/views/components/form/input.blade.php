<div class="mx-auto">
    <label class="mb-1 fw-bold fs-5 mb-0" for="{{ $name ?? null }}">
        {{ $title ?? null }}
    </label>
    <input
        type="{{ $type ?? "text" }}"
        name="{{ $name ?? null }}"
        id="{{ $name ?? null }}"
        value="{{ $value ?? null }}"
        class="form-control form-control-{{ $size ?? "lg" }}"
        placeholder="{{ $placeholder ?? null }}"
        {{ $attributes ?? null }}
    >
</div>
