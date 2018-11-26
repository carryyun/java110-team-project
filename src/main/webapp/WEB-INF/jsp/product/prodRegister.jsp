<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Summernote</title>
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
<style>

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
</style>

</head>
<body>
	<div class="container">
		<div class="row">


			
			<div class="col-lg-12">
			상품이미지
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong>Upload Files</strong> <small>Bootstrap files
							upload</small>
					</div>
					<div class="panel-body">


						<!-- Standar Form -->
						<h4>Select files from your computer</h4>
						<form action="" method="post" enctype="multipart/form-data"
							id="js-upload-form">
							<div class="form-inline">
								<div class="form-group">
									<input type="file" name="files[]" id="js-upload-files" multiple>
								</div>
								<button type="submit" class="btn btn-sm btn-primary"
									id="js-upload-submit">Upload files</button>
							</div>
						</form>

						<!-- Drop Zone -->
						<h4>Or drag and drop files below</h4>
						<div class="upload-drop-zone" id="drop-zone">Just drag and
							drop files here</div>

						<!-- Progress Bar -->
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="60"
								aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
								<span class="sr-only">60% Complete</span>
							</div>
						</div>

						<!-- Upload Finished -->
						<div class="js-upload-finished">
							<h3>Processed files</h3>
							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-success"><span
									class="badge alert-success pull-right">Success</span>image-01.jpg</a>
								<a href="#" class="list-group-item list-group-item-success"><span
									class="badge alert-success pull-right">Success</span>image-02.jpg</a>
							</div>
						</div>
					</div>

				</div>
				<!-- /container -->





            <p><input placeholder="상품명을 입력하세요" style="width :100%; height:50px; font-size: 25px" ></p>


			</div>

           
			<div class="col-lg-12">
			 상품소개
				<div id="summernote" style="position: auto">
					<p>Hello Summernote</p>
				</div>
			</div>


		</div>
		
    가격 <input type="number"><br>
    택배비 <input type="number">
    무료배송 <input type="checkbox">
	</div>
	
</body>

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
</html>