<div class="container-fluid" id="h_2">

    <div class="row">
        <div class="col-md-7 left"
             style="background-image:url({{URL::asset('images/bg/service-bg.jpg')}});">
            <div class="row pl-5 pr-5">
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
                {{--<div class="col-md-6">--}}
                    {{--<div class="dich-vu wow fadeInDown">--}}
                        {{--<i class="fas fa-pen-fancy"></i>--}}
                        {{--<h5>SỬA CHỮA NHÀ GIÁ RẺ</h5>--}}
                        {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.--}}
                            {{--molestias, mollitia numquam pariatur quaerat quidem quod.--}}
                        {{--</p>--}}
                        {{--<div class="btn-chitiet pb-5 pt-2">--}}
                            {{--<a href="">CHI TIẾT</a>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-6">--}}
                    {{--<div class="dich-vu wow fadeInDown">--}}
                        {{--<i class="fas fa-tint"></i>--}}
                        {{--<h5>DỊCH VỤ CHỐNG THẤM</h5>--}}
                        {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.--}}
                            {{--molestias, mollitia numquam pariatur quaerat quidem quod.--}}
                        {{--</p>--}}
                        {{--<div class="btn-chitiet pb-5 pt-2">--}}
                            {{--<a href="">CHI TIẾT</a>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-6">--}}
                    {{--<div class="dich-vu wow fadeInDown">--}}
                        {{--<i class="far fa-square"></i>--}}
                        {{--<h5>TRẦN THẠCH CAO</h5>--}}
                        {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.--}}
                            {{--molestias, mollitia numquam pariatur quaerat quidem quod.--}}
                        {{--</p>--}}
                        {{--<div class="btn-chitiet pb-5 pt-2">--}}
                            {{--<a href="">CHI TIẾT</a>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-6">--}}
                    {{--<div class="dich-vu wow fadeInDown">--}}
                        {{--<i class="fab fa-squarespace"></i>--}}
                        {{--<h5>SỬA CHỮA CỬA SẮT</h5>--}}
                        {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.--}}
                            {{--molestias, mollitia numquam pariatur quaerat quidem quod.--}}
                        {{--</p>--}}
                        {{--<div class="btn-chitiet pb-5 pt-2">--}}
                            {{--<a href="">CHI TIẾT</a>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-6">--}}
                    {{--<div class="dich-vu wow fadeInDown">--}}
                        {{--<i class="fas fa-door-open"></i>--}}
                        {{--<h5>SỬA CHỮA CỬA NHÔM, CỬA KÍNH</h5>--}}
                        {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.--}}
                            {{--molestias, mollitia numquam pariatur quaerat quidem quod.--}}
                        {{--</p>--}}
                        {{--<div class="btn-chitiet pb-5 pt-2">--}}
                            {{--<a href="">CHI TIẾT</a>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
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

            <div class="btn-chitiet pb-5 pt-2">
                <a href="">XEM DỊCH VỤ</a>
            </div>
        </div>
    </div>

</div>