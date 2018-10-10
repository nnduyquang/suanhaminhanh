<div class="container-fluid" id="h_2">

        <div class="row">
            <div class="col-md-7 left"
                 style="background-image:url({{URL::asset('images/bg/service-bg.jpg')}});">
                <div class="row pl-lg-5 pr-lg-5 pl-2 pr-2 m-0">
                    @foreach($data['services'] as $key=>$item)
                        <div class="col-md-6">

                            <div class="dich-vu wow fadeInDown">
                                <i class="{{$item->icon}}"></i>
                                <h5>{{$item->title}}</h5>
                                <p>{!! $item->description !!}
                                </p>
                                <div class="btn-chitiet pb-5 pt-2">
                                    <a href="{{URL::to('dich-vu/'.$item->path)}}">CHI TIẾT</a>
                                </div>
                            </div>

                        </div>
                    @endforeach
                </div>
            </div>
            <div class="col-md-5 right">
                <div class="ol-h4">
                    <h4>
                        DỊCH VỤ <br>
                        CỦA CHÚNG TÔI
                    </h4>
                </div>
                {!! $data['service']->description !!}

                <div class="under-line"></div>

                <div class="btn-chitiet pb-3 pt-2">
                    <a href="{{URL::asset('dich-vu.html')}}">XEM DỊCH VỤ</a>
                </div>
            </div>
        </div>

</div>