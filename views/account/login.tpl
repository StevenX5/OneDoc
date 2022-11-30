<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="{{cdnimg "/static/favicon.ico"}}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="MinDoc" />
    <title>{{i18n .Lang "common.login"}}</title>
    <meta name="keywords" content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
		
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
		<link rel="stylesheet" href="/static/assets/css/toastr.min.css">
</head>

<body class="grey-bg">
{{template "widgets/header_new.tpl" .}}
<main>
	<section class="signup__area po-rel-z1 pt-60 pb-60">
		<!--<div class="sign__shape">
			 <img class="man-1" src="/static/assets/img/icon/sign/man-1.png" alt="">
			 <img class="man-2" src="/static/assets/img/icon/sign/man-2.png" alt="">
			 <img class="circle" src="/static/assets/img/icon/sign/circle.png" alt="">
			 <img class="zigzag" src="/static/assets/img/icon/sign/zigzag.png" alt="">
			 <img class="dot" src="/static/assets/img/icon/sign/dot.png" alt="">
			 <img class="bg" src="/static/assets/img/icon/sign/sign-up.png" alt="">
		</div>-->
		<div class="container">
			 <div class="row">
					<div class="col-xxl-6 offset-xxl-3 col-xl-6 offset-xl-3 col-lg-8 offset-lg-2">
						 <div class="sign__wrapper white-bg">
								<div class="sign__form">
									 <form role="form" method="post">
											<div class="sign__input-wrapper mb-15">
												 <h5>{{i18n .Lang "common.account"}}</h5>
												 <div class="sign__input">
														<input type="text" name="account" id="account" placeholder="{{i18n .Lang "common.email"}} / {{i18n .Lang "common.username"}}">
														<i class="fal fa-user"></i>
												 </div>
											</div>
											<div class="sign__input-wrapper mb-15">
												 <h5>{{i18n .Lang "common.password"}}</h5>
												 <div class="sign__input">
														<input type="password" name="password" id="password" placeholder="{{i18n .Lang "common.password"}}">
														<i class="fal fa-lock"></i>
												 </div>
											</div>
											{{if .ENABLED_CAPTCHA }}
											<div class="sign__input-wrapper mb-15">
												 <h5>{{i18n .Lang "common.captcha"}}</h5>
												 <div class="sign__input" style="float:left;width:180px">
														<input type="text" name="code" id="code" maxlength=4 placeholder="{{i18n .Lang "common.captcha"}}">
														<i class="fal fa-check-square"></i>
												 </div>
												 <img id="captcha-img" style="width:150px;height:50px;display:inline-block;float:right" src="{{urlfor "AccountController.Captcha"}}" onclick="this.src='{{urlfor "AccountController.Captcha"}}?key=login&t='+(new Date()).getTime();" title={{i18n .Lang "message.click_to_change"}}>
												 <div class="clearfix"></div>
											</div>
											{{end}}
											<div class="sign__action d-sm-flex justify-content-between mb-30">
												 <div class="sign__agree d-flex align-items-center">
														<input class="m-check-input" type="checkbox" id="m-agree">
														<label class="m-check-label" for="m-agree">{{i18n .Lang "common.keep_login"}}</label>
												 </div>
												 <div class="sign__forgot">
														<a href="{{urlfor "AccountController.FindPassword"}}">{{i18n .Lang "common.forgot_password"}}</a>
												 </div>
											</div>
											<button class="m-btn m-btn-4 w-100" id="btn-login">{{i18n .Lang "common.login"}}</button>
											{{if .ENABLED_REGISTER}}
											{{if ne .ENABLED_REGISTER "false"}}
											<div class="sign__new text-center mt-20">
												 <p>{{i18n .Lang "message.no_account_yet"}}<a href="{{urlfor "AccountController.Register" }}">{{i18n .Lang "common.register"}}</a></p>
											</div>
											{{end}}
											{{end}}
									 </form>
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
<script src="/static/assets/js/toastr.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
         $("#btn-login").on('click', function () {
            var account = $.trim($("#account").val());
            var password = $.trim($("#password").val());
            var code = $.trim($("#code").val());

            if (account === "") {
								toastr.options = {
									closeButton: true,
									positionClass: "toast-top-center",
									timeOut: "2000"
								};
								toastr.error({{i18n .Lang "message.account_empty"}});
								$("#account").focus();
                return false;
            } else if (password === "") {
								toastr.options = {
									closeButton: true,
									positionClass: "toast-top-center",
									timeOut: "2000"
								};
								toastr.error({{i18n .Lang "message.password_empty"}});
								$("#password").focus();
                return false;
            } else if (code !== undefined && code === "") {
								toastr.options = {
									closeButton: true,
									positionClass: "toast-top-center",
									timeOut: "2000"
								};
								toastr.error({{i18n .Lang "message.captcha_empty"}});
								$("#code").focus();
                return false;
            } else {
                $.ajax({
                    url: "{{urlfor "AccountController.Login" "url" .url}}",
                    data: $("form").serializeArray(),
                    dataType: "json",
                    type: "POST",
                    success: function (res) {
                        if (res.errcode !== 0) {
                            $("#captcha-img").click();
                            $("#code").val('');
														toastr.options = {
															closeButton: true,
															positionClass: "toast-top-center",
															timeOut: "2000"
														};
														toastr.error(res.message);
                        } else {
                            turl = res.data;
                            if (turl === "") {
                                turl = "/";
                            }
                            window.location = turl;
                        }
                    },
                    error: function () {
                        $("#captcha-img").click();
                        $("#code").val('');
												toastr.options = {
													closeButton: true,
													positionClass: "toast-top-center",
													timeOut: "2000"
												};
												toastr.error({{i18n .Lang "message.system_error"}});
                    }
                });
            }

            return false;
        });
    });
</script>
</body>
</html>