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
    @include('frontend.services.banner-title')
@stop
@section('container')
    @include('frontend.services.s_1')
    @include('frontend.services.s_2')
    @include('frontend.home.h_4')
    @include('frontend.common.map')
@stop

@section('jv-scripts')
@stop