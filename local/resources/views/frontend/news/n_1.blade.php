<div class="container-fluid" id="n_1">
    <div class="container">
        <div class="row">
            {{--<div class="col-md-12 text-center mb-5">--}}
                {{--<h5>--}}
                    {{--TIN TỨC <br>--}}
                    {{--<span>LIÊN QUAN</span>--}}
                {{--</h5>--}}
                {{--<span>Tin tức xu hướng trang trí không gian sống.</span>--}}
            {{--</div>--}}
            @for ($i = 0; $i < 12; $i++)
                <div class="col-md-4 mb-4">
                    <div class="news text-center">
                        <div class="img-overlay">
                            <a href="{{URL::asset('tin-tuc-chi-tiet.html')}}">
                                <div class="img"
                                     style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/blog/l-news/l-news-1.jpg')}});"></div>
                            </a>
                        </div>
                        <a href="{{URL::asset('tin-tuc-chi-tiet.html')}}">
                            <h4>The Road To Success Is Always Under Construction</h4></a>
                        <span>20-08-2018</span>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad alias beatae dolor ipsam itaque
                            quaerat quasi rerum!.</p>

                        <div class="btn-tintuc mb-5">
                            <a href="{{URL::asset('tin-tuc-chi-tiet.html')}}">XEM TIN TỨC</a>
                        </div>
                    </div>
                </div>
            @endfor

        </div>
    </div>
</div>