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
    @include('frontend.common.banner-title')
@stop
@section('container')
    @include('frontend.about-us.h_1')
    {{--@include('frontend.home.h_2')--}}
    @include('frontend.home.h_3')
    @include('frontend.common.map')
@stop