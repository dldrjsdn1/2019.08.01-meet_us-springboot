<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Meet us</title>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<!-- 주소 값 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/meeting.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Meeting</h1>
				<p class="breadcrumbs">
					<span class="mr-2"> <a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a>
					</span> <span class="mr-2">Meeting <i
							class="ion-ios-arrow-forward"></i>
					</span>
				</p>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section" style="padding: 2em 0;">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading">Meet Us</span>
				<p class="jg" style="font-size: 30px;">Meeting Image Add</p>
			</div>
		</div>
		<div class="row"></div>
	</div>
	</section>

	<div class="container">
		<div class="comment-form-wrap">
				<div class="p-5 bg-light">
					<div class="col-md-12">
						<p>
							<a href="javascript:" class="btn btn-primary py-3 px-4"
								onclick="fileUploadAction();"
								style="width: 100%;">이미지 선택하기</a>
						</p>
						<input type="file" id="input_imgs" name="input_imgs" multiple />
					</div>
					<!-- 					<div class="input_wrap"> -->
					<!-- 						<a href="javascript:" onclick="fileUploadAction();" class="my_button">파일 업로드</a>  -->
					<!-- 						<input type="file" id="input_imgs" name="input_imgs" multiple/> -->
					<!-- 					</div> -->
				
				
				<h3 style="margin-top:3rem;">Image PreView</h3>
				<p style="font-size:14px;">*이미지 클릭시 삭제</p>
				<div class="card">
					<div class="imgs_wrap">
						<img id="img" />
					</div>
				</div>
				
				<a href="javascript:" class="btn btn-primary py-3 px-4"
								onclick="fileSaveClick();"
								style="width: 100%; margin-top:3rem;background: #e8705e;">선택 완료</a>
								
				</div>
		</div>
	</div>
	
<script type="text/javascript">
$("#input_imgs").hide();
	function cencle_click(){
		location.href="../";
	}
	
	//사진 미리 보기
	var sel_files=[];

	$(document).ready(function(){
		$("#input_imgs").on("change", handleImgFileSelect);
	});

	function fileUploadAction(){
		
	 	console.log("fileUploadAction");
	 	$("#input_imgs").trigger('click');
	}

	function handleImgFileSelect(e){
		//이미지 정보 초기화 (https://greatps1215.tistory.com/5)
		sel_files = [];
		$(".imgs_wrap").empty();
		
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		var index = 0;
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
// 				alert("확장자는 이미지 확장자만 가능합니다.");
				swal("이미지","이미지가 아닙니다.","error");
				return ;
			}
			sel_files.push(f);
			
			var reader = new FileReader();
			reader.onload = function(e){
				var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img style='width:200px; height:200px; margin:1rem;' src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
				$(".imgs_wrap").append(html);
				index++;
			}
			reader.readAsDataURL(f);
			
		});
	}

	function deleteImageAction(index){
		console.log("index : "+index);
		sel_files.splice(index, 1);
		
		var img_id = "#img_id_" +index;
		$(img_id).remove();
		
		console.log(sel_files);
	}
	
	function fileSaveClick(){
		var ImageData = new FormData();
		var MB_NO = ${MB_NO};
		
		if(sel_files.length == 0)
			swal("이미지","이미지가 없습니다.", "error");
		else{
		for(var i=0; i < sel_files.length; i++){
			var name = "image_"+i;
			ImageData.append(name, sel_files[i]);
		}
		ImageData.append("image_count", sel_files.length);
		ImageData.append("MB_NO", MB_NO);
 		$.ajax({
 		    type: "POST",
 		    url : "/MeetingImageInsertAction",
 		    data : ImageData,
 		    contentType : false,
 		   	processData: false,
//  		   	dataType: "text",
 		    success : function(){
 		    	swal("성공", "성공적으로 이미지를 등록했습니다.", "success")
 		    	.then((value) => { location.href="../MeeterDetail?MB_NO=${MB_NO}" })
 		    },error : function(){
 		    	swal("실패", "안타깝게도 이미지를 등록하지 못했습니다.", "error");
 		    }
 		});
	}
	}
</script>


</body>

</html>