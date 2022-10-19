<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{i18n .Lang "blog.blog_list"}} - {{.SITE_NAME}}</title>
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
	
	<section class="product__area pt-50 pb-50">
		<div class="container">
			 <div class="row">
					<!--sidebar strat-->
					<!--<div class="col-xxl-4 col-xl-4 col-lg-4 order-lg-first order-last">
						<div class="product__sidebar mr-30">
							<div class="product__sidebar-widget  white-bg mb-30">
									<div class="sidebar__widget mb-30">
										<div class="sidebar__widget-title">
											 <h3>分类 Category</h3>
										</div>
										<div class="sidebar__widget-content">
											 <div class="sidebar__catagory">
													<ul>
														 <li><a href="#">全部<span style="float:right">32</span></a></li>
														 <li><a href="#">未分类<span style="float:right">12</span></a></li>
														 <li><a href="#">区块链<span style="float:right">16</span></a></li>
														 <li><a href="#">人工智能<span style="float:right">25</span></a></li>
													</ul>
											 </div>
										</div>
								 </div>
							</div>
							<a href="#"><img class="sidebar-img" src="/static/assets/img/aliyun-sidebar.png"></a>
						</div>
					</div>-->
					<!--sidebar end-->
					
					<div class="col-xxl-12 col-xl-12 col-lg-12">
            <div class="row">
							{{range $index,$item := .Lists}}
							<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6">
								 <div class="product__item white-bg mb-30 wow fadeInUp" data-wow-delay=".3s">
										<div class="product__thumb">
											 <div class="product__thumb-inner fix w-img">
													<a href="{{urlfor "BlogController.Index" ":id" $item.BlogId}}">
														<img src="{{cdnimg $item.Cover}}" class="book-cover" alt="{{$item.BlogTitle}}" onerror="this.src='{{cdnimg "static/images/blog.jpg"}}';">
													</a>
											 </div>
										</div>
										<div class="product__content">
											 <!--<div class="product__meta mb-10 d-flex justify-content-between align-items-center">
													<div class="product__tag">
														 <a href="#">{{$item.CreateName}}</a>
													</div>
													<div class="product__author">
														 <span>{{date_format $item.Modified "2006-01-02"}}</span>
													</div>
											 </div>-->
											 <h3 class="product__title">
													<a href="{{urlfor "BlogController.Index" ":id" $item.BlogId}}">{{$item.BlogTitle}}</a>
											 </h3>
										</div>
								 </div>
							</div>
							{{end}}
							<div class="clearfix"></div>
							<nav class="basic-pagination wow fadeInUp text-center" data-wow-delay=".2s">
							{{.PageHtml}}
							</nav>
						</div>
					</div>
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