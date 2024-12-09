<div class="mx-auto">
    <label class="mb-1 fw-bold fs-5 mb-0" for="{{ $name ?? null }}">
        {{ $title ?? null }}
    </label>
    <textarea
        class="form-control form-control-{{ $size ?? 'lg' }} rounded-3"
        name="{{ $name ?? null }}"
        id="{{ $name ?? null }}"
        placeholder="{{ $placeholder ?? "" }}"
        rows="{{ $rows ?? "3" }}"
        {{ $attributes ?? null }}
    >{{ $value ?? null }}</textarea>
</div>

