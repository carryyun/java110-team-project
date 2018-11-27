<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>상품등록페이지</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<link href="/css/common.css" rel="stylesheet">

<!-- blueimp Gallery styles -->
<link rel="stylesheet" href="https://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="/css/fileUpload/jquery.fileupload.css">
<link rel="stylesheet" href="/css/fileUpload/jquery.fileupload-ui.css">
<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript><link rel="stylesheet" href="/css/fileUpload/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="/css/fileUpload/jquery.fileupload-ui-noscript.css"></noscript>


<style>
.note-editable {
	height: 300px;
}
/* layout.css Style */
.upload-drop-zone {
	height: 200px;
	border-width: 2px;
	margin-bottom: 20px;
}

/* skin.css Style*/
.upload-drop-zone {
	color: #ccc;
	border-style: dashed;
	border-color: #ccc;
	line-height: 200px;
	text-align: center
}

.upload-drop-zone.drop {
	color: #222;
	border-color: #222;
}

/* div 안에 placeholder쓰기 위해*/
[contenteditable=true]:empty:before {
	content: attr(placeholder);
}
</style>

</head>
<body>
	<div class="container">
		<div class="row">

            <div class="col-lg-12">
            
            <!-- https://jquery-file-upload.appspot.com/ -->
            <form id="fileupload" action="test" method="POST" enctype="multipart/form-data" data-ng-app="demo" data-ng-controller="DemoFileUploadController" data-file-upload="options" data-ng-class="{'fileupload-processing': processing() || loadingFiles}">
        <!-- Redirect browsers with JavaScript disabled to the origin page -->
        <noscript><input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-Upload/"></noscript>
        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
        <div class="row fileupload-buttonbar">
            <div class="col-lg-7">
                <!-- The fileinput-button span is used to style the file input field as button -->
                <span class="btn btn-success fileinput-button" ng-class="{disabled: disabled}">
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Add files...</span>
                    <input type="file" name="files" multiple ng-disabled="disabled">
                </span>
                <button type="button" class="btn btn-primary start" data-ng-click="submit()">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start upload</span>
                </button>
                <button type="button" class="btn btn-warning cancel" data-ng-click="cancel()">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel upload</span>
                </button>
                <!-- The global file processing state -->
                <span class="fileupload-process"></span>
            </div>
            <!-- The global progress state -->
            <div class="col-lg-5 fade" data-ng-class="{in: active()}">
                <!-- The global progress bar -->
                <div class="progress progress-striped active" data-file-upload-progress="progress()"><div class="progress-bar progress-bar-success" data-ng-style="{width: num + '%'}"></div></div>
                <!-- The extended global progress state -->
                <div class="progress-extended">&nbsp;</div>
            </div>
        </div>
        <!-- The table listing the files available for upload/download -->
        <table class="table table-striped files ng-cloak">
            <tr data-ng-repeat="file in queue" data-ng-class="{'processing': file.$processing()}">
                <td data-ng-switch data-on="!!file.thumbnailUrl">
                    <div class="preview" data-ng-switch-when="true">
                        <a data-ng-href="{{file.url}}" title="{{file.name}}" download="{{file.name}}" data-gallery><img data-ng-src="{{file.thumbnailUrl}}" alt=""></a>
                    </div>
                    <div class="preview" data-ng-switch-default data-file-upload-preview="file"></div>
                </td>
                <td>
                    <p class="name" data-ng-switch data-on="!!file.url">
                        <span data-ng-switch-when="true" data-ng-switch data-on="!!file.thumbnailUrl">
                            <a data-ng-switch-when="true" data-ng-href="{{file.url}}" title="{{file.name}}" download="{{file.name}}" data-gallery>{{file.name}}</a>
                            <a data-ng-switch-default data-ng-href="{{file.url}}" title="{{file.name}}" download="{{file.name}}">{{file.name}}</a>
                        </span>
                        <span data-ng-switch-default>{{file.name}}</span>
                    </p>
                    <strong data-ng-show="file.error" class="error text-danger">{{file.error}}</strong>
                </td>
                <td>
                    <p class="size">{{file.size | formatFileSize}}</p>
                    <div class="progress progress-striped active fade" data-ng-class="{pending: 'in'}[file.$state()]" data-file-upload-progress="file.$progress()"><div class="progress-bar progress-bar-success" data-ng-style="{width: num + '%'}"></div></div>
                </td>
                <td>
                    <button type="button" class="btn btn-primary start" data-ng-click="file.$submit()" data-ng-hide="!file.$submit || options.autoUpload" data-ng-disabled="file.$state() == 'pending' || file.$state() == 'rejected'">
                        <i class="glyphicon glyphicon-upload"></i>
                        <span>Start</span>
                    </button>
                    <button type="button" class="btn btn-warning cancel" data-ng-click="file.$cancel()" data-ng-hide="!file.$cancel">
                        <i class="glyphicon glyphicon-ban-circle"></i>
                        <span>Cancel</span>
                    </button>
                    <button data-ng-controller="FileDestroyController" type="button" class="btn btn-danger destroy" data-ng-click="file.$destroy()" data-ng-hide="!file.$destroy">
                        <i class="glyphicon glyphicon-trash"></i>
                        <span>Delete</span>
                    </button>
                </td>
            </tr>
        </table>
        <input type="file" name="f1">
        <input type="submit" value="보내기">
    </form>
            
            
            
            </div>



			<div class="col-lg-12">
				<div style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품소개</div>
				<p>
					<input placeholder="상품명을 입력하세요"
						style="width: 100%; height: 50px; font-size: 25px">
				</p>
			</div><!-- </div class="col-lg-12"> -->

			<!-- summernote -->
			<div class="col-lg-12">
				<!-- 밑에 div에  class="category-list" <<이거생략함 -->
				<div
					style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품소개</div>
				<div id="summernote" style="position: auto">
					<div contenteditable="true" placeholder="이곳에 내용을 입력해주세요."></div>
				</div>

				<!-- 가격, 택배비(무료배송), 인증서  -->
				<div>
					가격　 <input type="text" style="margin-bottom: 10px"><br>
					<form>
						택배비 <input name="textbox" type="text" style="margin-bottom: 10px">
						무료배송<input name="chkbox" type="checkbox"
							onClick="checkDisable(this.form)">
					</form>
					인증서 <select name="cert">
						<c:forEach items="${certList}" var="cl">
							<option value="">${cl.classes.titl}</option>
						</c:forEach>
					</select>
				</div>
			</div> <!-- </div class="col-lg-12"> -->
		</div><!-- </div class="row"> -->

		<!-- 등록 취소버튼 -->
		<div class="text-right">
			<input type="submit" value="등록"> <input type="reset"
				value="취소">
		</div>
		
	</div> <!-- </div class="container"> -->

	<footer>
		<div class="col px-0">
			<jsp:include page="../footer.jsp"></jsp:include>
		</div>
	</footer>


</body>


<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha384-xBuQ/xzmlsLoJpyjoggmTEz8OWUFM0/RC5BsqQBDX2v5cMvDHcMakNTNrHIW2I5f" crossorigin="anonymous"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js" integrity="sha384-r6jjWwxAypHaESwS5an5J9dkfzwQuKVNV9FZM9B6fnt8PFuY0cVwLhV7BltCZhLy" crossorigin="anonymous"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="/js/fileUpload/vendor/jquery.ui.widget.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="https://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="https://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
<!-- blueimp Gallery script -->
<script src="https://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="/js/fileUpload/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="/js/fileUpload/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="/js/fileUpload/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="/js/fileUpload/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="/js/fileUpload/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="/js/fileUpload/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="/js/fileUpload/jquery.fileupload-validate.js"></script>
<!-- The File Upload Angular JS module -->
<script src="/js/fileUpload/jquery.fileupload-angular.js"></script>
<!-- The main application script -->
<script src="/js/fileUpload/app.js"></script>



<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
</script>
<script>

$(document).ready(function() {
    $('#summernote').summernote();
});

function($) {
    'use strict';

    // UPLOAD CLASS DEFINITION
    // ======================

    var dropZone = document.getElementById('drop-zone');
    var uploadForm = document.getElementById('js-upload-form');

    var startUpload = function(files) {
        console.log(files)
    }

    uploadForm.addEventListener('submit', function(e) {
        var uploadFiles = document.getElementById('js-upload-files').files;
        e.preventDefault()

        startUpload(uploadFiles)
    })

    dropZone.ondrop = function(e) {
        e.preventDefault();
        this.className = 'upload-drop-zone';

        startUpload(e.dataTransfer.files)
    }

    dropZone.ondragover = function() {
        this.className = 'upload-drop-zone drop';
        return false;
    }

    dropZone.ondragleave = function() {
        this.className = 'upload-drop-zone';
        return false;
    }

}(jQuery);
</script>

<script language="javascript">

function checkDisable(frm)
{
    if( frm.chkbox.checked == true ){
       frm.textbox.disabled = true;
    } else 
    {
       frm.textbox.disabled = false;
    }
}
</script>

</html>