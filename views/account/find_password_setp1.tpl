<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="{{cdnimg "/static/favicon.ico"}}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="MinDoc" />
    <title>{{i18n .Lang "common.account_recovery"}}</title>

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
		<div class="container">
			 <div class="row">
					<div class="col-xxl-6 offset-xxl-3 col-xl-6 offset-xl-3 col-lg-8 offset-lg-2">
						 <div class="sign__wrapper white-bg">
								<div class="sign__form">
									 <form role="form" method="post" id="findPasswordForm">
											<div class="sign__input-wrapper mb-15">
												 <h5>{{i18n .Lang "common.email"}}</h5>
												 <div class="sign__input">
														<input type="text" name="email" id="email" placeholder="{{i18n .Lang "common.email"}}">
														<i class="fal fa-envelope"></i>
												 </div>
											</div>
											<div class="sign__input-wrapper mb-30">
												 <h5>{{i18n .Lang "common.captcha"}}</h5>
												 <div class="sign__input" style="float:left;width:180px">
														<input type="text" name="code" id="code" maxlength=4 placeholder="{{i18n .Lang "common.captcha"}}">
														<i class="fal fa-check-square"></i>
												 </div>
												 <img id="captcha-img" style="width:150px;height:50px;display:inline-block;float:right" src="{{urlfor "AccountController.Captcha"}}" onclick="this.src='{{urlfor "AccountController.Captcha"}}?key=login&t='+(new Date()).getTime();" title={{i18n .Lang "message.click_to_change"}}>
												 <div class="clearfix"></div>
											</div>
											<button class="m-btn m-btn-4 w-100" id="btnSendMail">{{i18n .Lang "common.account_recovery"}}</button>
									 </form>
								</div>
						 </div>
					</div>
			 </div>
		</div>
	</section>
</main>
{{template "widgets/footer_new_fixed.tpl" .}}

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

<!-- ajaxForm-->
<script src="{{cdnjs "/static/js/jquery.form.js"}}" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $("#findPasswordForm").ajaxForm({
            beforeSubmit : function () {
                var email = $.trim($("#email").val());
                if(email === ""){
 										toastr.options = {
											closeButton: true,
											positionClass: "toast-top-center",
											timeOut: "2000"
										};
										toastr.error({{i18n .Lang "message.email_empty"}});
										$("#email").focus();
                    return false;
                }
                var code = $.trim($("#code").val());
                if(code === ""){
										toastr.options = {
											closeButton: true,
											positionClass: "toast-top-center",
											timeOut: "2000"
										};
										toastr.error({{i18n .Lang "message.captcha_empty"}});
										$("#code").focus();
                    return false;
                }
                $("#btnSendMail").button("loading");
            },
            success : function (res) {
                if(res.errcode !== 0){
                    $("#captcha-img").click();
                    $("#code").val('');
										toastr.options = {
											closeButton: true,
											positionClass: "toast-top-center",
											timeOut: "2000"
										};
										toastr.error(res.message);
                }else{
                    alert("{{i18n .Lang "message.email_sent"}}")
                    window.location = res.data;
                }
            },
            error :function () {
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
    });
</script>
</body>
</html>