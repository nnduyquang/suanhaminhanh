<div class="dv-content sub-menu">
    <ul>
        @foreach($subMenu as $key=>$item)
        <li><a href="{{URL::to($item->link())}}">{{$item->title}}</a></li>
        @endforeach
    </ul>
</div>