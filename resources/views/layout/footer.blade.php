<!--============== Footer Section Start ==============-->
<footer>
    <div class="container-fluid footer_1">
        <div class="row">
            <div class="col-md-7">
            </div>
            <div class="col-md-5 ">
                <div class="form">
                    <h4>CHƯƠNG TRÌNH THAM QUAN CÔNG VIÊN THIÊN ĐƯỜNG</h4>
                    <p>Trân trọng kính mời Quý khách tham quan MIỄN PHÍ Công viên Thiên đường vào thứ 7 và Chủ nhật hàng tuần. Toàn bộ chi phí và việc đưa đón chuyến tham quan sẽ do Công viên Thiên đường hân hạnh đài thọ.</p>
                    <form class="form-icon-right" action="#" method="post">
                        <div class="row">
                            <div class="col-12 mb-10">
                                <div class="form-group mb-0">
                                    <input type="text" class="form-control" name="name" placeholder="Your Name">
                                </div>
                            </div>
                            <div class="col-12 mb-10">
                                <div class="form-group mb-0">
                                    <input type="text" class="form-control" name="phone" placeholder="Phone Number">
                                </div>
                            </div>
                            <div class="col-12 mb-10">
                                <div class="form-group mb-0">
                                    <input type="email" class="form-control" name="email" placeholder="Your Email">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group mb-0">
                                    <button class="btn btn-primary w-100">ĐĂNG KÝ NGAY</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid footer_2 ">
        <div class="row">
            <div class="col-md-7 pb-50 pt-30">
                <div class="row">
                    <div class="col-md-6 logo_footer">
                        <div class="img"><img src="frontend/img/logo.png"></div>
                        <p>Tại Thiên Đường, chúng tôi luôn phục vụ Khách hàng bằng cả trái tim, trí tuệ và sự tận tâm để người mất được an lạc ở cõi vĩnh hằng, người sống được bình yên, thanh thản</p>
                    </div>
                    <div class="col-md-6 address">
                        <h3>Công viên Nghĩa trang Thiên Đường</h3>
                        <div class="dd222">
                            <div class="icon"><img src="frontend/img/vitri.png"></div>
                            <p><strong>Vị trí dự án</strong><br>Xã Lang Quán - Huyện Yên Sơn - Tỉnh Tuyên Quang (KM11 Đường Tuyên Quang - Hà Giang)</p>
                        </div>
                        <div class="dd222">
                            <div class="icon"><img src="frontend/img/vanphong.png"></div>
                            <p><strong>Văn phòng Hà Nội</strong><br>Tầng 5 tòa LICOGI 13, số 164 Khuất Duy Tiến, Nhân Chính, quận Thanh Xuân, Hà Nội</p>
                        </div>
                        <div class="dd222">
                            <div class="icon"><img src="frontend/img/hotline.png"></div>
                            <p><strong>Hotline</strong><br>{{$setting->hotline}}</p>
                        </div>
                        <div class="dd222">
                            <div class="icon"><img src="frontend/img/email.png"></div>
                            <p><strong>Email</strong><br>{{$setting->email}}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-5 "></div>
        </div>
    </div>
</footer>
<!--============== Footer Section End ==============-->

<!-- Scroll to top -->
<div class="scroll-top-vertical xs-mx-none" id="scroll">Go Top <i class="ms-2 fa-solid fa-arrow-right-long"></i></div>
<!-- End Scroll To top -->

@include('layout.popup')