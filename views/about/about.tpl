<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{i18n .Lang "common.about"}} - {{.SITE_NAME}}</title>
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
	
	<section class="postbox__area pt-50 pb-50 grey-bg">
		<div class="container">
			 <div class="row">
					<div class="col-xxl-3 col-xl-3 col-lg-3">
							<div class="blog__sidebar mb-30">
								<div class="sidebar__widget mb-30">
									<div class="sidebar__widget-title">
										 <h3>{{i18n .Lang "common.about"}}</h3>
									</div>
									<div class="sidebar__widget-content">
										 <div class="sidebar__catagory">
												<ul>
													 <li><a href="{{urlfor "AboutController.License"}}">{{i18n .Lang "common.license"}}</a></li>
													 <li><a href="{{urlfor "AboutController.Support"}}">{{i18n .Lang "common.support"}}</a></li>
													 <li><a href="{{urlfor "AboutController.About"}}"><span style="color:#5f3afc">{{i18n .Lang "common.about"}}</span></a></li>
													 <li><a href="{{urlfor "AboutController.Contact"}}">{{i18n .Lang "common.contact"}}</a></li>
												</ul>
										 </div>
									</div>
								</div>
							</div>
					</div>
					<div class="col-xxl-9 col-xl-9 col-lg-9 pl-50">
						 <div class="postbox__wrapper">
								<div class="postbox__details text-center mb-30">
									 <h4>{{i18n .Lang "common.about"}}</h4>
								</div>
								<div class="postbox__details mb-30">
									 <p>本末书集（www.benmo.cc），是一个区块链知识中文社区。我们致力于区块链知识的分享与传播，希望给区块链爱好者提供一个学习区块链知识的平台。</p>
									 <p>区块链领域的发展日新月异，我们深知仅仅依靠我们自身的力量是不够的。因此，我们希望更多人参与进来，共同打造这个区块链知识社区。如果你有兴趣参与社区建设，且具备一定的专业特长，欢迎<span class="highlight"><a href="{{urlfor "AboutController.Contact"}}"> 联系我们</a></span>。</p>
								</div>
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