@extends('layout.index')

@section('title') {{$setting->title ? $setting->title : $setting->name}} @endsection
@section('description') {{$setting->description}} @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.0/css/swiper.css">
<style type="text/css">

</style>
@endsection

@section('content')

<div class="full-row p-0 overflow-hidden bg-light">
    <div class="owl-carousel owl-theme home_slider">
        @foreach($slider as $val)
        <div class="item"><img alt="slide" src="data/home/{{$val->img}}"></div>
        @endforeach
    </div>
</div>

<div class="full-row pt-70 pb-70 section-1 bg-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 d-flex flex-center mb-5">
                <div class="home-content text-center">
                    <h2>Công Viên Nghĩa trang Thiên Đường</h2>
                    <h3>Miền thảnh thơi, miền di sản…</h3>
                    <p>Công viên nghĩa trang Thiên Đường cao cấp bậc nhất Việt Nam tại Tuyên Quang: Nơi quê hương cách mạng, Vùng đất linh thiêng của Mẫu thượng ngàn.
Chỉ cách Hà Nội 75 phút di chuyển hoàn toàn bằng cao tốc, Công Viên Thiên Đường là “Miền thảnh thơi – Miền di sản” ôm ấp giấc ngủ ngàn thu cho các hương linh.
Tọa lạc tại thế đất hình Linh Quy, Công viên Thiên Đường sở hữu địa thế phong thủy vượng sơn vượng hướng: Lưng tựa Núi Là trùng điệp, mặt hướng suối ngọc hiền hòa.
Với khuôn viên mộ phần kế thừa tinh hoa lăng tẩm triều Nguyễn và vẻ đẹp kiến trúc Á Đông, hệ thống tiện ích dịch vụ đầy đủ, tận tâm cùng quần thể các công trình tâm linh, Công viên Thiên đường sẽ là nơi sum họp, lưu giữ những giá trị của gia đình, họ tộc trường tồn mãi mãi.</p>
                    <div class="button"><button onclick="location.href='gioi-thieu'">Tìm hiểu thêm</button></div>
                </div>
            </div>
            <div class="col-lg-12 flex-center">
                <div class="img"><img src="frontend/img/24_2.jpg"></div>
            </div>
            <!-- <div class="col-lg-12">
                <div id="sync1" class="slider owl-carousel">
                    <div class="item">
                        <img src="frontend/img/32.jpg" alt="real estate template">
                    </div>
                    <div class="item">
                        <img src="frontend/img/33.jpg" alt="real estate template">
                    </div>
                    <div class="item">
                        <img src="frontend/img/34.jpg" alt="real estate template">
                    </div>
                </div>
                <div id="sync2" class="navigation-thumbs owl-carousel">
                    <div class="item">
                        <img src="frontend/img/32.jpg" alt="real estate template">
                    </div>
                    <div class="item">
                        <img src="frontend/img/33.jpg" alt="real estate template">
                    </div>
                    <div class="item">
                        <img src="frontend/img/34.jpg" alt="real estate template">
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</div>

<div class=" section-2 bg-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-50">
                <div class="owl-carousel owl-theme home_slider_iteam">
                    <div class="item">
                        <div class="row bg9b5015">
                            <div class="col-lg-5">
                                <div class="img">
                                    <img src="frontend/img/Untitled.png">
                                </div>
                            </div>
                            <div class="col-lg-7 d-flex flex-center">
                                <div class="home-content aaa333">
                                    <h2>Phong Thủy Vượng Sơn Vượng Hướng</h2>
                                    <p>Địa hình dự án vững chãi, tựa sơn hướng thủy do được bao bọc bởi núi Là, xung quanh các quả đồi là dòng suối tự nhiên tạo nên hai hồ lớn. Công viên Nghĩa trang Thiên Đường nằm trên khu đất có dáng hình LINH QUY đại diện cho sự thông minh, mẫn cán và trường thọ. Dải đất này có mạch chạy theo hướng Tây Bắc - Đông Nam đem lại phúc lộc đời đời cho con cháu. </p>
                                    <div class="button"><a class="quick-view" href="#quick-view"><button>ĐĂNG KÝ NHẬN TƯ VẤN</button></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="row bg9b5015">
                            <div class="col-lg-5">
                                <div class="img">
                                    <img src="frontend/img/maps.jpg">
                                </div>
                            </div>
                            <div class="col-lg-7 d-flex flex-center">
                                <div class="home-content aaa333">
                                    <h2>Phong Thủy Vượng Sơn Vượng Hướng</h2>
                                    <p>Địa hình dự án vững chãi, tựa sơn hướng thủy do được bao bọc bởi núi Là, xung quanh các quả đồi là dòng suối tự nhiên tạo nên hai hồ lớn. Công viên Nghĩa trang Thiên Đường nằm trên khu đất có dáng hình LINH QUY đại diện cho sự thông minh, mẫn cán và trường thọ. Dải đất này có mạch chạy theo hướng Tây Bắc - Đông Nam đem lại phúc lộc đời đời cho con cháu. </p>
                                    <div class="button"><a class="quick-view" href="#quick-view"><button>ĐĂNG KÝ NHẬN TƯ VẤN</button></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class=" section_3 bg-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="owl-carousel owl-theme home_slider_iteam">

                    <div class="item">
                        <div class="img">
                            <img src="frontend/img/22_4.jpg">
                        </div>
                        <div class="sss111 aaa333">
                            <h2>Vị Trí Giao Thông Thuận Lợi</h2>
                            <p>Công viên Nghĩa trang Thiên Đường toạ lạc tại vị trí giao thông thuận lợi, kết nối với hệ thống đường cao tốc Phía Bắc: Hà Nội – Lào Cai, Phú Thọ - Tuyên Quang, Tuyên Quang – Hà Giang. </p>
                            <div class="button"><a class="quick-view" href="#quick-view"><button>ĐĂNG KÝ NHẬN TƯ VẤN</button></a></div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="img">
                            <img src="frontend/img/23_7.jpg">
                        </div>
                        <div class="sss111 aaa333">
                            <h2>Vị Trí Giao Thông Thuận Lợi</h2>
                            <p>Công viên Nghĩa trang Thiên Đường toạ lạc tại vị trí giao thông thuận lợi, kết nối với hệ thống đường cao tốc Phía Bắc: Hà Nội – Lào Cai, Phú Thọ - Tuyên Quang, Tuyên Quang – Hà Giang. </p>
                            <div class="button"><a class="quick-view" href="#quick-view"><button>ĐĂNG KÝ NHẬN TƯ VẤN</button></a></div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>



<div class="full-row pt-70 pb-70 section_4 bg-main">
    <div class="container">
        <div class="sss24234 mb-30">
            <h2>Sản Phẩm Cao Cấp & Tinh Tế</h2>
            <p class="color-black size12">Trải qua quá trình nghiên cứu chuyên sâu, khảo sát tỉ mỉ, kiến trúc khuôn viên mộ phần được thiết kế đảm bảo chuẩn phong thủy và mang tính thẩm mỹ cao</p>
        </div>
        <div class="row">
            @foreach($sanpham as $val)
            <div class="col-lg-6">
                <div class="item border-radius-10 sanpham">
                    <div class="img"><a href=""><img src="data/news/{{$val->img}}"></a></div>
                    <div class="info text-center">
                        <a href=""><h3>{{$val->name}}</h3></a>
                        <div class="">
                            {!! $val->info !!}
                        </div>
                        <div class="button"><a class="quick-view" href="#quick-view"><button>ĐĂNG KÝ NHẬN TƯ VẤN</button></a></div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <!-- <div class="sad234234">
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
                      <img class="img100" src="frontend/img/kvgiatoc.jpg">
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

            <div id="giadinh" class="tabcontent dd23423">
              <div class="row">
                  <div class="col-lg-6">
                      <img class="img100" src="frontend/img/giadinh.jpg">
                  </div>
                  <div class="col-lg-6 d-flex flex-center">
                      <div class="dd234234">
                          <h3>Khuôn viên Gia đình</h3>
                          <p>Khuôn viên mộ gia đình tại Công viên Nghĩa trang Thiên Đường có diện tích từ 20-80m2, được thiết kế tinh xảo, là không gian yên bình, ấm cúng để con cháu tưởng nhớ đến thành tựu của ông cha cũng như lưu giữ bóng hình và những khoảnh khắc đẹp của người thân lúc sinh thời.</p>
                          <div class="button">
                              <button type="button" onclick="location.href='.'">TÌM HIỂU THÊM</button>
                          </div>
                      </div>
                  </div>
              </div>
            </div>

            <div id="doi" class="tabcontent dd23423">
              <div class="row">
                  <div class="col-lg-6">
                      <img class="img100" src="frontend/img/kvdoi.jpg">
                  </div>
                  <div class="col-lg-6 d-flex flex-center">
                      <div class="dd234234">
                          <h3>Khuôn viên Đôi</h3>
                          <p>Với diện tích 8-12m2, thiết kế hiện đại, tinh xảo, cùng khuôn viên mộ phần tràn ngập cây xanh, hoa đẹp, khu mộ đôi tại Công viên Nghĩa trang Thiên Đường là nơi an nghỉ vĩnh hằng cho ông bà, cha mẹ.</p>
                          <div class="button">
                              <button type="button" onclick="location.href='.'">TÌM HIỂU THÊM</button>
                          </div>
                      </div>
                  </div>
              </div>
            </div>
            <div id="don" class="tabcontent dd23423">
              <div class="row">
                  <div class="col-lg-6">
                      <img class="img100" src="frontend/img/kvdon.jpg">
                  </div>
                  <div class="col-lg-6 d-flex flex-center">
                      <div class="dd234234">
                          <h3>Khuôn viên Đơn</h3>
                          <p>Khuôn viên đơn tại Công viên Nghĩa trang Thiên Đường với diện tích 3,5m2 được thiết kế trang trọng, hài hòa, cùng cảnh sắc thiên nhiên tươi đẹp, không gian yên tĩnh, bình dị. Nơi đây sẽ là nơi xoa dịu trái tim, an nghỉ vĩnh hằng dành cho người thân đã khuất.</p>
                          <div class="button">
                              <button type="button" onclick="location.href='.'">TÌM HIỂU THÊM</button>
                          </div>
                      </div>
                  </div>
              </div>
            </div>
            <div id="tron" class="tabcontent dd23423">
              <div class="row">
                  <div class="col-lg-6">
                      <img class="img100" src="frontend/img/kvtron.jpg">
                  </div>
                  <div class="col-lg-6 d-flex flex-center">
                      <div class="dd234234">
                          <h3>Khuôn viên Tròn</h3>
                          <p>Khuôn viên tròn tại Công viên Nghĩa trang Thiên Đường được thiết kế gồm những khuôn viên đơn sắp xếp hài hòa cạnh nhau tạo nên không gian đoàn tụ ấm cúng cho gia đình, họ tộc. Đây là nơi thể hiện lòng hiếu thảo của con cháu với gia tiên và người thân đã khuất.</p>
                          <div class="button">
                              <button type="button" onclick="location.href='.'">TÌM HIỂU THÊM</button>
                          </div>
                      </div>
                  </div>
              </div>
            </div>
        </div> -->
        
    </div>
</div>

<div class="section_5 pb-50 bg-main">
    <div class="container">
        <div class="sss24234 pt-30">
            <h2>Dịch Vụ Hoàn Hảo</h2>
            <p class="color-black">Mong muốn mang đến cho khách hàng những khoảnh khắc trải nghiệm hoàn hảo, đội ngũ nhân sự tại Công viên Nghĩa trang Thiên Đường được đào tạo bài bản, chuyên nghiệp với sự tận tâm và tinh tế. Tại đây, Chúng tôi đảm bảo cung cấp đầy đủ các dịch vụ hiện đại và cao cấp bậc nhất Việt Nam</p>
            <div class="button"><button onclick="location.href='tien-ich-dich-vu'">Tìm hiểu thêm dịch vụ</button></div>
        </div>
    </div>
    <div class="container">
        <div class="swiper-container">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/30.jpg">
                    <div class="button"><button>DỊCH VỤ TƯ VẤN & HỖ TRỢ TANG LỄ TRỌN GÓI</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/z4739940249002_d3b63656ca75c3196b87d89f61f6343d.jpg">
                    <div class="button"><button>DỊCH VỤ XÂY DỰNG MỘ PHẦN</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/thien_duong_19.05_20.jpg">
                    <div class="button"><button>DỊCH VỤ CHĂM SÓC MỘ PHẦN & CẢNH QUAN</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/27.jpg">
                    <div class="button"><button>DỊCH VỤ LẬP KẾ HOẠCH TRƯỚC</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/gia-pha-2.jpg">
                    <div class="button"><button>DỊCH VỤ XÂY DỰNG GIA PHẢ</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/28.jpg">
                    <div class="button"><button>DỊCH VỤ HỖ TRỢ ĂN UỐNG LƯU TRÚ</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/phong-thuy-am-trach.jpg">
                    <div class="button"><button>DỊCH VỤ TƯ VẤN PHONG THỦY</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/29.jpg">
                    <div class="button"><button>DỊCH VỤ HỎA TÁNG</button></div>
                </div>
                <div class="swiper-slide">
                    <img class="img100" src="frontend/img/31.jpg">
                    <div class="button"><button>DỊCH VỤ CÚNG GIỖ ONLINE</button></div>
                </div>
            </div>
            <!-- <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div> -->
        </div>
    </div>
</div>

<div class="section_6 pb-50 bg-main">
    <div class="container">
        <div class="sss24234 pt-30 pb-30">
            <h2>Tiến độ dự án</h2>
            <p class="color-black">Khởi công từ ngày 05/07/2021, đến nay Dự án Công viên Nghĩa trang Thiên Đường đã hoàn thành thi công đến 90% các hạng mục, bao gồm: Chùa Báo Ân, Đền Trình, Trục Thần Đạo, công trình các Đại Tượng Phật như tượng Phật Thích Ca, tượng Quán Thế Âm Bồ Tát, nhà làm việc và dịch vụ…. Hiện tại, đơn vị đang tập trung hoàn thiện hạ tầng kỹ thuật, hệ thống cây xanh, cảnh quan và tiện ích.</p>
            <!-- <div class="button"><button onclick="location.href='tien-ich-dich-vu'">TÌM HIỂU THÊM</button></div> -->
        </div>
    </div>
    <div class="container">
        <div class="owl-carousel owl-theme home_slider_img">
            <div class="item"><div class="img"><img src="frontend/img/z4114416403845_cc0ff12ebe24e042c966476409702a36.jpg"></div></div>
            <div class="item"><div class="img"><img src="frontend/img/z4113935533246_0c7ed037bebcbc9b1492778fd7c1fecb.jpg"></div></div>
            <div class="item"><div class="img"><img src="frontend/img/z4788917327979_5ddf476c7927e848bf10064024c4a71a.jpg"></div></div>
            <div class="item"><div class="img"><img src="frontend/img/z4394961937336_e4ff1de839ca30b8797a7395d596a014.jpg"></div></div>
            <div class="item"><div class="img"><img src="frontend/img/z4394961885772_1ba81cffc5902966df5d844e12c9b328.jpg"></div></div>
            <div class="item"><div class="img"><img src="frontend/img/z4740074326229_619e73b6e7df7f027ceb4a95a6ccd07a.jpg"></div></div>
            <div class="item"><div class="img"><img src="frontend/img/z4113935410935_393e14be8de76749bb3761ef19ab9b5e.jpg"></div></div>
        </div>

    </div>
</div>

<!-- <div class="section_7 pb-50 bg-light">
    <div class="container">
        <div class="sss24234 pt-30 pb-10">
            <h2>TIỆN ÍCH & DỊCH VỤ</h2>
        </div>
        <div class="row">
            <div class="col-lg-12 mb-10">
                <div class="owl-carousel slider_tintuc">
                    @foreach($tienich as $val)
                    <div class="item border-radius-10">
                        <div class="img"><a href="{{$val->category->slug}}/{{$val->slug}}"><img src="data/news/{{$val->img}}"></a></div>
                        <div class="info">
                            <h3><a href="{{$val->category->slug}}/{{$val->slug}}">{{$val->name}}</a></h3>
                            <p class="text-truncate-set text-truncate-set-3">{{$val->detail}}</p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div> -->

<!-- <div class="section_8 pb-50">
    <div class="container">
        <div class="sss24234 pt-30 pb-10">
            <h2>BÁO CHÍ NÓI VỀ CÔNG VIÊN THIÊN ĐƯỜNG</h2>
        </div>
        <div class="row">
            <div class="col-lg-12 mb-10">
                <div class="owl-carousel slider_tintuc">
                    <div class="item "><div class="img img234"><a href="https://baohagiang.vn/thong-tin-quang-ba/202211/cong-vien-tam-linh-thien-duong-noi-hieu-nghia-ven-tron-danh-cho-dang-sinh-thanh-cc21d4d/"><img src="frontend/img/ha_giang_png_20211122103210.png"></a></div></div>
                    <div class="item "><div class="img img234"><a href="https://baotuyenquang.com.vn/kinh-te/bat-dong-san-tam-linh-cong-vien-nghia-trang-tro-thanh-nhu-cau-tat-yeu-cua-xa-hoi-hien-dai-168797.html"><img src="frontend/img/img_20230130084001.jpg"></a></div></div>
                    <div class="item "><div class="img img234"><a href="https://cafef.vn/cong-vien-tam-linh-thien-duong-du-an-cao-cap-tai-phia-bac-viet-nam-20230104160750419.chn"><img src="frontend/img/cafeF.png"></a></div></div>
                    <div class="item "><div class="img img234"><a href="https://www.qdnd.vn/kinh-te/cac-van-de/du-an-lam-thay-doi-thoi-quen-phong-tuc-mai-tang-cua-nguoi-dan-mien-nui-664228"><img src="frontend/img/bannerv2.png"></a></div></div>
                    <div class="item "><div class="img img234"><a href="http://nhipsongkinhte.toquoc.vn/cong-vien-tam-linh-thien-duong-du-an-cao-cap-tai-phia-bac-viet-nam-20230104113603295.htm"><img src="frontend/img/logo_nskt_tq.webp"></a></div></div>
                </div>
            </div>
        </div>
    </div>
</div> -->

<!-- <div class="section_7 pb-50 bg-light">
    <div class="container">
        <div class="sss24234 pt-30 pb-10">
            <h2>TIN TỨC NỔI BẬT</h2>
        </div>
        <div class="row">
            <div class="col-lg-12 mb-10">
                <div class="owl-carousel slider_tintuc">
                    @foreach($tintuc as $val)
                    <div class="item border-radius-10">
                        <div class="img"><a href="{{$val->category->slug}}/{{$val->slug}}"><img src="data/news/{{$val->img}}"></a></div>
                        <div class="info">
                            <h3><a href="{{$val->category->slug}}/{{$val->slug}}">{{$val->name}}</a></h3>
                            <p class="text-truncate-set text-truncate-set-3">{{$val->detail}}</p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="button"><button>Xem tất cả</button></div>
        </div>
    </div>
</div> -->

@endsection

@section('js')

<!-- swiper -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.0/js/swiper.js"></script>
<script>
    $(document).ready(function() {
  var $swiper = $(".swiper-container");
  var $bottomSlide = null; 
  var $bottomSlideContent = null;
  var mySwiper = new Swiper(".swiper-container", {
    spaceBetween: 1,
    slidesPerView: 3,
    centeredSlides: true,
    roundLengths: true,
    loop: true,
    loopAdditionalSlides: 30,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev"
    }
  });
});

  </script>
<!-- swiper -->


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

<script type="text/javascript">
    var sync1 = $(".slider");
var sync2 = $(".navigation-thumbs");

var thumbnailItemClass = '.owl-item';

var slides = sync1.owlCarousel({
    video:true,
  startPosition: 12,
  items:1,
  loop:false,
  margin:3,
  autoplay:true,
  autoplayTimeout:6000,
  autoplayHoverPause:false,
  nav: false,
  dots: false
}).on('changed.owl.carousel', syncPosition);

function syncPosition(el) {
  $owl_slider = $(this).data('owl.carousel');
  var loop = $owl_slider.options.loop;

  if(loop){
    var count = el.item.count-1;
    var current = Math.round(el.item.index - (el.item.count/2) - .5);
    if(current < 0) {
        current = count;
    }
    if(current > count) {
        current = 0;
    }
  }else{
    var current = el.item.index;
  }

  var owl_thumbnail = sync2.data('owl.carousel');
  var itemClass = "." + owl_thumbnail.options.itemClass;


  var thumbnailCurrentItem = sync2
  .find(itemClass)
  .removeClass("synced")
  .eq(current);

  thumbnailCurrentItem.addClass('synced');

  if (!thumbnailCurrentItem.hasClass('active')) {
    var duration = 100;
    sync2.trigger('to.owl.carousel',[current, duration, true]);
  }   
}
var thumbs = sync2.owlCarousel({
  startPosition: 0,
  items:3,
  loop:false,
  margin:0,
  autoplay:false,
  nav: false,
  dots: false,
  onInitialized: function (e) {
    var thumbnailCurrentItem =  $(e.target).find(thumbnailItemClass).eq(this._current);
    thumbnailCurrentItem.addClass('synced');
  },
})
.on('click', thumbnailItemClass, function(e) {
    e.preventDefault();
    var duration = 300;
    var itemIndex =  $(e.target).parents(thumbnailItemClass).index();
    sync1.trigger('to.owl.carousel',[itemIndex, duration, true]);
}).on("changed.owl.carousel", function (el) {
  var number = el.item.index;
  $owl_slider = sync1.data('owl.carousel');
  $owl_slider.to(number, 100, true);
});

</script>



@endsection
