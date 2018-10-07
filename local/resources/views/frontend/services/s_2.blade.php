<div class="container-fluid" id="s_2">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h4>THÔNG TIN <span>DỊCH VỤ</span></h4>
            </div>
            <div class="row">
                @foreach($data['services'] as $key=>$item)
                <div class="col-md-4">
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
    </div>
</div>