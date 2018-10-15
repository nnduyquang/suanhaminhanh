<div class="container-fluid" id="s_1">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="wow fadeInLeft">
                    <h1>TẠI SAO CHỌN CHÚNG TÔI <br> <span>MINH ÁNH Contruction Co.,ltd</span></h1>

                    <h3 style="color: red">
                        Chúng tôi mang đến cho bạn giải pháp tối ưu, và tô điểm không gian sống của bạn.
                    </h3>
                    <p class="pr-2">
                       Công ty sửa nhà Minh Ánh mang đến những giải pháp tối ưu cho dịch vụ sửa chửa xây dụng nhà, Chống thấm,
                        sửa chửa cửa sắt và các hạng mục xây dựng các, chi tiết vui lòng nhấn vào link bên dưới.
                    </p>
                    <ul>
                        @foreach($data['services'] as $key=>$item)
                        <li><a href="{{URL::to('dich-vu/'.$item->path)}}"><i class="fab fa-gg-circle pr-3"></i>{{$item->title}}</a></li>
                        @endforeach
                    </ul>

                </div>
            </div>
            <div class="col-md-4 bull-inst wow fadeInRight">
                <img src="{{URL::asset('images/bg/service-mail.png')}}" alt="" class="">
            </div>
        </div>
    </div>
</div>