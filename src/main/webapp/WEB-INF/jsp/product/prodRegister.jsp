<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">

<title>상품등록페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

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
html {
	font-size: 16px;
}

div.note-editable {
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

.detailInfo {
	margin-bottom: 10px;
	width: 90px;
}
</style>



</head>
<body>

	<div class="container">
		<h2>Modal Example</h2>
		<!-- Button to Open the Modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">Open modal</button>

		<!-- The Modal -->
		<div class="modal" id="myModal">
			<div class="modal-dialog modal-lg" style="width: 60%;">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">상품등록하기</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">

						<div class=" modal-body col-lg-12">
							<div class="row">

								<form id="myForm" action="addProduct.do" method="post"
									enctype="multipart/form-data">
									<input type="hidden" name="ctno" value="${ctno}"> <input
										type="hidden" name="meno" value="${sessionScope.loginUser.no}">


									<div class="col-lg-12">
										<div class="row">
											<!-- 상품명 -->

											<div class="col-lg-12" style="margin-top: 10px">

												<div
													style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품명</div>
												<p>

													<input name="titl" placeholder="상품명을 입력하세요"
														style="width: 100%; height: 50px; font-size: 25px; padding-left: 15px">
												</p>
											</div>
											<!-- </div class="col-lg-12"> -->
										</div>
										<!-- </div class="row">  -->
									</div>
									<!-- </div class="col-lg-12"> -->

									<div class="col-lg-12 mt-3">

										<div
											style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품명</div>

										<div class="col-lg-12" style="border: 1px solid #ccc; margin-top: 1px;">
											<div class="row">

												<!-- summernote -->
												<div class="col-lg-12 px-0" style="margin-top: 15px">

													<!-- 가격, 택배비(무료배송), 인증서  -->
													<div class="col-lg-3 text-left">
														<div class="row">
															<div class="col-lg-12">재고</div>
															<div class="col-lg-12">
																<input type="text" class="detailInfo" id="stock"
																	name="stock">
															</div>
														</div>
													</div>
													<div class="col-lg-3 text-left">
														<div class="row">
															<div class="col-lg-12">가격</div>
															<div class="col-lg-12">
																<input type="text" class="detailInfo" name="pric">
															</div>
														</div>
													</div>
													<div class="col-lg-3 text-left">
														<div class="row">
															<div class="col-lg-12">택배비</div>
															<div class="col-lg-12">
																<input type="text" class="inputid detailInfo"
																	name="deli" />

															</div>
														</div>
													</div>



													<div class="col-lg-3 text-left">
														<div class="row">
															<div class="col-lg-12">
																무료배송<input type='checkbox' data-toggle='inputid' />
															</div>
															<div class="col-lg-12">

																소분류 <select name="stno">
																	<c:forEach items="${stagList}" var="sl">
																		<option value="${sl.no}">${sl.name}</option>
																	</c:forEach>
																</select>
															</div>
														</div>
													</div>
													<!-- </div class="col-lg-12" style="margin-top: 30px"> -->
												</div>
												<!-- </div class="row"> -->
											</div>
											<!-- </div class="col-lg-12"> -->


										</div>
									</div>
									<!--</div class="col-lg-12"> -->
									<div class="col-lg-12">
										<br>
										<div
											style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품소개</div>
										<textarea id="summernote" name="conts" style="position: auto"></textarea>
									</div>

									<div class="col-lg-12">
										<input type="file" id="files" name="files" multiple
											accept="image/*" />
										<div id="selectedFiles"></div>

									</div>
									<!-- 등록 취소버튼 -->
									<div class="col-lg-12 text-right">
										<input type="submit" class="btn btn-primary" value="등록"
											style="background-color: #ec5453"> <input
											type="button" class="btn" onclick="test()" value="취소">
									</div>
								</form>
							</div>
							<!-- </div class="row"> -->
						</div>
						<!-- </div class="container"> -->

					</div>
					<!-- 모달바디끝 -->

				</div>
			</div>
		</div>

	</div>

	<footer>
		<div class="col px-0">
			<jsp:include page="../footer.jsp"></jsp:include>
		</div>
	</footer>
</body>

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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<!-- summernote -->
<script>
    $(document).ready(function() {
        $('#summernote').summernote();
        $('div.note-popover.popover.in.note-link-popover.bottom').remove();
        $('div.note-popover.popover.in.note-image-popover.bottom').remove();
        $('div.popover-content.note-children-container').remove();
        $('div.arrow').remove();
        $('div.note-popover.popover.in.note-table-popover.bottom').remove();
        $('a.navbar-brand').css("margin-top", "-45px");
        $('#mainNav').css("padding", "0");
        $('#mainNav').css("border", "0");
        $('#mainNav').css("margin-top", "21");
    });
</script>

<!-- multiple file input -->
<script>
    function test() {

    }
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
                if (j < filesArr.length - 1) {
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



<!-- checkbox disable input -->
<script>
    function toggle(target) {
        var toggle = $(target).data("toggle");
        if (toggle) {
            var obj = $("." + toggle);
            if (target.checked) {
                obj.attr("disabled", "disabled");
                $('.inputid').val("");

            } else {
                obj.removeAttr("disabled");
            }
        }
    }
    $("input:checkbox").each(function() {
        toggle(this);
    }).on('input', function() {
        toggle(this);
    });

    function addProduct(no) {
        /* var titl = $('input:text#titl').val(); */
        var conts = $('#summernote').summernote('code');
        /* var stock = $('input:text#stock').val();
        var pric = $('input:text#pric').val();
        var deli = $('input:text#deli').val(); */
        var ctno = $
        {
            ctno
        }
        ;

        console.log(titl);
        console.log(conts);
        console.log(stock);
        console.log(pric);
        console.log(deli);
        console.log(ctno);
        if (titl == "" || conts == "") {
            swal({
                title : "필수 항목을 입력하지 않으셨습니다.",
                button : "확인"
            })
        } else {
            $.ajax({
                type : "POST",
                data : {
                    "titl" : titl,
                    "conts" : conts,
                    "stock" : stock,
                    "pric" : pric,
                    "deli" : deli,
                    "meno" : no,
                    "ctno" : ctno,
                    "stno" : 1,
                    "phot" : "phot"
                },
                url : "addProduct.do",
                success : function(result) {

                    $.ajax({
                        type : "POST",
                        processData : false,
                        contentType : false,
                        data : formData,
                        url : "addProductFile.do",
                        success : function() {
                            swal({
                                title : "상품이 등록되었습니다",
                                text : "뭐라써",
                                icon : "success",
                                button : "확인",
                            })
                        },
                        error : function(error, status) {
                            console.log(error);
                            console.log(status);
                        }
                    });
                    /* location.href="detail?no="+${detailclass.no}; */
                },
                error : function(error, status) {
                    console.log(error);
                    console.log(status);
                }
            });
        }
    }

    </html>
