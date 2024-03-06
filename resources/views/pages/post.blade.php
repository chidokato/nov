@extends('layout.index')

@section('title') {{$post->title ? $post->title : $post->name}} @endsection
@section('description') {{$post->description ? $post->description : $post->name.$post->name}} @endsection
@section('robots') index, follow @endsection
@section('url'){{asset('')}}@endsection

@section('content')
<div class="page-banner-simple bg-secondary py-0" style="background: url(data/category/{{$cat->img}}) no-repeat center center;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 category">
                <h3 class="banner-title text-white">{{$post->name}}</h3>
                <div class="banner-tagline font-medium text-white">Chúng tôi lập chiến lược, thiết kế & phát triển để tạo ra những sản phẩm có giá trị.</div>
            </div>
        </div>
    </div>
</div>

<div class="full-row pb-30 content_1">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="text-secondary mb-5 post page-content">
                    <h1>{{$post->name}}</h1>
                    <div><i>{!!$post->detail!!}</i></div>
                    <div class="js-table-of-content table-of-content"></div>
                    {!!$post->content!!}
                </div>
            </div>
            <div class="col-lg-3">
                
            </div>
        </div>
    </div>
</div>



@endsection
@section('js')

<script type="text/javascript">
    (function ($) {});
setList();

function setList() {
  var tabId = 0;
  // $(".js-table-of-content").remove();

  var segments = [],
    arrayId = [],
    html =
      '<div class="title-group"><span class="title">MỤC LỤC</span></div><div class="list js-list">';

  $(".page-content h2, .page-content h3").each(function () {
    var data = getData(this, segments),
      hId = "tab" + tabId + "_h" + data.hLevel + segments.join("_");

    // add Level to array
    arrayId.push(data.hLevel);

    // Set data
    segments = data.segments;
    html +=
      '<p class="heading-' +
      data.hLevel +
      '"><a href="#' +
      hId +
      '">' +
      data.hText +
      "</a></p>";

    // Add ID to element
    $(this).attr("id", hId);
  });

  html += "</div>";

  console.log(html);

  // Append to HTML
  if (arrayId.length) {
    $(".js-table-of-content").append(html);
  }
}

// Get data heading
function getData(element, segments) {
  var hLevel = parseInt(element.nodeName.substring(1), 10),
    hIndex = parseInt(element.nodeName.substring(1)) - 1,
    hText = $(element).text();

  // Just found a levelUp event
  if (segments.length - 1 > hIndex) {
    segments = segments.slice(0, hIndex + 1);
  }

  // Just found a levelDown event
  if (segments[hIndex] == undefined) {
    segments[hIndex] = 0;
  }

  // count + 1 at current level
  segments[hIndex]++;

  return {
    hLevel: hLevel,
    hIndex: hIndex,
    hText: hText,
    segments: segments
  };
}
</script>

@endsection