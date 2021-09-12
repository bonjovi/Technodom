@if (count($breadcrumbs))

    <ol class="breadcrumb">
        @foreach ($breadcrumbs as $breadcrumb)

            @if ($breadcrumb->url && !$loop->last)
                <li class="breadcrumb-item"><a href="{{ $breadcrumb->url }}">{{ $breadcrumb->title == 'plugins/ecommerce::properties.name' ? 'Характеристики' : $breadcrumb->title }}</a></li>
            @else
                <li class="breadcrumb-item active">{{ $breadcrumb->title == 'plugins/ecommerce::properties.name' ? 'Список характеристик' : $breadcrumb->title }}</li>
            @endif

        @endforeach
    </ol>

@endif
