@extends('backend.admin.master')
@section('title-page')
    Cập Nhật Chuyên Mục Bài Viết
@stop
@section('styles')
@stop
@section('scripts')
@stop
@section('container')
    <div class="col-lg-12 title-header">
        <div class="row">
            <div class="col-md-8">
                <h2>Cập Nhật Chuyên Mục Bài Viết</h2>
            </div>
            <div class="col-md-4 text-right">
                <a class="btn btn-primary" href="{{ route('categorypost.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Úi!</strong> Hình Như Có Gì Đó Sai Sai.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::model($categoryItem,array('route' => ['categorypost.update',$categoryItem->id],'method'=>'PATCH')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="wrap-create-edit">
                    <strong class="text-title-left">Tên Chuyên Mục</strong>
                    <div class="form-group">
                        {!! Form::text('name',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                    </div>
                </div>
                <div class="wrap-create-edit">
                    <strong class="text-title-left">Menu Cấp</strong>
                    <div class="form-group">
                        <select class="form-control" name="parent_id">
                            <option value="-1">Gốc</option>
                            @include('backend.admin.categorypost.list-select-option-edit')
                        </select>
                    </div>
                </div>
                <div class="wrap-create-edit">
                    <strong class="text-title-left">Mô Tả Ngắn:</strong>
                    <div class="form-group">
                        {!! Form::textarea('description',null,array('placeholder' => '','id'=>'description-page','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                    </div>
                </div>
                <div class="wrap-create-edit">
                    <strong class="text-title-left">Thứ Tự</strong>
                    <div class="form-group">
                        {!! Form::text('order',null, array('placeholder' => 'Thứ Tự','class' => 'form-control')) !!}
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                {{--<div class="wrap-create-edit">--}}
                {{--<strong class="text-title-right">Hình Đại Diện</strong>--}}
                {{--<div class="form-group">--}}
                {{--{!! Form::text('image', url('/').'/'.$categoryitem->image, array('class' => 'form-control','id'=>'pathImage')) !!}--}}
                {{--<br>--}}
                {{--{!! Form::button('Tìm', array('id' => 'btnBrowseImage','class'=>'btn btn-primary')) !!}--}}
                {{--</div>--}}
                {{--<div class="form-group">--}}
                {{--{{ Html::image($categoryitem->image,'',array('id'=>'showHinh','class'=>'show-image'))}}--}}
                {{--</div>--}}
                {{--</div>--}}
                {{--<div class="wrap-create-edit">--}}
                {{--<strong class="text-title-right">Hình Đại Diện Trên Mobile</strong>--}}
                {{--<div class="form-group">--}}
                {{--{!! Form::text('image_mobile', url('/').'/'.$categoryitem->image_mobile, array('class' => 'form-control','id'=>'pathImageMobile')) !!}--}}
                {{--<br>--}}
                {{--{!! Form::button('Tìm', array('id' => 'btnBrowseImageMobile','class'=>'btn btn-primary')) !!}--}}
                {{--</div>--}}
                {{--<div class="form-group">--}}
                {{--{{ Html::image($categoryitem->image_mobile,'',array('id'=>'showHinhMobile','class'=>'show-image'))}}--}}
                {{--</div>--}}
                {{--</div>--}}
            </div>
        </div>
    </div>
    <hr>
    <div id="seo-part" class="col-md-12 p-0">
        <h3>SEO</h3>
        <div class="content">
            <div class="show-pattern">
                <span class="title">{{$categoryItem->seos->seo_title}}</span>
                <span class="link">{{URL::to('/')}}/{{$categoryItem->path}}</span>
                <span class="description">{{$categoryItem->seos->seo_description}}</span>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Từ khóa cần SEO</strong>
                    {!! Form::text('seo_keywords',$categoryItem->seos->seo_keywords, array('placeholder' => 'keywords cách nhau dấu phẩy','class' => 'form-control')) !!}
                    <ul class="error-notice">
                    </ul>
                </div>
            </div>
            <div class="col-md-12 form-group">
                <strong>Tiêu Đề (title):</strong>
                {!! Form::text('seo_title',$categoryItem->seos->seo_title, array('placeholder' => 'Tên','class' => 'form-control')) !!}
            </div>
            <div class="col-md-12 form-group">
                <strong>Mô Tả (description):</strong>
                {!! Form::textarea('seo_description',$categoryItem->seos->seo_description,array('placeholder' => '','id'=>'seo-description-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
            </div>
        </div>
    </div>
    <div class="wrap-create-edit">
        <strong class="text-title-left">Kích Hoạt:</strong>
        <div class="form-group">
            <input {{$categoryItem->is_active==1?'checked':''}} name="is_active" data-on="Có"
                   data-off="Không" type="checkbox" data-toggle="toggle">
        </div>
    </div>
    <div class="col-md-12" style="text-align:  center;">
        <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Chuyên Mục Sản Phẩm</button>
    </div>
    {!! Form::close() !!}
@stop