<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<head>
<title>Meet us</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_4.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Notice</h1>
				<p class="breadcrumbs">
					<span class="mr-2"><a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="../Notice">Notice <i class="ion-ios-arrow-forward"></i></a></span>
					<span>Notice Detail<i class="ion-ios-arrow-forward"></i></span>
				</p>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 ftco-animate">
				<!-- 제목 -->
				<h2 class="mb-3">${ detail.board_title}</h2>

				<!-- 내용 -->
				<p>${detail.board_content }</p>
				<div class="tag-widget post-tag-container mb-5 mt-5">
					<div class="tagcloud">
						<a href="../NoticeModify?board_no=${detail.board_no}"
							class="tag-cloud-link">MODIFY</a> <a
							href="../NoticeDelete?board_no=${detail.board_no}"
							class="tag-cloud-link">DELETE</a> <a
							href="../NoticeList?board_no=${detail.board_no}"
							class="tag-cloud-link float-right">목록</a>
					</div>
				</div>

				<!-- <label for="content">comment</label> -->
				<form name="commentInsertForm">
					<div class="input-group">
						<input type="hidden" name="board_no" value="${detail.board_no}" />
						<textarea name="reply_memo" id="reply_memo" rol="20"
							class="form-control tag-cloud-link" required
							onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"
							style="display: -webkit-inline-box; width: 94%; word-wrap: break-word;"
							placeholder="댓글을 달아주세요."></textarea>
						<input type="button" value="입력" name="commentInsertBtn"
							class="btn py-1 px-2 btn-primary float-right"
							style="padding-bottom: 0.75rem !important; padding-top: 0.75rem !important;" />
					</div>
				</form>

				<div class="container">
					<div class="pt-5 mt-5">
						<!-- 총 댓글 수 받는 부분 -->
						<h3 class="mb-5">
							<div class="commentCount">commentCount</div>
						</h3>

						<!-- 댓글 리스트 받는 부분 -->
						<ul class="comment-list">
							<div class="commentList">commentList</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> <circle
			class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4"
			stroke="#eeeeee" /> <circle class="path" cx="24" cy="24" r="22"
			fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
		</svg>
	</div>
</body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
  
   $(document).ready(function(){
         commentList();
     });

   /* 댓글 등록 버튼 클릭시, 제일 먼저 들어옴 */
   $('[name=commentInsertBtn]').click(function(){
      /* input 타입이 submit이 아닌 button이므로 required가 먹히지 않는다. 그래서 분기절으로 처리함 */
        if($('[name=reply_memo]').val()==''){    // 1. 아무것도 입력하지 않았을 때 
           alert('한 글자 이상의 댓글을 작성해주세요.');
        }else{                            	// 2. 한 글자라도 입력 하였을 때 ( 
          var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
         // alert('등록 버튼 잘 눌림');
          commentInsert(insertData); //Insert 함수호출(아래)
        } 
   });

   /* 댓글 목록 */
   function commentList(){
        $.ajax({
            url : '/ReplyList?board_no='+${detail.board_no},
            type : 'GET',
            success : function(data){
            commentCount(); // 덧글 총 개수 띄우기. 리스트 뿌릴때 같이 뿌려줘야댐
             let a ='';
             $.each(data, function(key, value){
                
                a += '<li class="comment">';
                  a += '<div class="vcard bio">';
                     a += '<img src="resources/images/person_1.jpg" alt="Image placeholder">';
                  a += '</div>';
                     a += '<div class="comment-body tagcloud">';
                          a += '<h3>'+value.user_id+'</h3>';
                          if(value.reply_insertdate == value.reply_modifydate){
                          a += '<div class="meta">'+value.reply_insertdate+'</div>';
                          }else{
                          a += '<div class="meta">'+value.reply_modifydate+' (수정됨)</div>';
                          }
                    	 var data = value.reply_memo.replace(/(?:\r\n|\r|\n)/g, '<br>');
                      	 a += '<div style="word-wrap:break-word; " class="commentContent'+value.reply_no+'"> <p>'+data+'</p>';
                         a += '<p><a class="tag-cloud-link" onclick="commentUpdate('+value.reply_no+',\''+data+'\');">MODIFY</a>&nbsp';
                    a += '<a class="tag-cloud-link" onclick="commentDelete('+value.reply_no+');">DELETE</a></p>';
               a += '</div>';
               a += '</li>';
             });
             $(".commentList").html(a);
            },error: function (request, status, error){
            alert(status);
            }
        });
   }
   
   /* 총 댓글 개수 띄우기 */
   function commentCount(){
        $.ajax({
            url : '/ReplyCount?board_no='+${detail.board_no},
            type : 'GET',
            success : function(data){
                let a ='<span>'+data+' Comments<span>';
                $(".commentCount").html(a);
            },error: function (request, status, error){
            alert(status);
            }
        });
   }
   
    /* 댓글 등록 */
     function commentInsert(insertData){
        $.ajax({
            url : '/ReplyInsert',
             type : 'GET',
             data : insertData,
             success : function(data){
                 if(data == 1) {
                     commentList(); // 댓글 작성 후 댓글 리스트 다시 띄우는 작업
                    $('[name=reply_memo]').val('');
                 }
             },error: function (request, status, error){
              alert(status);
             }
         });
     }

     /* 댓글 수정 : 댓글 입력  폼으로 바꾸는 함수 */ 
   function commentUpdate(reply_no, reply_memo){
        var a ='';
        var data = reply_memo.split('<br>').join("\r\n");

      a += '<div class="input-group">';
      a += '<textarea rol="20" class="form-control tag-cloud-link" name="content_'+reply_no+'" required onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" style="display: -webkit-inline-box; width: 94%; white-space:pre;">'+data+'</textarea>';
       a += '<input type="button" onclick="commentUpdateProc('+reply_no+');" value="수정" class="btn py-1 px-2 btn-primary float-right" style="padding-bottom: 0.75rem !important; padding-top: 0.75rem !important;">';
         a += '</div>';
      
         $('.commentContent'+reply_no).html(a);
     }

     /* 댓글 수정 */
     function commentUpdateProc(reply_no){
         var modified_reply_memo = $('[name=content_'+reply_no+']').val();
      $.ajax({
             url : '/ReplyModify',
             type : 'GET',
             data : {'reply_memo' : modified_reply_memo, 'reply_no' : reply_no},
             success : function(data){
                 if(data == 1) 
                    commentList(); //댓글 수정후 리스트 출력 
             },error: function (request, status, error){
             alert(status);
            }
         });
     }
   
   /* 댓글 삭제 */ 
   function commentDelete(reply_no){
      $.ajax({
         url : '/ReplyDelete',
         type : 'GET',
         data : {'reply_no' : reply_no},
         success : function(data){
            if(data == 1) 
               commentList(); // 댓글 삭제후 리스트 출력 
         },error: function (request, status, error){
            alert(status);
         }
      });
   }
   
   </script>
</html>