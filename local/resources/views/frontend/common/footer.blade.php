<div class="container-fluid p-0" id="footer">
    <div class="save-money">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <h4>TIẾT KIỆM CHÍ PHÍ</h4>
                    <p>Gọi ngay cho chúng tôi để được tư vấn về dịch vụ hiệu quả nhất !</p>
                </div>
                <div class="col-md-4 text-lg-right text-center mt-lg-0 mt-5">
                    <a href="">GỌI NGAY 0909 353 055</a>
                </div>
            </div>
        </div>
    </div>

    <div class="middle" style="background-image:url({{URL::asset('images/bg/in-gear-bgsteel.jpg')}});">
        <div class="container">
            <div class="row">
                <div class="col-md-3">

                    <img src="{{URL::asset('images/logo/logo-footer.png')}}" alt="">
                    <p>Công ty sửa chữa nhà Minh Ánh với độ ngũ nhân viên, kiến trúc sư dày dặn kinh nghiệm, đầy tài năng, sáng tạo và năng động đã và đang thiết kế và hoàn thiện nhiều công trình có chất lượng mang đến cho khách hàng niềm tin tuyệt đối, mỗi sản phẩm của chúng tôi đề là thương hiệu , chữ Tín trong nghề và tạo nên thương hiệu Minh Ánh..</p>


                </div>
                <div class="col-md-3">
                    <h5>
                        TIN TỨC LIÊN QUAN
                    </h5>
                    @foreach($listFrontEndInfo['news'] as $key=>$item)
                    <div class="blog d-flex align-items-center">
                        <img src="{{URL::to($item->image)}}" alt="">
                        <a href="{{URL::to('tin-tuc/'.$item->path)}}"><p>{{$item->title}}</p></a>
                    </div>
                    @endforeach
                </div>
                <div class="col-md-3">
                    <h5>
                        ĐỊA CHỈ VĂN PHÒNG
                    </h5>
                    <div><p><i class="fas fa-map-marker-alt pr-3"></i> Địa chỉ : 61 Đường số 1, Phường Bình Thuận, Quận 7, TP.HCM</p></div>
                    <div class="d-flex align-items-center">
                        <div class="mr-3"><p><i class="fas fa-phone"></i></p></div>
                        <p>Phone 1 : 0909 353 055 <br>
                        Phone 2 : 0122 871 0455</p>
                    </div>

                    <div><p><i class="far fa-envelope pr-3"></i>congtysuanhaminhanh@gmail.com</p></div>

                    <div><p><i class="fas fa-qrcode pr-3"></i> MST: 0315199371</p></div>
                </div>
                <div class="col-md-3 text-center">
                    <h5>
                        GỌI NGAY CHÚNG TÔI
                    </h5>

                    <h4><span>Line 1 :</span> 0122 871 0455</h4>

                    <h4><span>Line 2 :</span> 0909 353 055 </h4>

                    <div>
                        <input type="text" placeholder="Nhập email của bạn tại đây..">
                        <button>NHẬN THÔNG TIN</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="copy-right text-center">
        <p>Copyright ©2018 All rights reserved | This website create by Smartlinks.vn </p>
    </div>
</div>