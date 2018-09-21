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
    @include('frontend.project-details.banner-title')
@stop
@section('container')
    @include('frontend.project-details.pd_1')
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

        function openCity(evt, cityName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        // Get the element with id="defaultOpen" and click on it
        document.getElementById("defaultOpen").click();



    </script>
@stop