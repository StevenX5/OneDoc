<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta name="author" content="Minho" />
    <meta name="keywords" content="{{.Model.BlogTitle}}">
    <meta name="description" content="{{.Model.BlogTitle}}-{{.Description}}">
    <title>{{.Model.BlogTitle}}</title>
		<link href="{{cdncss "/static/editor.md/css/editormd.preview.css"}}" rel="stylesheet">
    <link href="{{cdncss (print "/static/editor.md/lib/highlight/styles/" .HighlightStyle ".css") "version"}}" rel="stylesheet">
		
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
		
		<!-- 以下是有序列表样式重定义(解决不显示数字及行间距的问题) -->
		<style>
			ol li {
				list-style-type: decimal;
				list-style-position: inside;
			}
			ol>li { height: 30px; }
		</style>
</head>

<body>
{{template "widgets/header_new.tpl" .}}
<main>
	<section class="subscribe__area p-relative pt-100 pb-110" data-background="static/assets/img/subscribe-bg.jpg">
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
	
	<section class="page__title-area pt-50">
		<div class="container">
			 <div class="row">
					<div class="col-xxl-12">
						 <div class="page__title-content mb-30">
								<h3 class="page__title">{{.Model.BlogTitle}}</h3>
								<div class="postbox__author-2 mt-20">
									 <ul class="d-flex align-items-center">
											<li>
												 <div class="postbox__author-thumb-2">
														<img src="{{cdnimg .Model.MemberAvatar}}" alt="">
												 </div>
											</li>
											<li>
												 <h6><a href="#">作者</a></h6>
												 <span><a href="#">{{.Model.CreateName}}</a></span>
											</li>
											<li>
												 <h6>发布时间</h6>
												 <span>{{date .Model.Created "Y-m-d H:i:s"}}</span>
											</li>
											<li>
												 <h6>更新时间</h6>
												 <span>{{date .Model.Modified "Y-m-d H:i:s"}}</span>
											</li>
											<!--<li>
												 <h6>阅读次数</h6>
												 <span>{{.Model.ViewCount}}</span>
											</li>-->
									 </ul>
								</div>
						 </div>
					</div>
			
					<div class="col-xxl-12">
						 <div class="postbox__wrapper">
								<!--<div class="postbox__thumb postbox__thumb-2 fix w-img mb-10">
									 <img src="{{cdnimg .Model.Cover}}" alt="{{.Model.BlogTitle}}" onerror="this.src='{{cdnimg "static/images/blog.jpg"}}';">
								</div>-->
								<div class="postbox__details mb-20">
									<div class="markdown-body">
										{{.Content}}
									</div>
								</div>
							</div>
					</div>
				</div>
					
				<div class="row">
					<div class="col-xxl-12">
						 <div class="postbox__wrapper">
								<p>
									<span>{{i18n .Lang "blog.prev"}}&nbsp;</span>
									{{if .Previous}}
											<a href="{{urlfor "BlogController.Index" ":id" .Previous.BlogId}}" title="{{.Previous.BlogTitle}}">{{.Previous.BlogTitle}}
											</a>
									{{else}}
										 {{i18n .Lang "blog.no"}}
									{{end}}
								</p>
								<p>
									<span>{{i18n .Lang "blog.next"}}&nbsp;</span>
									{{if .Next}}
											<a href="{{urlfor "BlogController.Index" ":id" .Next.BlogId}}" title="{{.Next.BlogTitle}}">{{.Next.BlogTitle}}</a>
									{{else}}
											{{i18n .Lang "blog.no"}}
									{{end}}
								</p>
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