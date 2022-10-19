<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{i18n .Lang "project.prj_space_list_of" .Model.ItemName}}</title>
    <meta name="keywords" content="本末书集,区块链知识,区块链社区,区块链博客,区块链文章,区块链教程,区块链,以太坊,智能合约,Solidity,{{.Model.ItemName}}">
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
	<section class="subscribe__area p-relative pt-100 pb-110" data-background="../static/assets/img/subscribe-bg.jpg">
		<div class="container">
			 <!--<div class="row">
					<div class="col-xxl-12">
						 <div class="subscribe__content text-center wow fadeInUp" data-wow-delay=".5s">
								<h3 class="subscribe__title">Have a project? <br> Create your website now.</h3>
								<p>Try our any product for FREE!</p>
								<div class="subscribe__form wow fadeInUp" data-wow-delay=".7s">
									 <form action="#">
											<input type="email" placeholder="Email Address">
											<button type="submit" class="m-btn m-btn-black"><span></span> subscribe </button>
									 </form>
									 <p>Join 20,000+ other creators in our Markit community.</p>
								</div>
						 </div>
					</div>
			 </div>-->
		</div>
  </section>
	
	<section class="trending__area pt-50 pb-50 grey-bg">
		<div class="container">
        <div class="row">
						{{range $index,$item := .Lists}}
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