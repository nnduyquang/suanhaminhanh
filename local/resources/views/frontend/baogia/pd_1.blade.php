<div class="container-fluid" id="nd_1">
    <div class="container">
        <div class="row">
            <div class="col-md-8">

                {{--<div class="div">--}}
                    {{--<div class="owl-carousel owl-theme">--}}

                        {{--<div class="item"><img src="https://gracethemes.com/demo/creator-world-pro/wp-content/themes/creator-world-pro/images/slides/slider3.jpg" alt=""></div>--}}
                        {{--<div class="item"><img src="https://gracethemes.com/demo/creator-world-pro/wp-content/themes/creator-world-pro/images/slides/slider2.jpg" alt=""></div>--}}
                        {{--<div class="item"><img src="https://gracethemes.com/demo/creator-world-pro/wp-content/themes/creator-world-pro/images/slides/slider1.jpg" alt=""></div>--}}

                    {{--</div>--}}
                {{--</div>--}}

                {{--@include('frontend.common.slider')--}}

                <div class="row mt-3">
                    <div class="col-12 d-flex align-items-center justify-content-between">

                        <h1>
                            {{--{{$data['post']->title}}--}}
                        </h1>
                        <div class="date-news"><span>Báo giá dịch vụ 2018
                                {{--{{$data['post']->created_at}}--}}
                            </span></div>

                    </div>

                    <div class="col-12">
                        {{--{!! $data['post']->content !!}--}}

                    </div>
                </div>
            </div>

            <div class="col-md-4 right">
                <h4>BÁO GIÁ LIÊN QUAN</h4>


                {{--@foreach($data['other'] as $key=>$item)--}}
                    <div class="news d-flex">
                        <div class="img-overlay mr-3">
                            <a href="">
                                {{--{{URL::to('dich-vu/'.$item->path)}}--}}
                                <div class="img"
                                     style=""></div>
                                {{--background-image:url({{URL::asset($item->image)}});--}}
                            </a>
                        </div>
                        <div class="text-left info">
                            <a href=""><h5></h5></a>
                            {{--{{URL::to('dich-vu/'.$item->path)}}--}}
                            {{--{{$item->title}}--}}
                            <span></span>
                            {{--{{$item->created_at}}--}}
                        </div>
                    </div>
                {{--@endforeach--}}


                <h4>TAG LIÊN QUAN</h4>

                <div class="tags mt-3 mb-3">
                    <p>
                        @for ($i = 0; $i < 20; $i++)
                            <a href="">Sửa nhà đẹp giá rẻ, </a>
                        @endfor
                    </p>
                </div>

            </div>


        </div>

    </div>
</div>
</div>
