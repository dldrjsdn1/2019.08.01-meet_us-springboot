<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <title>Meet Us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
.map_wrap {position:static;width:100%;height:100%;}
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
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
			<div class="map_wrap">
				<div id="map"></div>
					<ul id="category" style="margin-left: 5%;">

					</ul>
				</div>
			</div>

			<div class="col-lg-4 sidebar ftco-animate">
				<div class="sidebar-box">
					<form action="#" class="search-form">
						<div class="form-group">
							<span class="icon icon-search" onclick="SearchPlace()" style="cursor: pointer;"></span> <input type="text" id="SearchPlaceId"
								class="form-control" placeholder="Place Searching" onkeydown="JavaScript:Enter_Check()" >
						</div>
						<div class="form-group">
							<span class="icon icon-search" onclick="" style="cursor: pointer;"></span> <input type="text" id=""
								class="form-control" placeholder="Keyword" onkeydown="JavaScript:Enter_Check()" >
						</div>
					</form>
				</div>
				<div class="sidebar-box ftco-animate">
					<h3 class="heading-sidebar"><strong>Meeters & Address</strong></h3>
					<ul class="categories">
						<li id="Location0">���<span></span></a></li>
						<li id="Location1">���<span></span></a></li>
						<li id="Location2">���<span></span></a></li>
						<li id="Location3">���<span></span></a></li>
						<li id="Location4">���<span></span></a></li>
					</ul>

					<div class="comment-form-wrap pt-5">

						<div class="form-group">
							<button type="button"
								onclick="centerView_click();"
								class="btn py-3 px-4 btn-warning" style="width: 100%; color: white;">Center View</button>
						</div>
						<div class="form-group">
							<button type="button" onclick="categorySearch_click();"
								class="btn py-3 px-4 btn-primary" style="width: 100%;">Starting
								Meeting</button>
						</div>
						<div class="form-group">
							<button type="button" onclick="reset_click();"
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
	// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	// ��Ŀ�� Ŭ������ �� �ش� ����� �������� ������ Ŀ���ҿ��������Դϴ�
	var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
	contentNode = document.createElement('div'); // Ŀ���� ���������� ������ ������Ʈ �Դϴ� 
    
	var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };  
	
	// Ŀ���� ���������� ������ ��忡 css class�� �߰��մϴ� 
	contentNode.className = 'placeinfo_wrap';
	
	// Ŀ���� �������� �������� �����մϴ�
	placeOverlay.setContent(contentNode);  


	
	// ������ �����մϴ�    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	
	function SearchPlace(){
	var place = document.getElementById('SearchPlaceId').value;
	
	// ��� �˻� ��ü�� �����մϴ�
	var ps = new kakao.maps.services.Places(); 

	// Ű����� ��Ҹ� �˻��մϴ�
	ps.keywordSearch(place, placesSearchCB); 

	// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
	        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
	        var bounds = new kakao.maps.LatLngBounds();

	        for (var i=0; i<data.length; i++) {
	            displayMarker(data[i]);    
	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	        }       
	    } 
	    
	    else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	    	alert("�˻� ����� �����ϴ�.");
	    }
	    
	    // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
        map.setBounds(bounds);
	}

	// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
	function displayMarker(place) {
	    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: new kakao.maps.LatLng(place.y, place.x) 
	    });
	    
	    // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
	    kakao.maps.event.addListener(marker, 'click', function() {
		 content = '<div class="placeinfo">'
											+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
											+ place.place_name + '</a>';

									if (place.road_address_name) {
										content += '    <span title="' + place.road_address_name + '">'
												+ place.road_address_name 
												+ '</span>'
												+ '  <span class="jibun" title="' + place.address_name + '">(���� : '
												+ place.address_name 
												+ ')</span>';
									} else {
										content += '    <span title="' + place.address_name + '">'
												+ place.address_name 
												+ '</span>';
									}

									content += '    <span class="tel">'
											+ place.phone + '</span>';
											
									content += '<button type="button" onclick="save_click('+"'"+ place.place_name +"'"+","+"'"+ place.y+"'"+","+"'"+ place.x+"'"+');" class="btn btn-success btn-sm" style="margin-left:35%; margin-top:10px;">����</button>'
											+ '<button type="button" onclick="close_window();" class="btn btn-dark btn-sm" style="margin-left:5%; margin-top:10px;">�ݱ�</button>'
											+ '</div>'
											+ '<div class="after"></div>';
											
// 									// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
// 									infowindow.setContent(content);
// 									infowindow.open(map, marker);


									contentNode.innerHTML = content;
								    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
								    placeOverlay.setMap(map);
								    
								    
								});
			}
		}
	

<!-- �ݱ� ��ư -->
	function close_window() {        
 	placeOverlay.setMap(null); 
	}


<!-- �ּ� ���� -->
	 var names = new Array();
	 var nameCnt = 0;
	 var placey = new Array();
	 var placex = new Array();
	 var check = false;

		function save_click(name, placeY, placeX) {
			
			// ù��° �ּ� ����
			if(nameCnt == 0){
				names.push(name);
				placey.push(placeY);
				placex.push(placeX);
				nameCnt++;
				document.getElementById("Location0").innerHTML= names[0];
				alert("����Ǿ����ϴ�.");
			}
			
			else if(nameCnt > 0){
				if(nameCnt >= 5){
					alert("���� �ּҰ� �ʹ� �����ϴ�.");
				}else{
					for(var i=0; i<nameCnt; i++){
						if(names[i] == name){
							check = true;
						}
					}
					if(check == true){
						alert("�̹� ����� �ּ��Դϴ�.");
						check = false;
					}else if(check == false){
						for(var i=0; i<nameCnt; i++){
							names.push(name);
			 				placey.push(placeY);
			 				placex.push(placeX);
						}
						nameCnt++;
						alert("����Ǿ����ϴ�.");
					}
					for(var i=0; i<nameCnt; i++){
						document.getElementById("Location"+i).innerHTML= names[i];
					}
				}
			}
		}

	
	
<!-- ���� �Է½� �̺�Ʈ -->
		function Enter_Check() {
			// ����Ű�� �ڵ�� 13�Դϴ�.
			if (event.keyCode == 13) {
				SearchPlace();
			}
		}

	
	
<!-- centerView Ŭ���� -->
	let RcenterY = 0;
	let RcenterX = 0;
	
	function centerView_click(){ 
		
	map = null;
	map = new kakao.maps.Map(mapContainer, mapOption);  // ������ �����մϴ�
	
	// 	�߽���ǥ
	var centerY = 0;
	var centerX = 0;
	
	// ��Ŀ �̹����� �̹��� �ּ��Դϴ� 
	var imageSrc = "resources/images/map-marker-icon.png";  
	
	for (var i = 0; i < nameCnt; i++) { 
	
	    // ��Ŀ �̹����� �̹��� ũ�� �Դϴ� 
	    var imageSize = new kakao.maps.Size(29, 35);  
	
	    // ��Ŀ �̹����� �����մϴ�     
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);  
	    
	    var latlng = new kakao.maps.LatLng(placey[i], placex[i]); 
	    var title = names[i]; 
	    
	    //�߽���ǥ ���ϱ�
	    centerY += placey[i]*1;
	    centerX += placex[i]*1;

	    // ��Ŀ�� �����մϴ� 
	    var marker = new kakao.maps.Marker({ 
	        map: map, // ��Ŀ�� ǥ���� ���� 
	        position: latlng, // ��Ŀ�� ǥ���� ��ġ 
	        title : title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ� 
	        image : markerImage // ��Ŀ �̹���  
	    }); 
	}
	

		// �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
			// LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
			var bounds = new kakao.maps.LatLngBounds();

			for (var i = 0; i < nameCnt; i++) {
				bounds.extend(new kakao.maps.LatLng(placey[i], placex[i]));
			}

			// �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
			map.setBounds(bounds);
			
			// ��� �߽��� ��ũ
			var imageSrcCenter = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var markerImageCenter = new kakao.maps.MarkerImage(imageSrcCenter, imageSize);
			
			// �߽��� ��Ŀ�� �����մϴ� 
		    var marker = new kakao.maps.Marker({ 
		        map: map, // ��Ŀ�� ǥ���� ���� 
		        position: new kakao.maps.LatLng(centerY/(nameCnt*1.0), centerX/(nameCnt*1.0)), // ��Ŀ�� ǥ���� ��ġ 
		        title : "�߽�", // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ� 
		        image : markerImageCenter // ��Ŀ �̹���  
		    }); 
			
// 			alert(new kakao.maps.LatLng(centerY/(nameCnt*1.0), centerX/(nameCnt*1.0)));
			 RcenterY = centerY/(nameCnt*1.0);
			 RcenterX = centerX/(nameCnt*1.0);
			
		}


<!-- 	�߽��� �������� ī�װ��� �˻� --> 
 	function categorySearch_click(){
 		
 		
 		//starting meeting Ŭ���� ī�׸��� ���̰� �ϱ�
 		var categoryNode = document.getElementById('category'); 

 		var contentCategory = '<li id="BK9" data-order="0"><span class="category_bg bank"></span>����</li>'
 							+ '<li id="MT1" data-order="1"><span class="category_bg mart"></span>��Ʈ</li>'
 							+ '<li id="MT1" data-order="1"><span class="category_bg mart"></span>��Ʈ</li>'
 							+ '<li id="MT1" data-order="1"><span class="category_bg mart"></span>��Ʈ</li>'
 							+ '<li id="MT1" data-order="1"><span class="category_bg mart"></span>��Ʈ</li>'
 							+ '<li id="MT1" data-order="1"><span class="category_bg mart"></span>��Ʈ</li>'
 							+ '<li id="MT1" data-order="1"><span class="category_bg mart"></span>��Ʈ</li>'
 							+ '<li id="MT1" data-order="1"><span class="category_bg mart"></span>��Ʈ</li>';
 		
 		categoryNode.innerHTML = contentCategory;
 		
 		
 		
//  		alert(RcenterY+"/"+RcenterX);


				
			var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
		    contentNode = document.createElement('div'), // Ŀ���� ���������� ������ ������Ʈ �Դϴ� 
		    markers = [], // ��Ŀ�� ���� �迭�Դϴ�
		    currCategory = ''; // ���� ���õ� ī�װ��� ������ ���� �����Դϴ�
		 
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		    mapOption = {
		        center: new kakao.maps.LatLng(RcenterY, RcenterX), // ������ �߽���ǥ
		        level: 5 // ������ Ȯ�� ����
		    };  
		
		// ������ �����մϴ�    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// ��� �˻� ��ü�� �����մϴ�
		var ps = new kakao.maps.services.Places(map); 
		
		var imageSrcCenter = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		// ��Ŀ �̹����� �̹��� ũ�� �Դϴ� 
	    var imageSize = new kakao.maps.Size(29, 35);  
		var markerImageCenter = new kakao.maps.MarkerImage(imageSrcCenter, imageSize);
		
		// ��Ŀ ���
		var marker = new kakao.maps.Marker({ 
		    // ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
		    position: new kakao.maps.LatLng(RcenterY,RcenterX),
			image : markerImageCenter
		}); 
		// ������ ��Ŀ�� ǥ���մϴ�
		marker.setMap(map);
		
		
		
		
		// ������ idle �̺�Ʈ�� ����մϴ�
		kakao.maps.event.addListener(map, 'idle', searchPlaces);
		
		// Ŀ���� ���������� ������ ��忡 css class�� �߰��մϴ� 
		contentNode.className = 'placeinfo_wrap';
		
		// Ŀ���� ���������� ������ ��忡 mousedown, touchstart �̺�Ʈ�� �߻�������
		// ���� ��ü�� �̺�Ʈ�� ���޵��� �ʵ��� �̺�Ʈ �ڵ鷯�� kakao.maps.event.preventMap �޼ҵ带 ����մϴ� 
		addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
		addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
		
		// Ŀ���� �������� �������� �����մϴ�
		placeOverlay.setContent(contentNode);  
		
		// �� ī�װ��� Ŭ�� �̺�Ʈ�� ����մϴ�
		addCategoryClickEvent();
		
		// ������Ʈ�� �̺�Ʈ �ڵ鷯�� ����ϴ� �Լ��Դϴ�
		function addEventHandle(target, type, callback) {
		    if (target.addEventListener) {
		        target.addEventListener(type, callback);
		    } else {
		        target.attachEvent('on' + type, callback);
		    }
		}
		
		// ī�װ� �˻��� ��û�ϴ� �Լ��Դϴ�
		function searchPlaces() {
		    if (!currCategory) {
		        return;
		    }
		    
		    // Ŀ���� �������̸� ����ϴ� 
		    placeOverlay.setMap(null);
		
		    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
		    removeMarker();
		    
		    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
		}
		
		// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		
		        // ���������� �˻��� �Ϸ������ ������ ��Ŀ�� ǥ���մϴ�
		        displayPlaces(data);
		    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
		        // �˻������ ���°�� �ؾ��� ó���� �ִٸ� �̰��� �ۼ��� �ּ���
		
		    } else if (status === kakao.maps.services.Status.ERROR) {
		        // ������ ���� �˻������ ������ ���� ��� �ؾ��� ó���� �ִٸ� �̰��� �ۼ��� �ּ���
		        
		    }
		}
		
		// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
		function displayPlaces(places) {
		
		    // ���° ī�װ��� ���õǾ� �ִ��� ���ɴϴ�
		    // �� ������ ��������Ʈ �̹��������� ��ġ�� ����ϴµ� ���˴ϴ�
		    var order = document.getElementById(currCategory).getAttribute('data-order');
		
		    
		
		    for ( var i=0; i<places.length; i++ ) {
		
		            // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
		            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
		
		            // ��Ŀ�� �˻���� �׸��� Ŭ�� ���� ��
		            // ��������� ǥ���ϵ��� Ŭ�� �̺�Ʈ�� ����մϴ�
		            (function(marker, place) {
		                kakao.maps.event.addListener(marker, 'click', function() {
		                    displayPlaceInfo(place);
		                });
		            })(marker, places[i]);
		    }
		}
		
		// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }   
		    markers = [];
		}
		
		// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
		function addMarker(position, order) {
		    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
		        imageSize = new kakao.maps.Size(27, 28),  // ��Ŀ �̹����� ũ��
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(72, 208), // ��������Ʈ �̹����� ũ��
		            spriteOrigin : new kakao.maps.Point(46, (order*36)), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
		            offset: new kakao.maps.Point(11, 28) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // ��Ŀ�� ��ġ
		            image: markerImage 
		        });
		
		    marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
		    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�
		
		    return marker;
		}
		
		// Ŭ���� ��Ŀ�� ���� ��� �������� Ŀ���� �������̷� ǥ���ϴ� �Լ��Դϴ�
		function displayPlaceInfo (place) {
		    var content = '<div class="placeinfo">' +
		                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
		
		    if (place.road_address_name) {
		        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
		                    '  <span class="jibun" title="' + place.address_name + '">(���� : ' + place.address_name + ')</span>';
		    }  else {
		        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
		    }                
		   
		    content += '    <span class="tel">' + place.phone + '</span>' + 
		                '</div>' + 
		                '<div class="after"></div>';
		
		    contentNode.innerHTML = content;
		    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
		    placeOverlay.setMap(map);  
		}
		
		
		// �� ī�װ��� Ŭ�� �̺�Ʈ�� ����մϴ�
		function addCategoryClickEvent() {
		    var category = document.getElementById('category'),
		        children = category.children;
		
		    for (var i=0; i<children.length; i++) {
		        children[i].onclick = onClickCategory;
		    }
		}
		
		// ī�װ��� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
		function onClickCategory() {
		    var id = this.id,
		        className = this.className;
		
		    placeOverlay.setMap(null);
		
		    if (className === 'on') {
		        currCategory = '';
		        changeCategoryClass();
		        removeMarker();
		    } else {
		        currCategory = id;
		        changeCategoryClass(this);
		        searchPlaces();
		    }
		}
		
		// Ŭ���� ī�װ����� Ŭ���� ��Ÿ���� �����ϴ� �Լ��Դϴ�
		function changeCategoryClass(el) {
		    var category = document.getElementById('category'),
		        children = category.children,
		        i;
		
		    for ( i=0; i<children.length; i++ ) {
		        children[i].className = '';
		    }
		
		    if (el) {
		        el.className = 'on';
		    } 
		} 
 	}

 	
 	
<!--  	reset ��ư Ŭ�� �̺�Ʈ -->
 	function reset_click(){
 		location.reload();
 	}

 	
 	
 </script>

</body>
</html>