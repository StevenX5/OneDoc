<!-- pre loader area start -->
<div id="loading">
	 <div id="loading-center">
			<div id="loading-center-absolute">
				 <div class="object" id="object_one"></div>
				 <div class="object" id="object_two" style="left:20px;"></div>
				 <div class="object" id="object_three" style="left:40px;"></div>
				 <div class="object" id="object_four" style="left:60px;"></div>
				 <div class="object" id="object_five" style="left:80px;"></div>
			</div>
	 </div>  
</div>
<!-- pre loader area end -->

<!-- back to top start -->
<div class="progress-wrap">
	 <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
			<path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
	 </svg>
</div>
<!-- back to top end -->

<header>
	 <div class="header__area white-bg" id="header-sticky">
			<div class="container">
				 <div class="row align-items-center">
						<div class="col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-6">
							 <div class="logo">
									<a href="{{urlfor "HomeController.Index"}}">
										<img src="/static/assets/img/logo.png" alt="logo">
									</a>
							 </div>
						</div>
						<div class="col-xxl-7 col-xl-7 col-lg-7 d-none d-lg-block">
							 <div class="row">
								 <div class="main-menu col-xxl-6">
										<nav id="mobile-menu">
											 <ul>
													<li {{if eq .ControllerName "HomeController"}}class="active"{{end}}>
															<a href="{{urlfor "HomeController.Index" }}" title={{i18n .Lang "common.home"}}>{{i18n .Lang "common.home"}}</a>
													</li>
													<li {{if eq .ControllerName "BlogController"}}{{if eq .ActionName "List" "Index"}}class="active"{{end}}{{end}}>
															<a href="{{urlfor "BlogController.List" }}" title={{i18n .Lang "common.blog"}}>{{i18n .Lang "common.blog"}}</a>
													</li>
													<li {{if eq .ControllerName "ItemsetsController"}}class="active"{{end}}>
															<a href="{{urlfor "ItemsetsController.Index" }}" title={{i18n .Lang "common.course_book"}}>{{i18n .Lang "common.course_book"}}</a>
													</li>
											 </ul>
										</nav>
								 </div>
								 <div class="sidebar__search-wrapper col-xxl-4 mt-15 mb-15">
										<form action="{{urlfor "SearchController.Index"}}" method="get">
											 <input name="keyword" type="text" placeholder="请输入关键字" value="{{.Keyword}}">
											 <button type="submit"><i class="fal fa-search"></i></button>
										</form>
								 </div>
							 </div>
						</div>
						<div class="col-xxl-2 col-xl-2 col-lg-2 col-md-8 col-6">
							<div class="header__action d-flex align-items-center justify-content-end">
									{{if gt .Member.MemberId 0}}
									<img src="{{cdnimg .Member.Avatar}}" onerror="this.src='{{cdnimg "/static/images/headimgurl.jpg"}}';" class="user-img">
									<div class="main-menu">
										<nav id="mobile-menu">
											 <ul>
													<li class="has-dropdown">
														 <a href="#">{{.Member.Account}}</a>
														 <ul class="submenu">
																<li>
																		<a href="{{urlfor "SettingController.Index"}}" title={{i18n .Lang "common.person_center"}}><i class="fa fa-user" aria-hidden="true"></i> {{i18n .Lang "common.person_center"}}</a>
																</li>
																<li>
																		<a href="{{urlfor "BlogController.ManageList"}}" title={{i18n .Lang "common.my_blog"}}><i class="fa fa-file" aria-hidden="true"></i> {{i18n .Lang "common.my_blog"}}</a>
																</li>
																<li>
																		<a href="{{urlfor "BookController.Index"}}" title={{i18n .Lang "common.my_project"}}><i class="fa fa-book" aria-hidden="true"></i> {{i18n .Lang "common.my_project"}}</a>
																</li>
																{{if eq .Member.Role 0  1}}
																<li>
																		<a href="{{urlfor "ManagerController.Index"}}" title={{i18n .Lang "common.manage"}}><i class="fa fa-university" aria-hidden="true"></i> {{i18n .Lang "common.manage"}}</a>
																</li>
																{{end}}
																<li>
																		<a href="{{urlfor "AccountController.Logout"}}" title={{i18n .Lang "common.logout"}}><i class="fa fa-sign-out"></i> {{i18n .Lang "common.logout"}}</a>
																</li>
														 </ul>
													</li>
											 </ul>
										</nav>
									</div>
									{{else}}
									<div class="d-none d-sm-block">
										<a href="{{urlfor "AccountController.Login"}}" class="m-btn m-btn-2">{{i18n .Lang "common.login"}}</a>
									</div>
									{{end}}
									<div class="sidebar__menu d-lg-none">
										 <div class="sidebar-toggle-btn" id="sidebar-toggle">
												 <span class="line"></span>
												 <span class="line"></span>
												 <span class="line"></span>
										 </div>
								  </div>
							 </div>
						</div>
				 </div>
			</div>
	 </div>
</header>

<!-- sidebar area start -->
<div class="sidebar__area">
	 <div class="sidebar__wrapper">
			<div class="sidebar__close">
				 <button class="sidebar__close-btn" id="sidebar__close-btn">
				 <span><i class="fal fa-times"></i></span>
				 <span>close</span>
				 </button>
			</div>
			<div class="sidebar__content">
				 <div class="logo mb-40">
						<a href="{{urlfor "HomeController.Index"}}">
						<img src="/static/assets/img/logo-white.png" alt="logo">
						</a>
				 </div>
				 <div class="mobile-menu"></div>
			</div>
	 </div>
</div>
<div class="body-overlay"></div>
<!-- sidebar area end -->