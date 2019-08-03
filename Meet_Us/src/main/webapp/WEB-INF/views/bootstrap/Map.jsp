<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <title>Meet Us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap {position:relative;width:100%;height:350px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:70%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:20px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
</style>


  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">Map</h1>
            <p class="breadcrumbs">
					<span class="mr-2"><a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span>Map<i
						class="ion-ios-arrow-forward"></i></span>
				</p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
		<div class="row">
			<div class="col-lg-8 ftco-animate">
				<div id="map"></div>
			</div>

			<div class="col-lg-4 sidebar ftco-animate">
				<div class="sidebar-box">
					<form action="#" class="search-form">
						<div class="form-group">
							<span class="icon icon-search" onclick="SearchPlace()" style="cursor: pointer;"></span> <input type="text" id="SearchPlaceId"
								class="form-control" placeholder="Place Searching" onkeydown="JavaScript:Enter_Check()" >
						</div>
					</form>
				</div>
				<div class="sidebar-box ftco-animate">
					<h3 class="heading-sidebar"><strong>Meeters & Address</strong></h3>
					<ul class="categories">
						<li id="Location0">장소<span></span></a></li>
						<li id="Location1">장소<span></span></a></li>
						<li id="Location2">장소<span></span></a></li>
						<li id="Location3">장소<span></span></a></li>
						<li id="Location4">장소<span></span></a></li>
					</ul>

					<div class="comment-form-wrap pt-5">
							<div class="form-group">
								<button type="button"  onclick="starting_meeter_click();"
									class="btn py-3 px-4 btn-primary"  style="width:100%;">Starting Meeting</button>
							</div>
					</div>
					<div class="comment-form-wrap pt-5">
						<div class="form-group">
							<button type="button" onclick="location.href='../Map'"
								class="btn py-3 px-4 btn-dark" style="width: 100%;">Reset</button>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
    </section> 
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
    
    
   	<!-- kakao map api & lib -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8c106edb300bf0777e34f3e2bd20cf0d&libraries=services,clusterer,drawing"></script>
	<script>
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
	contentNode = document.createElement('div'); // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
	
	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'placeinfo_wrap';
	
	// 커스텀 오버레이 컨텐츠를 설정합니다
	placeOverlay.setContent(contentNode);  

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	function SearchPlace(){
	var place = document.getElementById('SearchPlaceId').value;
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(); 

	// 키워드로 장소를 검색합니다
	ps.keywordSearch(place, placesSearchCB); 

	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new kakao.maps.LatLngBounds();

	        for (var i=0; i<data.length; i++) {
	            displayMarker(data[i]);    
	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	        }       

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    } 
	}

	// 지도에 마커를 표시하는 함수입니다
	function displayMarker(place) {
	    
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: new kakao.maps.LatLng(place.y, place.x) 
	    });

	    // 마커에 클릭이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'click', function() {

		var content = '<div class="placeinfo">'
											+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
											+ place.place_name + '</a>';

									if (place.road_address_name) {
										content += '    <span title="' + place.road_address_name + '">'
												+ place.road_address_name 
												+ '</span>'
												+ '  <span class="jibun" title="' + place.address_name + '">(지번 : '
												+ place.address_name 
												+ ')</span>';
									} else {
										content += '    <span title="' + place.address_name + '">'
												+ place.address_name 
												+ '</span>';
									}

									content += '    <span class="tel">'
											+ place.phone + '</span>';
											
									content += '<button type="button" onclick="save_click('+"'"+ place.place_name +"'"+","+"'"+ place.y+"'"+","+"'"+ place.x+"'"+');" class="btn btn-success btn-sm" style="margin-left:26.5%; margin-top:10px;">저장</button>'
											+ '<button type="button" onclick="close_window();" class="btn btn-dark btn-sm" style="margin-left:5%; margin-top:10px;">닫기</button>'
											+ '</div>'
											+ '<div class="after"></div>';
											
// 									// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
// 									infowindow.setContent(content);
// 									infowindow.open(map, marker);
									
									placeOverlay.setMap(null);
									contentNode.innerHTML = content;
								    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
								    placeOverlay.setMap(map);
								    
								    
								});
			}
		}
	

	</script>
	
	<script>
	//닫기 버튼
	function close_window() {        
 	placeOverlay.setMap(null); 
	}
	</script>


	<script type="text/javascript">
	 var names = new Array();
	 var nameCnt = 0;
	 var placey = new Array();
	 var placex = new Array();

	function save_click(name, placeY, placeX) {
		alert("저장되었습니다.");
		
		if(nameCnt <= 4){
			names.push(name);
			placey.push(placeY);
			placex.push(placeX);
			nameCnt++;
		}else{
			alert("지정 주소가 너무 많습니다.");
		}
		
		for(var i=0; i<nameCnt; i++){
		document.getElementById("Location"+i).innerHTML= names[i];
		}
	}
	</script>
	
	
	<script type="text/javascript">
		function Enter_Check() {
			// 엔터키의 코드는 13입니다.
			if (event.keyCode == 13) {
				SearchPlace();
			}
		}
	</script>
	
	
<!--  	meeter 버튼 클릭 이벤트    -->
	<script> 
	function starting_meeter_click(){ 
		
	var map1 = new kakao.maps.Map(mapContainer, mapOption);  // 지도를 생성합니다
	
	// 	중심좌표
	var centerY = 0;
	var centerX = 0;
	
	// 마커 이미지의 이미지 주소입니다 
	var imageSrc = "resources/images/map-marker-icon.png";  
	
	for (var i = 0; i < nameCnt; i++) { 
	
	    // 마커 이미지의 이미지 크기 입니다 
	    var imageSize = new kakao.maps.Size(29, 35);  
	
	    // 마커 이미지를 생성합니다     
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);  
	    
	    var latlng = new kakao.maps.LatLng(placey[i], placex[i]); 
	    var title = names[i]; 
	    
	    //중심좌표 구하기
	    centerY += placey[i]*1;
	    centerX += placex[i]*1;

	    // 마커를 생성합니다 
	    var marker = new kakao.maps.Marker({ 
	        map: map1, // 마커를 표시할 지도 
	        position: latlng, // 마커를 표시할 위치 
	        title : title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 
	        image : markerImage // 마커 이미지  
	    }); 
	}
	

		// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			// LatLngBounds 객체에 좌표를 추가합니다
			var bounds = new kakao.maps.LatLngBounds();

			for (var i = 0; i < nameCnt; i++) {
				bounds.extend(new kakao.maps.LatLng(placey[i], placex[i]));
			}

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map1.setBounds(bounds);
			
			// 장소 중심점 마크
			var imageSrcCenter = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var markerImageCenter = new kakao.maps.MarkerImage(imageSrcCenter, imageSize); 
			// 중심점 마커를 생성합니다 
		    var marker = new kakao.maps.Marker({ 
		        map: map1, // 마커를 표시할 지도 
		        position: new kakao.maps.LatLng(centerY/(nameCnt*1.0), centerX/(nameCnt*1.0)), // 마커를 표시할 위치 
		        title : "중심", // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 
		        image : markerImageCenter // 마커 이미지  
		    }); 
			
			
		}
	</script>  


</body>
</html>