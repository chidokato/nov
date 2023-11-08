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

<div class="full-row pb-30 about_1">
    <div class="container">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div class="text-secondary mb-5">
                    {!!$data->content!!}
                </div>
            </div>
            <div class="col-lg-2"></div>
        </div>
    </div>
</div>

<div class="full-row pb-30 cat_news">
    <div class="container-fluid">
        @foreach($post as $val)
        <div class="row">
            <div class="col-lg-6">
                <img src="data/news/{{$val->img}}">
            </div>
            <div class="col-lg-4 d-flex flex-center">
                <div class="text-secondary mb-5">
                    <h2>{{$val->name}}</h2>
                    {!!$val->detail!!}
                    <div class="info-button">
                        <div class="button mr-10"><button>Xem thêm >> </button></div>
                        <div class="button"><button>Nhận tư vấn</button></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2"></div>
        </div>
        @endforeach
    </div>
</div>

@endsection

@section('script')

@endsection