@extends('frontend.master')
@section('title')
    Sửa nhà minh ánh
@stop
@section('description')
    Sửa nhà minh ánh
@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')

@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
    {{--@include('frontend.common.slider')--}}
    @include('frontend.baogia.banner-title')
@stop
@section('container')
    @include('frontend.baogia.pd_1')
    @include('frontend.home.h_4')
    {{--@include('frontend.home.h_5')--}}
    @include('frontend.common.map')
@stop

@section('jv-scripts')
    <script>
        $(document).ready(function () {

            $('.owl-carousel').owlCarousel({
                loop:true,
                margin:10,
                dots:true,
                responsiveClass:true,
                responsive:{
                    0:{
                        items:1,
                        nav:false,
                        loop:true
                    },
                    600:{
                        items:1,
                        nav:false,
                        loop:true
                    },
                    1000:{
                        items:1,
                        nav:false,
                        loop:true
                    }
                }
            });
        });
    </script>
@stop