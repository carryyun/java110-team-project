<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
<meta charset="UTF-8">

<title>상품등록페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<link href="/css/common.css" rel="stylesheet">



<style>
html {
 font-size: 16px;
}

div.note-editable {
 height: 300px;
}

div#imgBind {
 /* border: 1px solid silver; */
 padding-top: 15px;
 height: 130px;
/*  overflow: visible; */
 display: block;
}

div.row.imgDiv {
 margin-bottom: 10px;
}

#files {
 color: white;
}

.fileImg {
 width: 100px;
 height: 100px;
}

.detailInfo {
 margin-bottom: 10px;
 width: 90px;
}
</style>

</head>
<body>

	<div class="container">
		<div class="row">
			
			<form id="myForm" action="updateProduct.do" method="post" enctype="multipart/form-data">
				<input type="hidden" name="meno" value="${sessionScope.loginUser.no}">
                <input type="hidden" id="deleteFile" name="deleteFile" value="">
                <input type="hidden" id="ptno" name="no" value="${product.no}">
                <input type="hidden" id="secconts" name="secconts" value='${product.conts}'>

				<div class="col-lg-12">
					<div class="row">
						<!-- 상품명 -->

						<div class="col-lg-12" style="margin-top: 10px"> 
                        <h3 style="font-weight: 700">상품 등록</h3><hr color="#FFB53C" style="height:4px;margin-top:10px;margin-bottom:15px"/>
							<div
								style="color: white; background-color: gray; padding: 5px; display: inline; border-radius: 3px;">상품명</div>
							<p>

								<input name="titl" placeholder="상품명을 입력하세요" value="${product.titl}"
									style="width: 100%; height: 50px; font-size: 25px; padding-left: 15px; margin-bottom: 30px" autocomplete="off">
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
											<input type="text" class="detailInfo" id="stock" name="stock" autocomplete="off" value="<fmt:formatNumber value="${product.stock}" groupingUsed="true"/>">
										</div>
									</div>
								</div>
								<div class="col-lg-3 text-left">
									<div class="row">
										<div class="col-lg-12">가격</div>
										<div class="col-lg-12">
											<input type="text" class="detailInfo" name="pric" value="${product.pric}" autocomplete="off"/>
										</div>
									</div>
								</div>
								<div class="col-lg-3 text-left">
									<div class="row">
										<div class="col-lg-12">택배비</div>
										<div class="col-lg-12">
											<input type="text" class="inputid detailInfo" name="deli" value="${product.deli}" autocomplete="off"/>

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
					<textarea id="summernote" name="conts" id="conts" style="position: auto"></textarea>
				</div>

				<div class="col-lg-12">
				    <button class="btn btn-primary inputFile" style="border: none; background-color: #FFB53C">파일 업로드</button>
                    <input type="file" id="files" name="files" class="1" style="position:absolute; width:91px;height:32px ; top:0;  ; opacity: 0;"
                        onChange="fileCheck(this.form.files)" multiple accept="image/*" />
<!-- 					<input type="file" id="files" name="files" multiple accept="image/*" /> -->
					<div id="selectedFiles"></div>
				</div>
				<!-- 등록 취소버튼 -->
				<div class="col-lg-12 text-right">
					<button type="button" id="submitBtn" class="btn btn-primary" style="background-color: #ec5453">등록</button>
					<input type="button" class="btn" onclick="closepage()" value="취소">
				</div>
			</form>
		</div>
	</div>
	
</body>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"
	integrity="sha384-r6jjWwxAypHaESwS5an5J9dkfzwQuKVNV9FZM9B6fnt8PFuY0cVwLhV7BltCZhLy"
	crossorigin="anonymous"></script>
<script src="https://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<script src="https://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<script src="https://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<!-- summernote -->
<script>
    $(document).ready(function() {
        $('#summernote').summernote();
        /* $('div.note-popover.popover.in.note-link-popover.bottom').remove();
        $('div.note-popover.popover.in.note-image-popover.bottom').remove();
        $('div.popover-content.note-children-container').remove();
        $('div.arrow').remove();
        $('div.note-popover.popover.in.note-table-popover.bottom').remove();
        $('a.navbar-brand').css("margin-top", "-45px"); */
        $('#mainNav').css("padding", "0");
        $('#mainNav').css("border", "0");
        $('#mainNav').css("margin-top", "21");
        $('#conts').val('${product.conts}');
        $('div.note-editable').html('${product.conts}');
        
        $("button#submitBtn").click(function(){
			
        	var frm = document.getElementById('myForm');
            frm.method = 'POST';
            frm.enctype = 'multipart/form-data';
          
            var fileData = new FormData(frm);
          
            // ajax
            $.ajax({
                url:'updateProduct.do',
                type:'POST',
                data:fileData,
                async:false,
                cache:false,
                contentType:false,
                processData:false,
                success : function() {
                    swal({
                        text : "상품이 수정되었습니다.",
                        icon : "success",
                        button : "확인",
                    }).then((willDelete) => {
                        if(willDelete){
                            window.close();
                        }
                      });
                    
                }

            });
            
        });
        
        $('div .note-editable').blur(function(){
            $('input#conts').val($('div.note-editable').html());
        });
        loadImg();
    });
</script>

<!-- multiple file input -->
<script>
function fileCheck(file) {
    console.log(file);
    console.log("asd");
    // 사이즈체크
    var maxSize = 10000000; //10MB
    var fileSize = 0;
    // console.log(file[0].size);
    // console.log(file[1].size);
    console.log(file);
    // console.log(file[0].value.size);
    // console.log(file[1].value.size);
    console.log($("#files")[0].files.length);

    // 브라우저 확인
    var browser = navigator.appName;

    // 익스플로러일 경우
    if (browser == "Microsoft Internet Explorer") {
        var oas = new ActiveXObject("Scripting.FileSystemObject");
        fileSize = oas.getFile(file.value).size;

    }
    // 익스플로러가 아닐경우
    else {
        console.log("익스플로러x 실행");
        console.log($("#files")[0].files.length);

        for (var x = 0; x < $("#files")[0].files.length; x++) {
            if ($("#files")[0].files[x].size > 2000000) {
                swal({
                    text : "첨부파일 한장당 사이즈는 2MB 이내로 등록 가능합니다. ",
                    button : "확인"
                });
                console.log("2MB 넘는 파일 이름 : " + file.files[x].name);
                console.log("2MB 넘는 파일 사이즈 : " + file.files[x].size);
                console.log(x);
                //              removeImg(x);
                console.log(file.files[x]);
                file.files[x].remove;
                console.log(file.files[x]);
                //$('#files').html();
                $("#files").val("");
                //$("div#imgDiv" + x).remove();
            } else {
                fileSize += file.files[x].size;
                console.log(file.files[x].size);
            }
            //console.log($("#files").size); 
            //console.log("asdzxc"); 
        }
        console.log("전체 파일 사이즈 : " + fileSize);

        console.log("???");
    }

    console.log("asdasdasd");
    //console.log(fileSize);

    if (fileSize > maxSize) {
        swal({
            text : "첨부파일 전체 사이즈는 10MB 이내로 등록 가능합니다. ",
            button : "확인"
        });
        //alert("첨부파일 사이즈는 10MB 이내로 등록 가능합니다.    ");
        $('#myForm input[type="file"]').val('');
    }

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
                console.log("filesArr[i]="+filesArr[i] +  " ," + i);
                console.log("filesArr[j]="+filesArr[j] +  " ," + j);
                f = filesArr[j];
                html += "<div class='row imgDiv' id='imgDiv"+j + "' style='float:left; margin:5px;'>";
                
                html += "<div class='col-lg-12 px-0'>";
                html += '<img class="fileImg" src=\"' + e.target.result + '\" onclick="removeImg(' + j + ', )">';
                html += "</div>";
                html += "</div>";

                selDiv.innerHTML = html;
                j++;
            }
            reader.readAsDataURL(f);
        }
        selDiv.innerHTML += "</div>";

    }
    function removeImg(no,str) {
       
        event.preventDefault(); /* 스크립트 기본동작 중지 */
        console.log(no);
        console.log(str);
        console.log($("input#deleteFile").val()+str);
        
        $("div#imgDiv" + no).remove();
        $("input#deleteFile").val($("input#deleteFile").val()+str+"&");
    }
    
function loadImg(){
        
        selDiv.innerHTML = "";
        
        var getFile = "${productFiles}";
        
        if(getFile == ""){
            return false;
        }else{
            var html = "";
            
            html += "<div class='col-lg-12' id='imgBind'>";
            <c:forEach items="${productFiles}" var="pf" varStatus="k">
                
                html += "<div class='row imgDiv' id='imgDiv${k.index}' style='float:left; margin:5px;'>";
                
                html += "<div class='col-lg-12 px-0'>";
                html += '<img class="fileImg" id="${pf.pfname}" src=\"${pf.pfname}\" onclick="removeImg(${k.index},id)">';
                html += "</div>";
                html += "</div>";
            </c:forEach>
            
            selDiv.innerHTML = html;
            selDiv.innerHTML += "</div>";
            
            
            }
    }
    
</script>
<script>
function closepage(){
    self.close();   //자기자신창을 닫습니다.
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
</script>
</html>
