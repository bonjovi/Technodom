<div class="ps-page--shop">
    <div class="ps-container" @if (Route::currentRouteName() == 'public.products') id="app" @endif>
        @if (theme_option('show_featured_brands_on_products_page', 'yes') == 'yes' &&  Route::currentRouteName() == 'public.products')
            <div class="mt-40">
                <featured-brands-component url="{{ route('public.ajax.featured-brands') }}"></featured-brands-component>
            </div>
        @endif
        <div class="ps-layout--shop">
            <div class="ps-layout__left">
                <div class="screen-darken"></div>
                <div class="ps-layout__left-container">
                    <div class="ps-filter__header d-block d-xl-none">
                        <h3>{{ __('Filter Products') }}</h3><a class="ps-btn--close ps-btn--no-boder" href="#"></a>
                    </div>

                    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
                    <script>
                        $(function() {
                            $('aside.widget_shop').map(function() {
                                var properties = $(this).find('.ps-checkbox');
                                if(properties.length > 4) {
                                    $(this).find('figure').addClass('collapsed');
                                    $('<div class="properties__toggler">Развернуть</div>').appendTo($(this));;
                                }
                            });

                            $('body').find('.properties__toggler').on('click', function() {
                                $(this).toggleClass('collapsed');
                                $(this).prev().toggleClass('collapsed');

                                if($(this).text() == 'Развернуть') {
                                    $(this).text('Свернуть');
                                } else {
                                    $(this).text('Развернуть');
                                }
                            });
                        });
                    </script>

                    <div class="ps-layout__left-content">
                        <form action="{{ URL::current() }}" data-action="{{ route('public.products') }}" method="GET" id="products-filter-form">
                            @include(Theme::getThemeNamespace() . '::views/ecommerce/includes/filters')
                            @isset($unique_properties)
                                @foreach($unique_properties as $unique_property)
                                    <aside class="widget widget_shop">
                                        <h4 class="widget-title">{{ $unique_property }}</h4>
                                        <figure data-height="250" class="ps-custom-scrollbar">
                                            @foreach($properties as $property) 
                                                @if($property->name == $unique_property)
                                                    <div class="ps-checkbox"><input type="checkbox" name="tags[]" id="tag-1667556796-1" value="1" class="form-control product-filter-item">
                                                        <label for="tag-1667556796-1">
                                                            <span>
                                                                {{ $property->value }} <span class="d-inline-block"></span>
                                                            </span>
                                                        </label>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </figure>
                                    </aside>
                                @endforeach
                            @endisset
                        </form>
                    </div>
                </div>
            </div>
            <div class="ps-layout__right">
                @if (theme_option('show_recommend_items_on_products_page', 'yes') == 'yes' && Route::currentRouteName() == 'public.products')
                    <div class="ps-block--shop-features">
                        <div class="ps-block__header">
                            <h3>{{ __('Recommended Items') }}</h3>
                            <div class="ps-block__navigation">
                                <a class="ps-carousel__prev" href="#recommended-products">
                                    <i class="icon-chevron-left"></i>
                                </a>
                                <a class="ps-carousel__next" href="#recommended-products">
                                    <i class="icon-chevron-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ps-block__content">
                            <featured-products-component url="{{ route('public.ajax.featured-products') }}" :id="'recommended-products'"></featured-products-component>
                        </div>
                    </div>
                @endif
                <div class="ps-shopping ps-tab-root">
                    <div class="row bg-light py-2 mb-3">
                        <div class="col-12 col-sm-6 col-md-3 d-xl-none px-2 px-sm-3">
                            <div class="header__filter d-xl-none mx-auto mb-3 mb-sm-0">
                                <button id="products-filter-sidebar" type="button">
                                    <i class="icon-equalizer"></i><span class="ml-2">{{ __('Filter') }}</span>
                                </button>
                            </div>
                        </div>
                        <div class="col-12 col-md-3 col-xl-6 d-none d-md-block">
                            <div class="products-found pt-2">
                                <strong>{{ $products->total() }}</strong><span class="ml-1">{{ __('Products found') }}</span>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 px-2 px-sm-3">
                            <div class="d-flex justify-content-center justify-content-sm-end">
                                @include(Theme::getThemeNamespace() . '::views/ecommerce/includes/sort')
                                <div class="ps-shopping__view ml-2">
                                    <ul class="prodducts-layout mb-0 p-0">
                                        <li @if (request()->get('layout') != 'list') class="active" @endif><a href="#grid" data-layout="grid"><i class="icon-grid"></i></a></li>
                                        <li @if (request()->get('layout') == 'list') class="active" @endif><a href="#list" data-layout="list"><i class="icon-list4"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ps-tabs ps-products-listing">
                        @include(Theme::getThemeNamespace('views.ecommerce.includes.product-items'))
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
