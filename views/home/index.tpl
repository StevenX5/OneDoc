<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>{{.SITE_NAME}} - 区块链知识中文社区</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta name="author" content="Minho" />
    <meta name="keywords" content="本末书集,区块链知识,区块链社区,区块链博客,区块链文章,区块链教程,区块链,以太坊,智能合约,Solidity">
    <meta name="description" content="本末书集——区块链知识中文社区 {{.site_description}}">
 
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
					<div class="col-xxl-12 banner-fixed">
						 <div class="subscribe__content text-center wow fadeInUp" data-wow-delay=".8s">
								<h3 class="subscribe__title" style="font-size:26px">OneDoc<br><br>项目文档资料协同管理系统</h3>
						 </div>
					</div>
			 </div>-->
		</div>
  </section>
	
	<section class="product__area pt-50 pb-10">
		<div class="container">
			 <div class="row align-items-end">
					<div class="col-xxl-6 col-xl-6 col-lg col-md-8">
						 <div class="section__title-wrapper mb-30">
								<h3>最新文章</h3>
								<div class="section-line"></div>
						 </div>
					</div>
			 </div>
			 <div class="row">
					{{range $index,$item := .BlogLists}}
					<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6">
						 <div class="product__item white-bg mb-30 wow fadeInUp" data-wow-delay=".3s">
								<div class="product__thumb">
									 <div class="product__thumb-inner fix w-img">
											<a href="{{urlfor "BlogController.Index" ":id" $item.BlogId}}">
												<img src="{{cdnimg $item.Cover}}" class="blog-cover" alt="{{$item.BlogTitle}}" onerror="this.src='{{cdnimg "static/images/blog.jpg"}}';">
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
			 </div>
		</div>
  </section>
				 
	<section class="trending__area pt-10 pb-50">
		<div class="container">
			 <div class="row align-items-end">
					<div class="col-xxl-6 col-xl-6 col-lg col-md-8">
						 <div class="section__title-wrapper mb-30">
								<h3>最新教程</h3>
								<div class="section-line"></div>
						 </div>
					</div>
			 </div>
			 <div class="row">
					{{range $index,$item := .BookLists}}
					<div class="col-xxl-3 col-xl-3 col-lg-3 col-md-6">
						 <div class="product__item white-bg mb-30 wow fadeInUp" data-wow-delay=".3s">
								<div class="product__thumb">
									 <div class="product__thumb-inner fix w-img">
											<a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}">
												<img src="{{cdnimg $item.Cover}}" class="book-cover" alt="{{$item.BookName}}" onerror="this.src='{{cdnimg "static/images/book.jpg"}}';">
											</a>
									 </div>
								</div>
								<div class="product__content">
									 <h3 class="product__title name-line-1">
											<a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}">{{$item.BookName}}</a>
									 </h3>
								</div>
						 </div>
					</div>
					{{end}}
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