<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{i18n .Lang "blog.blog_setting"}}</title>

    <!-- Bootstrap -->
    <link href="{{cdncss "/static/bootstrap/css/bootstrap.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/font-awesome/css/font-awesome.min.css"}}" rel="stylesheet">
		<link href="{{cdncss "/static/webuploader/webuploader.css"}}" rel="stylesheet">
		<link href="{{cdncss "/static/cropper/2.3.4/cropper.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/css/main.css" "version"}}" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/static/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="/static/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="manual-reader">
{{template "widgets/header.tpl" .}}
    <div class="container manual-body">
        <div class="row">
            <div class="page-left">
                <ul class="menu">
                    <li {{if eq .ControllerName "BookController"}}class="active"{{end}}><a href="{{urlfor "BookController.Index"}}" class="item"><i class="fa fa-sitemap" aria-hidden="true"></i> {{i18n .Lang "common.my_project"}}</a> </li>
                    <li {{if eq .ControllerName "BlogController"}}class="active"{{end}}><a href="{{urlfor "BlogController.ManageList"}}" class="item"><i class="fa fa-file" aria-hidden="true"></i> {{i18n .Lang "common.my_blog"}}</a> </li>
                </ul>
            </div>
            <div class="page-right">
                <div class="m-box">
                    <div class="box-head">
                        <strong class="box-title"> {{i18n .Lang "blog.blog_setting"}}</strong>
                    </div>
                </div>
                <div class="box-body" style="padding-right: 200px;">
									<div class="form-left">
                    <form method="post" id="gloablEditForm" action="{{urlfor "BlogController.ManageSetting"}}">
                        <input type="hidden" name="id" id="blogId" value="{{.Model.BlogId}}">
                        <input type="hidden" name="identify" value="{{.Model.BlogIdentify}}">
                        <input type="hidden" name="document_id" value="{{.Model.DocumentId}}">
                        <input type="hidden" name="order_index" value="{{.Model.OrderIndex}}">
                        <div class="form-group">
                            <label>{{i18n .Lang "blog.title"}}</label>
                            <input type="text" class="form-control" name="title" id="title" placeholder="{{i18n .Lang "blog.title"}}" value="{{.Model.BlogTitle}}">
                        </div>


                        <div class="form-group">
                            <label>{{i18n .Lang "blog.type"}}</label>
                            <div class="radio">
                                <label class="radio-inline">
                                    <input type="radio" {{if eq .Model.BlogType 0}}checked{{end}} name="blog_type" value="0">{{i18n .Lang "blog.normal_blog"}}<span class="text"></span>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" {{if eq .Model.BlogType 1}}checked{{end}} name="blog_type" value="1">{{i18n .Lang "blog.link_blog"}}<span class="text"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group" id="blogLinkDocument"{{if ne .Model.BlogType 1}} style="display: none;" {{end}}>
                            <label>{{i18n .Lang "blog.ref_doc"}}</label>
                            <div class="row">
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="{{i18n .Lang "message.input_proj_id_pls"}}" name="bookIdentify" value="{{.Model.BookIdentify}}">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="{{i18n .Lang "message.input_doc_id_pls"}}" name="documentIdentify" value="{{.Model.DocumentIdentify}}">
                                </div>
                            </div>

                        </div>
                        <div class="form-group">
                            <label>{{i18n .Lang "blog.blog_status"}}</label>
                            <div class="radio">
                                <label class="radio-inline">
                                    <input type="radio" {{if eq .Model.BlogStatus "public"}}checked{{end}} name="status" value="public">{{i18n .Lang "blog.public"}}<span class="text"></span>
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" {{if eq .Model.BlogStatus "password"}}checked{{end}} name="status" value="password">{{i18n .Lang "blog.encryption"}}<span class="text"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group"{{if eq .Model.BlogStatus "public"}} style="display: none;"{{end}} id="blogPassword">
                            <label>{{i18n .Lang "blog.blog_pwd"}}</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="{{i18n .Lang "blog.blog_pwd"}}" value="{{.Model.Password}}" maxlength="20">
                        </div>
                        <div class="form-group">
                            <label>{{i18n .Lang "blog.blog_digest"}}</label>
                            <textarea rows="3" class="form-control" name="excerpt" style="height: 90px" placeholder="{{i18n .Lang "blog.blog_digest"}}">{{.Model.BlogExcerpt}}</textarea>
                            <p class="text">{{i18n .Lang "message.blog_digest_tips"}}</p>
                        </div>

                        <div class="form-group">
                            <button type="submit" id="btnSaveBlogInfo" class="btn btn-success" data-loading-text="{{i18n .Lang "message.processing"}}">{{i18n .Lang "common.save"}}</button>
                            <a href="{{.Referer}}" title="{{i18n .Lang "doc.backward"}}" class="btn btn-info">{{i18n .Lang "doc.backward"}}</a>
                            <span id="form-error-message" class="error-message"></span>
                        </div>
                    </form>
									</div>
									<div class="form-right">
											<label>
													<a href="javascript:;" data-toggle="modal" data-target="#upload-logo-panel">
															<img src="{{cdnimg .Model.Cover}}" onerror="this.src='{{cdnimg "/static/images/blog.jpg"}}'" alt="{{i18n $.Lang "blog.cover"}}" style="max-width: 120px;border: 1px solid #999" id="headimgurl">
													</a>
											</label>
											<p class="text">点击图片修改文章封面</p>
									</div>
                  <div class="clearfix"></div>

                </div>
            </div>
        </div>
    </div>
<!--{{template "widgets/footer.tpl" .}}-->
</div>

<!-- Start Modal -->
<div class="modal fade" id="upload-logo-panel" tabindex="-1" role="dialog" aria-labelledby="{{i18n $.Lang "blog.change_cover"}}" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">{{i18n $.Lang "blog.change_cover"}}</h4>
            </div>
            <div class="modal-body">
                <div class="wraper">
                    <div id="image-wraper">

                    </div>
                </div>
                <div class="watch-crop-list">
                    <div class="preview-title">{{i18n $.Lang "blog.preview"}}</div>
                    <ul>
                        <li>
                            <div class="img-preview preview-lg"></div>
                        </li>
                        <li>
                            <div class="img-preview preview-sm"></div>
                        </li>
                    </ul>
                </div>
                <div style="clear: both"></div>
            </div>
            <div class="modal-footer">
                <span id="error-message"></span>
                <div id="filePicker" class="btn">{{i18n $.Lang "blog.choose"}}</div>
                <button type="button" id="saveImage" class="btn btn-success" style="height: 40px;width: 77px;" data-loading-text="{{i18n $.Lang "blog.processing"}}">{{i18n $.Lang "blog.upload"}}</button>
            </div>
        </div>
    </div>
</div>
<!--END Modal-->

<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/webuploader/webuploader.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/cropper/2.3.4/cropper.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/js/jquery.form.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/js/main.js"}}" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("#gloablEditForm").ajaxForm({
            beforeSubmit : function () {
                var title = $.trim($("#title").val());

                if (title === ""){
                    return showError("{{i18n .Lang "message.blog_title_empty"}}");
                }
                $("#btnSaveBlogInfo").button("loading");
            },success : function ($res) {
                if($res.errcode === 0) {
                    showSuccess("{{i18n .Lang "message.success"}}");
                    $("#blogId").val($res.data.blog_id);
                }else{
                    showError($res.message);
                }
                $("#btnSaveBlogInfo").button("reset");
            }, error : function () {
                showError("{{i18n .Lang "message.system_error"}}");
                $("#btnSaveBlogInfo").button("reset");
            }
        }).find("input[name='status']").change(function () {
           var $status = $(this).val();
           if($status === "password"){
               $("#blogPassword").show();
           }else{
               $("#blogPassword").hide();
           }
        });
        $("#gloablEditForm").find("input[name='blog_type']").change(function () {
            var $link = $(this).val();
            if($link == 1){
                $("#blogLinkDocument").show();
            }else{
                $("#blogLinkDocument").hide();
            }
        });
				
				// 上传封面
				try {
            var uploader = WebUploader.create({
                auto: false,
                swf: '{{.BaseUrl}}/static/webuploader/Uploader.swf',
                server: '{{urlfor "BlogController.UploadCover"}}',
                formData : { "identify" : {{.Model.BlogIdentify}} },
                pick: "#filePicker",
                fileVal : "image-file",
                fileNumLimit : 1,
                compress : false,
                accept: {
                    title: 'Images',
                    extensions: 'jpg,jpeg,png',
                    mimeTypes: 'image/jpg,image/jpeg,image/png'
                }
            }).on("beforeFileQueued",function (file) {
                uploader.reset();
            }).on( 'fileQueued', function( file ) {
                uploader.makeThumb( file, function( error, src ) {
                    $img = '<img src="' + src +'" style="max-width: 360px;max-height: 360px;">';
                    if ( error ) {
                        $img.replaceWith('<span>{{i18n $.Lang "message.cannot_preview"}}</span>');
                        return;
                    }

                    $("#image-wraper").html($img);
                    window.ImageCropper = $('#image-wraper>img').cropper({
                        aspectRatio: 300 / 180,
                        dragMode : 'move',
                        viewMode : 1,
                        preview : ".img-preview"
                    });
                }, 1, 1 );
            }).on("uploadError",function (file,reason) {
                console.log(reason);
                $("#error-message").text("{{i18n $.Lang "message.upload_failed"}}:" + reason);

            }).on("uploadSuccess",function (file, res) {

                if(res.errcode === 0){
                    console.log(res);
                    $("#upload-logo-panel").modal('hide');
                    $("#headimgurl").attr('src',res.data);
                }else{
                    $("#error-message").text(res.message);
                }
            }).on("beforeFileQueued",function (file) {
                if(file.size > 1024*1024*2){
                    uploader.removeFile(file);
                    uploader.reset();
                    alert("{{i18n $.Lang "message.upload_file_size_limit"}}");
                    return false;
                }
            }).on("uploadComplete",function () {
                $("#saveImage").button('reset');
            });
            $("#saveImage").on("click",function () {
                var files = uploader.getFiles();
                if(files.length > 0) {
                    $("#saveImage").button('loading');
                    var cropper = window.ImageCropper.cropper("getData");
                    uploader.option("formData", cropper);
                    uploader.upload();
                }else{
                    alert("{{i18n $.Lang "message.choose_pic_file"}}");
                }
            });
        }catch(e){
            console.log(e);
        }
    });
</script>
</body>
</html>