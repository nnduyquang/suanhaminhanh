<div class="container-fluid" id="p_1">
    <div class="container">
        <div class="row">
            <div class="col-md-12 left text-center">
                <div class="ol-h4 pb-3 m-auto">
                    <h4>
                        CÁC DỰ ÁN <br>
                        <span>GẦN ĐÂY</span>
                    </h4>
                </div>
                {{--<div><span>Các dự án đã thực hiện của chúng tôi gần đây</span></div>--}}

                <div class="text-center">
                    <div class="tab">
                        <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">All</button>
                        <button class="tablinks" onclick="openCity(event, 'Paris')">Sơn nước</button>
                        <button class="tablinks" onclick="openCity(event, 'Tokyo')">Trần thạch cao</button>
                        <button class="tablinks" onclick="openCity(event, 'Paris1')">Chống thấm</button>
                        <button class="tablinks" onclick="openCity(event, 'Tokyo1')">Trần thạch cao</button>
                        <button class="tablinks" onclick="openCity(event, 'Paris2')">Sửa chữa nhà</button>
                        <button class="tablinks" onclick="openCity(event, 'Tokyo2')">Sửa chữa cửa sắt</button>
                    </div>
                </div>

                <div>
                    <div id="London" class="tabcontent">

                        <div class="row right">
                            @for ($i = 0; $i < 12; $i++)
                                <div class="col-md-3 text-center items-overlay">
                                    <div class="items wow fadeInUp"
                                         style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                        <div class="content d-flex flex-column align-items-center justify-content-center">

                                            <h5>PROJECT 1</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad alias
                                                atque
                                                beatae ex fuga.</p>
                                            <div class="btn-chitiet">
                                                <a href="{{URL::asset('/du-an-chi-tiet.html')}}">CHI TIẾT</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endfor

                        </div>

                    </div>

                    <div id="Paris" class="tabcontent">

                        <div class="row  right">
                            @for ($i = 0; $i < 12; $i++)
                                <div class="col-md-3 text-center items-overlay">
                                    <div class="items wow fadeInUp"
                                         style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                        <div class="content d-flex flex-column align-items-center justify-content-center">

                                            <h5>PROJECT 1</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad alias
                                                atque
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

                    <div id="Tokyo" class="tabcontent">

                        <div class="row  right">
                            @for ($i = 0; $i < 12; $i++)
                                <div class="col-md-3 text-center items-overlay">
                                    <div class="items wow fadeInUp"
                                         style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                        <div class="content d-flex flex-column align-items-center justify-content-center">

                                            <h5>PROJECT 1</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad alias
                                                atque
                                                beatae ex fuga.</p>
                                            <div class="btn-chitiet">
                                                <a href="">CHI TIẾT</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endfor

                        </div>

                        <div id="Paris1" class="tabcontent">

                            <div class="row  right">
                                @for ($i = 0; $i < 12; $i++)
                                    <div class="col-md-3 text-center items-overlay">
                                        <div class="items wow fadeInUp"
                                             style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                            <div class="content d-flex flex-column align-items-center justify-content-center">

                                                <h5>PROJECT 1</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad alias
                                                    atque
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

                        <div id="Tokyo1" class="tabcontent">

                            <div class="row  right">
                                @for ($i = 0; $i < 12; $i++)
                                    <div class="col-md-3 text-center items-overlay">
                                        <div class="items wow fadeInUp"
                                             style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                            <div class="content d-flex flex-column align-items-center justify-content-center">

                                                <h5>PROJECT 1</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad alias
                                                    atque
                                                    beatae ex fuga.</p>
                                                <div class="btn-chitiet">
                                                    <a href="">CHI TIẾT</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endfor

                            </div>

                            <div id="Paris2" class="tabcontent">

                                <div class="row  right">
                                    @for ($i = 0; $i < 12; $i++)
                                        <div class="col-md-3 text-center items-overlay">
                                            <div class="items wow fadeInUp"
                                                 style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                                <div class="content d-flex flex-column align-items-center justify-content-center">

                                                    <h5>PROJECT 1</h5>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad
                                                        alias atque
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

                            <div id="Tokyo2" class="tabcontent">

                                <div class="row  right">
                                    @for ($i = 0; $i < 12; $i++)
                                        <div class="col-md-3 text-center items-overlay">
                                            <div class="items wow fadeInUp"
                                                 style="background-image:url({{URL::asset('https://colorlib.com/preview/theme/webuilder/img/project/project-3.jpg')}});">
                                                <div class="content d-flex flex-column align-items-center justify-content-center">

                                                    <h5>PROJECT 1</h5>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ad
                                                        alias atque
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
            </div>
        </div>
    </div>
</div>