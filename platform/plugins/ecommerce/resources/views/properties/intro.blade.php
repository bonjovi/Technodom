@extends('core/base::layouts.master')
@section('content')
    <div class="flexbox-grid">
        <div class="flexbox-content">
            <div class="body">
                <div class="box-wrap-emptyTmpl text-center col-12">
                    <h1 class="mt20 mb20 ws-nm font-size-emptyDisplayTmpl">Управление свойствами</h1>
                    <div class="empty-displayTmpl-pdtop">
                        <div class="empty-displayTmpl-image">
                            
                        </div>
                    </div>
                    <div class="empty-displayTmpl-btn">
                        <a class="btn btn-primary btn-lg" href="{{ route('properties.create') }}">Добавить свойство</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
