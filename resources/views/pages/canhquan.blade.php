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
<div class="full-row pb-30 cat_news pt-10">
    <div class="container ">
        <div class="row">
            <div class="col-lg-4">
                <div class="item_news">
                    <div class="img"><img src="frontend/img/24_2.jpg"></div>
                    <div class="info p-2">
                        <h3>Bình phong cuốn thư - Phong thủy vẹn tròn</h3>
                        <p>Cuốn thư đá thường được thi công cùng với các công trình tâm linh và mang nhiều ý nghĩa. ...</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

@endsection

@section('script')

@endsection