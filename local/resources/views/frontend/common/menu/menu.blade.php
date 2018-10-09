<div id="menu" class="container-fluid p-0 d-none d-md-block">
    <div class="top-info">
        <div class="container">
            <div class="row">
                <div class="col-md-6"><i class="fas fa-phone"></i> 0909 353 055</div>
                <div class="col-md-6 text-right"><i class="fas fa-map-marker-alt"></i> 61 Đường số 1, Phường Bình Thuận,
                    Quận 7, TP.HCM
                </div>
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
                            @foreach($listMenu as $key=>$item)
                                <li @if(!$item->children->isEmpty()) class="dich-vu-overlay" @endif><a
                                            class="{{ request()->is($item->link()) ? 'active' : '/' }}"
                                            href="{{URL::to($item->link())}}">{{$item->title}}</a>
                                    @if(!$item->children->isEmpty())
                                        @include('frontend.common.menu.list-menu-item', ['subMenu' => $item->children])
                                    @endif
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
