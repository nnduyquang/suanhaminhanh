<div class="container-fluid" id="h_3">
    <div class="container">
        <div class="row">
            <div class="col-md-3 left text-lg-left text-center">
                <div class="ol-h4 pb-3 ml-lg-0 m-auto">
                    <h4>
                        DỰ ÁN <br>
                        GẦN ĐÂY
                    </h4>
                </div>
                <div><span>Các dự án đã thực hiện gần đây</span></div>

                <div class="text-lg-left text-center align-self-end">
                    <ul>
                        <li>
                            <button class="tab-links">All</button>
                        </li>
                        <li>
                            <button class="tab-links">Sơn nước</button>
                        </li>
                        <li>
                            <button class="tab-links">Trần thạch cao</button>
                        </li>
                        <li>
                            <button class="tab-links">Chống thấm</button>
                        </li>
                        <li>
                            <button class="tab-links">Sửa chữa nhà</button>
                        </li>
                        <li>
                            <button class="tab-links">Sửa chữa cửa</button>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-md-9 right">
                <div class="row">
                    @for ($i = 0; $i < 6; $i++)
                        <div class="col-md-4 text-center items-overlay">
                            <div class="items wow fadeInUp"
                                 style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                <div class="content d-flex flex-column align-items-center justify-content-center">

                                    <h5>PROJECT 1</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad alias atque
                                        beatae ex fuga.</p>
                                    <div class="btn-chitiet">
                                        <a href="">CHI TIẾT</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endfor

                </div>
            </div>
        </div>
    </div>
</div>