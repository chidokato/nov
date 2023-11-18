@extends('layout.index')

@section('title') {{$data->title ? $data->title : $data->name}} @endsection
@section('description') {{$data->description}} @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('content')

<div class="page-banner-simple bg-secondary py-0" style="background: url(data/category/{{$data->img}}) no-repeat center center;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 category">
                <h3 class="banner-title text-white">{{$data->name}}</h3>
                <div class="banner-tagline font-medium text-white">Chúng tôi lập chiến lược, thiết kế & phát triển để tạo ra những sản phẩm có giá trị.</div>
            </div>
        </div>
    </div>
</div>
<div class="full-row pb-30 cat_news pt-50">
    <div class="container ">
        <div class="row">
            @foreach($post as $val)
            <div class="col-lg-4">
                <div class="item_news border-radius-10">
                    <div class="img"><img src="data/news/{{$val->img}}"></div>
                    <div class="info p-2">
                        <h2>{{$val->name}}</h2>
                        <div class="detail text-truncate-set text-truncate-set-3 p-2 pt-0">{{$val->detail}}</div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>

@endsection

@section('script')

@endsection