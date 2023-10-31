@extends('layout.index')

@section('title') Công Ty Cổ Phần Bất Động Sản Indochine @endsection
@section('description') Công Ty Cổ Phần Bất Động Sản Indochine là công ty thành viên của Đất Xanh Miền Bắc - UY TÍN số 1 thị trường BĐS Việt Nam @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('content')

<div class="full-row p-0 overflow-hidden bg-light">
    <div class="owl-carousel owl-theme home_slider">
        @foreach($slider as $val)
        <div class="item"><img alt="slide" src="data/home/{{$val->img}}"></div>
        @endforeach
    </div>
</div>







@endsection
