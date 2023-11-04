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

<div class="full-row pt-70 pb-70 section-1">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 d-flex flex-center">
                <div class="home-content pl-250">
                    <h2>Công Viên Nghĩa trang Thiên Đường</h2>
                    <h3>Miền thảnh thơi, miền di sản…</h3>
                    <p>Cuộc đời là hành trình một chiều, mỗi khoảnh khắc trong cuộc đời là duy nhất.</p>
                    <p>Phước lành đã cho chúng ta sống hết mình trên cuộc đời này, nhưng chúng ta cũng già đi…. Khi vầng dương đã tắt, bạn nhẹ nhàng buông bỏ để đi vào “MIỀN THẢNH THƠI”. Những thành tựu, yêu thương, nụ cười của bạn…sẽ trở thành “MIỀN DI SẢN” cho những người ở lại.</p>
                    <p>Vì vậy, tại Công viên Nghĩa trang Thiên Đường, Chúng tôi trân trọng những câu chuyện cuộc đời và kiến tạo Dự Án không những trở thành nơi an nghỉ vĩnh hằng mà còn là nơi lưu giữ những giá trị của gia đình, họ tộc trường tồn mãi mãi…</p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="owl-carousel slider_thumb" data-slider-id="1">
                    <div class="item">
                        <img src="frontend/img/32.jpg">
                    </div>
                    <div class="item">
                        <img src="frontend/img/32.jpg">
                    </div>
                </div>
                <div class="owl-thumbs" data-slider-id="1">
                    <button class="owl-thumb-item"><img src="frontend/img/32.jpg"></button>
                    <button class="owl-thumb-item"><img src="frontend/img/32.jpg"></button>
                </div>
                <!-- <div class="owl-carousel owl-theme home_slider_img">
                    <div class="item">
                        <div class="thumb-blog-overlay bg-white hover-text-PushUpBottom mb-4 border-radius-10">
                            <div class="post-image position-relative overlay-secondary">
                                <img class="lazyload" src="frontend/img/32.jpg" alt="Image not found!">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="thumb-blog-overlay bg-white hover-text-PushUpBottom mb-4 border-radius-10">
                            <div class="post-image position-relative overlay-secondary">
                                <img class="lazyload" src="frontend/img/32.jpg" alt="Image not found!">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="thumb-blog-overlay bg-white hover-text-PushUpBottom mb-4 border-radius-10">
                            <div class="post-image position-relative overlay-secondary">
                                <img class="lazyload" src="frontend/img/32.jpg" alt="Image not found!">
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
</div>




<div class="full-row pt-70 pb-70 section-2 bg-light">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="img">
                    <img src="frontend/img/32.jpg">
                </div>
            </div>
            <div class="col-lg-6 d-flex flex-center">
                <div class="home-content pr-250">
                    <h2>Công Viên Nghĩa trang Thiên Đường</h2>
                    <h3>Miền thảnh thơi, miền di sản…</h3>
                    <p>Cuộc đời là hành trình một chiều, mỗi khoảnh khắc trong cuộc đời là duy nhất.</p>
                    <p>Phước lành đã cho chúng ta sống hết mình trên cuộc đời này, nhưng chúng ta cũng già đi…. Khi vầng dương đã tắt, bạn nhẹ nhàng buông bỏ để đi vào “MIỀN THẢNH THƠI”. Những thành tựu, yêu thương, nụ cười của bạn…sẽ trở thành “MIỀN DI SẢN” cho những người ở lại.</p>
                    <p>Vì vậy, tại Công viên Nghĩa trang Thiên Đường, Chúng tôi trân trọng những câu chuyện cuộc đời và kiến tạo Dự Án không những trở thành nơi an nghỉ vĩnh hằng mà còn là nơi lưu giữ những giá trị của gia đình, họ tộc trường tồn mãi mãi…</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="full-row pt-70 pb-70 section-2">
    <div class="container">
        <div class="sss24234 mb-30">
            <h2>Sản Phẩm Cao Cấp & Tinh Tế</h2>
            <p>Trải qua quá trình nghiên cứu chuyên sâu, khảo sát tỉ mỉ, kiến trúc khuôn viên mộ phần được thiết kế đảm bảo chuẩn phong thủy và mang tính thẩm mỹ cao</p>
        </div>
        <div class="sad234234">
            <div class="tab mb-20">
              <button class="tablinks active" onclick="openCity(event, 'giatoc')">KHUÔN VIÊN GIA TỘC</button>
              <button class="tablinks" onclick="openCity(event, 'giadinh')">KHUÔN VIÊN GIA ĐÌNH</button>
              <button class="tablinks" onclick="openCity(event, 'doi')">KHUÔN VIÊN ĐÔI</button>
              <button class="tablinks" onclick="openCity(event, 'don')">KHUÔN VIÊN ĐƠN</button>
              <button class="tablinks" onclick="openCity(event, 'tron')">KHUÔN VIÊN TRÒN</button>
            </div>

            <div id="giatoc" class="tabcontent active dd23423 " style="display: block;">
              <div class="row">
                  <div class="col-lg-6">
                      <img src="frontend/img/32.jpg">
                  </div>
                  <div class="col-lg-6 d-flex flex-center">
                      <div class="dd234234">
                          <h3>Khuôn viên Gia tộc</h3>
                          <p>Khuôn viên mộ gia tộc với diện tích 200m2 trở lên, được xây dựng đáp ứng theo nhu cầu chôn cất chung của gia tộc. Với thiết kế cảnh quan đẳng cấp, khu gia tộc tại Công viên Nghĩa trang Thiên Đường sẽ trở thành ngôi nhà vĩnh cửu để tổ tiên ông bà đoàn tụ, cũng như là nơi con cháu lưu giữ những giá trị tinh hoa, phát huy phúc khí của gia tộc.</p>
                          <div class="button">
                              <button type="button" onclick="location.href='.'">TÌM HIỂU THÊM</button>
                          </div>
                      </div>
                  </div>
              </div>
            </div>

            <div id="giadinh" class="tabcontent">
              <h3>Paris</h3>
              <p>Paris is the capital of France.</p> 
            </div>

            <div id="doi" class="tabcontent">
              <h3>Tokyo</h3>
              <p>Tokyo is the capital of Japan.</p>
            </div>
            <div id="don" class="tabcontent">
              <h3>Tokyo</h3>
              <p>Tokyo is the capital of Japan.</p>
            </div>
            <div id="tron" class="tabcontent">
              <h3>Tokyo</h3>
              <p>Tokyo is the capital of Japan.</p>
            </div>
        </div>
        
    </div>
</div>

<div class="full-row pt-70 pb-70 section-2 bg-light">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="owl-carousel owl-theme home_slider_iteam">

                    <div class="item">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="img pl-250">
                                    <img src="frontend/img/32.jpg">
                                </div>
                            </div>
                            <div class="col-lg-6 d-flex flex-center">
                                <div class="home-content pr-250">
                                    <h2>Công Viên Nghĩa trang Thiên Đường</h2>
                                    <h3>Miền thảnh thơi, miền di sản…</h3>
                                    <p>Cuộc đời là hành trình một chiều, mỗi khoảnh khắc trong cuộc đời là duy nhất.</p>
                                    <p>Phước lành đã cho chúng ta sống hết mình trên cuộc đời này, nhưng chúng ta cũng già đi…. Khi vầng dương đã tắt, bạn nhẹ nhàng buông bỏ để đi vào “MIỀN THẢNH THƠI”. Những thành tựu, yêu thương, nụ cười của bạn…sẽ trở thành “MIỀN DI SẢN” cho những người ở lại.</p>
                                    <p>Vì vậy, tại Công viên Nghĩa trang Thiên Đường, Chúng tôi trân trọng những câu chuyện cuộc đời và kiến tạo Dự Án không những trở thành nơi an nghỉ vĩnh hằng mà còn là nơi lưu giữ những giá trị của gia đình, họ tộc trường tồn mãi mãi…</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="img pl-250">
                                    <img src="frontend/img/32.jpg">
                                </div>
                            </div>
                            <div class="col-lg-6 d-flex flex-center">
                                <div class="home-content pr-250">
                                    <h2>Công Viên Nghĩa trang Thiên Đường</h2>
                                    <h3>Miền thảnh thơi, miền di sản…</h3>
                                    <p>Cuộc đời là hành trình một chiều, mỗi khoảnh khắc trong cuộc đời là duy nhất.</p>
                                    <p>Phước lành đã cho chúng ta sống hết mình trên cuộc đời này, nhưng chúng ta cũng già đi…. Khi vầng dương đã tắt, bạn nhẹ nhàng buông bỏ để đi vào “MIỀN THẢNH THƠI”. Những thành tựu, yêu thương, nụ cười của bạn…sẽ trở thành “MIỀN DI SẢN” cho những người ở lại.</p>
                                    <p>Vì vậy, tại Công viên Nghĩa trang Thiên Đường, Chúng tôi trân trọng những câu chuyện cuộc đời và kiến tạo Dự Án không những trở thành nơi an nghỉ vĩnh hằng mà còn là nơi lưu giữ những giá trị của gia đình, họ tộc trường tồn mãi mãi…</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="img pl-250">
                                    <img src="frontend/img/32.jpg">
                                </div>
                            </div>
                            <div class="col-lg-6 d-flex flex-center">
                                <div class="home-content pr-250">
                                    <h2>Công Viên Nghĩa trang Thiên Đường</h2>
                                    <h3>Miền thảnh thơi, miền di sản…</h3>
                                    <p>Cuộc đời là hành trình một chiều, mỗi khoảnh khắc trong cuộc đời là duy nhất.</p>
                                    <p>Phước lành đã cho chúng ta sống hết mình trên cuộc đời này, nhưng chúng ta cũng già đi…. Khi vầng dương đã tắt, bạn nhẹ nhàng buông bỏ để đi vào “MIỀN THẢNH THƠI”. Những thành tựu, yêu thương, nụ cười của bạn…sẽ trở thành “MIỀN DI SẢN” cho những người ở lại.</p>
                                    <p>Vì vậy, tại Công viên Nghĩa trang Thiên Đường, Chúng tôi trân trọng những câu chuyện cuộc đời và kiến tạo Dự Án không những trở thành nơi an nghỉ vĩnh hằng mà còn là nơi lưu giữ những giá trị của gia đình, họ tộc trường tồn mãi mãi…</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      evt.currentTarget.className += " active";
    }
</script>



@endsection
