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
            @foreach($data['news'] as $key=>$item)
                <div class="col-md-4 mb-4">
                    <div class="news text-center">
                        <div class="img-overlay">
                            <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                <div class="img"
                                     style="background-image:url({{URL::asset($item->image)}});"></div>
                            </a>
                        </div>
                        <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                            <h4>{{$item->title}}</h4></a>
                        <span>{{$item->created_at}}</span>

                        <p>{!! $item->description !!}</p>

                        <div class="btn-tintuc mb-5 mt-3">
                            <a href="{{URL::to('tin-tuc/'.$item->path)}}">XEM TIN TỨC</a>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
</div>