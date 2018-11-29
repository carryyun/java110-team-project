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


<style>
.note-editable {
	height: 300px;
}

div#imgBind {
	border: 2px solid silver;
	padding-top: 15px;
	height: 300px;
	overflow: auto;
	display: block;
}

div.row.imgDiv {
	margin-bottom: 15px;
}

#files {
	color: white;
}

.fileImg {
	width: 120px;
	height: 70px;
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
		
		<!-- 상품명 -->
            <div class="col-lg-12" style="margin-top: 30px">
                <div
                    style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품명</div>
                <p>
                    <input placeholder="상품명을 입력하세요"
                        style="width: 100%; height: 50px; font-size: 25px">
                </p>
            </div>
            <!-- </div class="col-lg-12"> -->
		

            <!-- file input -->
			<div class="col-lg-12">
				<form id="myForm" action="test" method="post"
					enctype="multipart/form-data">

					<input type="file" id="files" name="files" multiple
						accept="image/*"><br />

					<div id="selectedFiles"></div>

					<!-- 위치라눙 -->
					<input type="submit" value="보내기">
				</form>

			</div>


			


			<!-- summernote -->
			<div class="col-lg-12" style="margin-top: 30px">
				<!-- 밑에 div에  class="category-list" <<이거생략함 -->
				<div
					style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품소개</div>
				<div id="summernote" style="position: auto">
					<div contenteditable="true" placeholder="이곳에 내용을 입력해주세요."></div>
				</div>

				<!-- 가격, 택배비(무료배송), 인증서  -->
				<div>
				       재고　 <input type="text" style="margin-bottom: 10px"><br>      
				          
					가격　 <input type="text" style="margin-bottom: 10px"><br>
					<form>
						택배비 <input name="textbox" type="text" style="margin-bottom: 10px">
						무료배송<input name="chkbox" type="checkbox"
							onClick="checkDisable(this.form)">
					</form>
					소분류 <select name="cert">
						<c:forEach items="${stagList}" var="sl">
							<option value="">${sl.name}</option>
						</c:forEach>
					</select>
					
					<%-- 소분류 <select name="cert">
                        <c:forEach items="${certList}" var="cl">
                            <option value="">${cl.classes.titl}</option>
                        </c:forEach>
                    </select> --%>
				</div>
			</div>
			<!-- </div class="col-lg-12"> -->
		</div>
		<!-- </div class="row"> -->

		<!-- 등록 취소버튼 -->
		<div class="text-right">

			<input type="submit" value="등록"> <input type="reset"
				value="취소">
		</div>


	</div>
	<!-- </div class="container"> -->

	<footer>
		<div class="col px-0">
			<jsp:include page="../footer.jsp"></jsp:include>
		</div>
	</footer>

</body>


<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha384-xBuQ/xzmlsLoJpyjoggmTEz8OWUFM0/RC5BsqQBDX2v5cMvDHcMakNTNrHIW2I5f" crossorigin="anonymous"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"
	integrity="sha384-r6jjWwxAypHaESwS5an5J9dkfzwQuKVNV9FZM9B6fnt8PFuY0cVwLhV7BltCZhLy"
	crossorigin="anonymous"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script
	src="https://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script
	src="https://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
<!-- blueimp Gallery script -->
<script
	src="https://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->





<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });

    function checkDisable(frm) {
        if (frm.chkbox.checked == true) {
            frm.textbox.disabled = true;
        } else {
            frm.textbox.disabled = false;
        }
    }
</script>
<script>
    var selDiv = "";

    document.addEventListener("DOMContentLoaded", init, false);

    function init() {
        document.querySelector('#files').addEventListener('change',
                handleFileSelect, false);
        selDiv = document.querySelector("#selectedFiles");
    }

    function handleFileSelect(e) {

        if (!e.target.files || !window.FileReader)
            return;

        selDiv.innerHTML = "";

        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);
        var html = "";
        html += "<div class='col-lg-12' id='imgBind'>";
        for (var i = 0; i < filesArr.length; i++) {

            var f = files[i];
            if (!f.type.match("image.*")) {
                return;
            }
            var j = 0;
            var reader = new FileReader();
            reader.onload = function(e) {
                f = filesArr[j];
                console.log(f);
                console.log(e);
                html += "<div class='row imgDiv' id='imgDiv"+j + "'>";

                html += "<div class='col-lg-5'>";
                html += "<img class='fileImg' src=\"" + e.target.result + "\">";
                html += "</div>";

                html += "<div class='col-lg-3'>";
                html += f.name + "<br clear=\"left\"/>";
                html += "</div>";

                html += "<div class='col-lg-2'>";
                var kb = (f.size / 1024);
                html += kb.toFixed(2) + "kb <br clear=\"left\"/>";
                html += "</div>";

                html += "<div class='col-lg-2'>";
                html += "<button onclick='removeImg(" + j + ")'>" + "삭제"
                        + "</button>";
                html += "</div>";
                if (j < filesArr.length-1) {
                    html += "<div class='col-lg-12'>";
                    html += "<hr>";
                    html += "</div>";

                }
                html += "</div>";

                selDiv.innerHTML = html;
                j++;
            }
            reader.readAsDataURL(f);
        }
        selDiv.innerHTML += "</div>";

    }
    function removeImg(no) {
        event.preventDefault(); /* 스크립트 기본동작 중지 */
        console.log(no);
        $("div#imgDiv" + no).remove();
    }
</script>
</html>