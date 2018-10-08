<div id="menu" class="container-fluid p-0 d-none d-md-block">
    <div class="top-info">
        <div class="container">
            <div class="row">
                <div class="col-md-6"><i class="fas fa-phone"></i> 0909 353 055</div>
                <div class="col-md-6 text-right"><i class="fas fa-map-marker-alt"></i> 61 Đường số 1, Phường Bình Thuận, Quận 7, TP.HCM</div>
            </div>
        </div>
    </div>

    <div class="logo-menu">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 d-flex align-items-center justify-content-between">
                        <img src="{{URL::asset('images/logo/logo2.png')}}" alt="" class="logo">
                        <div class="menu-top">
                            <ul>
                                <li><a class="{{request()->is('/') ? 'active' : '/' }}" href="{{URL::asset('/')}}">TRANG CHỦ</a></li>
                                <li><a class="{{request()->is('du-an*') ? 'active' : '/' }}" href="{{URL::asset('du-an.html')}}">DỰ ÁN</a></li>
                                <li class="dich-vu-overlay">
                                    <a class="{{request()->is('dich-vu*') ? 'active' : '/' }}" href="{{URL::asset('dich-vu.html')}}">DỊCH VỤ</a>
                                    <div class="dv-content sub-menu">
                                        <ul>
                                            <li><a href="{{URL::asset('dich-vu-chi-tiet.html')}}">SƠN NƯỚC</a></li>
                                            <li><a href="{{URL::asset('dich-vu-chi-tiet.html')}}">SỬA CHỮA NHÀ</a></li>
                                            <li><a href="{{URL::asset('dich-vu-chi-tiet.html')}}">CHỐNG THẤM</a></li>
                                            <li><a href="{{URL::asset('dich-vu-chi-tiet.html')}}">TRẦN THẠCH CAO</a></li>
                                            <li><a href="{{URL::asset('dich-vu-chi-tiet.html')}}">SỬA CỬA SẮT</a></li>
                                            <li><a href="{{URL::asset('dich-vu-chi-tiet.html')}}">SỬA CỬA NHÔM, KÍNH</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a class="{{request()->is('tin-tuc*') ? 'active' : '/' }}" href="{{URL::asset('tin-tuc.html')}}">TIN TỨC</a></li>
                                <li><a class="{{request()->is('gioi-thieu*') ? 'active' : '/' }}" href="{{URL::asset('gioi-thieu-minh-anh.html')}}">GIỚI THIỆU</a></li>
                                <li><a class="{{request()->is('lien-he*') ? 'active' : '/' }}" href="{{URL::asset('lien-he.html')}}">LIÊN HỆ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    </div>

</div>
