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
                        @foreach($data['categoryChild'] as $key=>$item)
                            <button class="tablinks" onclick="openCity(event, '{{$item->id}}')">{{$item->name}}</button>
                        @endforeach
                    </div>
                </div>

                <div>
                    <div id="London" class="tabcontent">

                        <div class="row right">
                            @foreach($data['categoryChild'] as $key=>$item)
                                @foreach($item->product as $key2=>$item2)
                                <div class="col-md-3 text-center items-overlay">
                                    <div class="items wow fadeInUp"
                                         style="background-image:url({{URL::asset($item2->image)}});">
                                        <div class="content d-flex flex-column align-items-center justify-content-center">

                                            <h5>{{$item2->title}}</h5>
                                            <p>{!! $item2->description !!}</p>
                                            <div class="btn-chitiet">
                                                <a href="{{URL::to('/du-an/'.$item2->path)}}">CHI TIẾT</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            @endforeach

                        </div>

                    </div>
                    @foreach($data['categoryChild'] as $key=>$item)

                        <div id="{{$item->id}}" class="tabcontent">

                        <div class="row  right">
                            @foreach($item->product as $key2=>$item2)
                                <div class="col-md-3 text-center items-overlay">
                                    <div class="items wow fadeInUp"
                                         style="background-image:url({{URL::asset($item2->image)}});">
                                        <div class="content d-flex flex-column align-items-center justify-content-center">

                                            <h5>{{$item2->title}}</h5>
                                            <p>{!! $item2->description !!}</p>
                                            <div class="btn-chitiet">
                                                <a href="{{URL::to('/du-an/'.$item2->path)}}">CHI TIẾT</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>