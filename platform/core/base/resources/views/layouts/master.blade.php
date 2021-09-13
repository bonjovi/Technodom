@extends('core/base::layouts.base')
<style>
    #custom_properties, #new_properties {
        display: none;
    }
    .property__row {
        margin-bottom: 10px;
    }
    .property__row label {
        margin-bottom: 0;
    }
</style>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
    $(function() {
        $('#new_properties').parent().parent().hide();

        var checkedCategories = $('body').find('.multi-choices-widget ul li input:checked');
        var checkedCategoriesArray = [];
        $(checkedCategories).each(function( index ) {
            checkedCategoriesArray.push(Number($(this).attr('value')));
        });
        //console.log(checkedCategoriesArray);
        
        

        var target = $('#custom_properties');
        var json = target.val();
        var data = JSON.parse(json);
        
        var currentSlugs = [];
        $.each(data, function(key, value) {
            currentSlugs.push(value.alias);
            if(checkedCategoriesArray.includes(value.product_category_id)) {
                $('<div class="property__row"><label>'+value.name+'</label><input class="form-control" type="text" value="'+value.value+'" name="customfield_'+value.id+'"></div>').insertAfter(target);
            }
        });

        //console.log("Current slugs: "+currentSlugs);

        var new_target = $('#new_properties');
        var new_json = new_target.val();
        var new_data = JSON.parse(new_json);
        //console.log(new_data);
        var newSlugs = [];
        function in_array(needle, haystack, strict) {
            var found = false, key, strict = !!strict;
            for (key in haystack) {
                if ((strict && haystack[key] === needle) || (!strict && haystack[key] == needle)) {
                    found = true;
                    break;
                }
            }
            return found;
        }

        $.each(new_data, function(key, value) {
            if(!in_array(value.alias, currentSlugs)) {
                newSlugs.push(value.alias);
            }
        });

        //console.log(newSlugs);

        $.each(new_data, function(key, value) {
            if(in_array(value.alias, newSlugs)) {
                $('<div class="property__row"><label>'+value.name+'</label><input class="form-control" type="text" value="" name="newcustomfield_'+value.id+'"></div>').insertAfter(target);
            }
        });
    });
</script>

@section ('page')
    @include('core/base::layouts.partials.svg-icon')

    <div class="page-wrapper">

        @include('core/base::layouts.partials.top-header')
        <div class="clearfix"></div>
        <div class="page-container">
            <div class="page-sidebar-wrapper">
                <div class="page-sidebar navbar-collapse collapse">
                    <div class="sidebar">
                        <div class="sidebar-content">
                            <ul class="page-sidebar-menu page-header-fixed" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                                @include('core/base::layouts.partials.sidebar')
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="page-content-wrapper">
                <div class="page-content @if (Route::currentRouteName() == 'media.index') rv-media-integrate-wrapper @endif" style="min-height: 100vh">
                    {!! Breadcrumbs::render('main', page_title()->getTitle(false)) !!}
                    <div class="clearfix"></div>
                    <div id="main">
                        @yield('content')
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        @include('core/base::layouts.partials.footer')
    </div>
@stop

@section('javascript')
    @include('core/media::partials.media')
@endsection

@push('footer')
    @routes
@endpush
