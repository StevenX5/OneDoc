<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{i18n .Lang "search.title"}} - {{.SITE_NAME}}</title>
    <meta name="keywords" content="">
    <meta name="description" content="{{.site_description}}">
		
		<!-- 新样式 -->
		<link rel="stylesheet" href="/static/assets/css/preloader.css">
		<link rel="stylesheet" href="/static/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="/static/assets/css/slick.css">
		<link rel="stylesheet" href="/static/assets/css/meanmenu.css">
		<link rel="stylesheet" href="/static/assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="/static/assets/css/animate.min.css">
		<link rel="stylesheet" href="/static/assets/css/backToTop.css">
		<link rel="stylesheet" href="/static/assets/css/jquery.fancybox.min.css">
		<link rel="stylesheet" href="/static/assets/css/fontAwesome5Pro.css">
		<link rel="stylesheet" href="/static/assets/css/elegantFont.css">
		<link rel="stylesheet" href="/static/assets/css/default.css">
		<link rel="stylesheet" href="/static/assets/css/style.css">
		<link rel="stylesheet" href="/static/assets/css/my.css">
</head>

<body>
{{template "widgets/header_new.tpl" .}}
<main>
	<section class="subscribe__area p-relative pt-100 pb-110" data-background="/static/assets/img/subscribe-bg.jpg">
		<div class="container">
			 <!--<div class="row">
					<div class="col-xxl-12">
						 <div class="subscribe__content text-center wow fadeInUp" data-wow-delay=".5s">
								<h3 class="subscribe__title">Have a project? <br> Create your website now.</h3>
						 </div>
					</div>
			 </div>-->
		</div>
  </section>
	
	<section class="product__area pt-50 pb-50" style="min-height:400px">
		<div class="container">
				<div class="row">
					{{range $index,$item := .Lists}}
					<div class="trending__item d-sm-flex mb-30 wow fadeInUp" data-wow-delay=".3s">
						<div class="trending__thumb mr-25">
							 {{if eq $item.SearchType "document"}}
							 <div class="trending__thumb-inner fix">
									<a href="{{urlfor "DocumentController.Read" ":key" $item.BookIdentify ":id" $item.Identify}}" target="_blank">
										 <img class="search-img" src="{{cdnimg $item.Cover}}" alt="{{$item.DocumentName}}" onerror="this.src='{{cdnimg "static/images/blog.jpg"}}';">
									</a>
							 </div>
							 {{else if eq $item.SearchType "book"}}
							 <div class="trending__thumb-inner fix">
									<a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}" target="_blank">
										 <img class="search-img" src="{{cdnimg $item.Cover}}" alt="{{$item.BookName}}" onerror="this.src='{{cdnimg "static/images/blog.jpg"}}';">
									</a>
							 </div>
							 {{else}}
							 <div class="trending__thumb-inner fix">
									<a href="{{urlfor "BlogController.Index" ":id" $item.DocumentId}}" target="_blank">
										 <img class="search-img" src="{{cdnimg $item.Cover}}" alt="{{$item.DocumentName}}" onerror="this.src='{{cdnimg "static/images/blog.jpg"}}';">
									</a>
							 </div>
							 {{end}}
						</div>
						<div class="trending__content">
							 {{if eq $item.SearchType "document"}}
							 <h3 class="trending__title"><a href="{{urlfor "DocumentController.Read" ":key" $item.BookIdentify ":id" $item.Identify}}" title="{{$item.DocumentName}}" target="_blank">{{str2html $item.DocumentName}}</a></h3>
							 <p>{{str2html $item.Description}}</p>
							 <p style="color:#999">
									{{i18n $.Lang "search.from_proj"}}：<a href="{{urlfor "DocumentController.Index" ":key" $item.BookIdentify}}" target="_blank">{{$item.BookName}}</a>
									&nbsp;&nbsp;&nbsp;&nbsp;<span>{{i18n $.Lang "search.update_time"}}：{{date_format  $item.ModifyTime "2006-01-02 15:04:05"}}</span>
							 </p>
							 <div class="trending__meta d-flex justify-content-between">
									<div class="trending__tag"><a href="#">{{i18n $.Lang "search.doc"}}</a></div>
							 </div>
							 {{else if eq $item.SearchType "book"}}
							 <h3 class="trending__title"><a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}" title="{{$item.BookName}}" target="_blank"> {{str2html $item.DocumentName}}</a></h3>
							 <p>{{str2html $item.Description}}</p>
							 <p style="color:#999">
									{{i18n $.Lang "search.prj"}}：<a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}" target="_blank">{{$item.BookName}}</a>
									&nbsp;&nbsp;&nbsp;&nbsp;<span>{{i18n $.Lang "search.update_time"}}：{{date_format  $item.ModifyTime "2006-01-02 15:04:05"}}</span>
							 </p>
							 <div class="trending__meta d-flex justify-content-between">
									<div class="trending__tag"><a href="#">{{i18n $.Lang "search.prj"}}</a></div>
							 </div>
							 {{else}}
							 <h3 class="trending__title"><a href="{{urlfor "BlogController.Index" ":id" $item.DocumentId}}" title="{{$item.DocumentName}}" target="_blank"> {{str2html $item.DocumentName}}</a></h3>
							 <p>{{str2html $item.Description}}</p>
							 <p style="color:#999">
									{{i18n $.Lang "search.from_blog"}}：<a href="{{urlfor "BlogController.Index" ":id" $item.DocumentId}}" target="_blank">{{$item.BookName}}</a>
									&nbsp;&nbsp;&nbsp;&nbsp;<span>{{i18n $.Lang "search.update_time"}}：{{date_format  $item.ModifyTime "2006-01-02 15:04:05"}}</span>
							 </p>
							 <div class="trending__meta d-flex justify-content-between">
									<div class="trending__tag"><a href="#">{{i18n $.Lang "search.blog"}}</a></div>
							 </div>
							 {{end}}
						</div>
				  </div>
					{{else}}
					<div class="text-center">
							<img src="{{cdnimg "/static/images/search_empty.png"}}" class="empty-image">
							<br><br>
							<div>{{i18n .Lang "search.no_result"}}</div>
					</div>
					{{end}}
					<div class="clearfix"></div>
						<nav class="basic-pagination wow fadeInUp text-center" data-wow-delay=".2s">
						{{.PageHtml}}
					</nav>
			 </div>
		</div>
  </section>
</main>
{{template "widgets/footer_new.tpl" .}}

<!-- 新 js 库 -->
<script src="/static/assets/js/vendor/jquery-3.5.1.min.js"></script>
<script src="/static/assets/js/vendor/waypoints.min.js"></script>
<script src="/static/assets/js/bootstrap.bundle.min.js"></script>
<script src="/static/assets/js/jquery.meanmenu.js"></script>
<script src="/static/assets/js/slick.min.js"></script>
<script src="/static/assets/js/jquery.fancybox.min.js"></script>
<script src="/static/assets/js/isotope.pkgd.min.js"></script>
<script src="/static/assets/js/parallax.min.js"></script>
<script src="/static/assets/js/owl.carousel.min.js"></script>
<script src="/static/assets/js/backToTop.js"></script>
<script src="/static/assets/js/jquery.counterup.min.js"></script>
<script src="/static/assets/js/ajax-form.js"></script>
<script src="/static/assets/js/wow.min.js"></script>
<script src="/static/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="/static/assets/js/main.js"></script>
{{.Scripts}}
</body>
</html>