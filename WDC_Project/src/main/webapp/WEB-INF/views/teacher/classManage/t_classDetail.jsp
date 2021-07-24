<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>우리 동네 클래스 - 강사 | W.D.C</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="all,follow">
  <!-- Bootstrap CSS-->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/css/bootstrap.min.css">
  <!-- Lightbox-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/css/lightbox.min.css">
  <!-- Range slider-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.css">
  <!-- Bootstrap select-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/css/bootstrap-select.min.css">
  <!-- Owl Carousel-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.theme.default.css">
  <!-- Google fonts-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png">
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

  <style>
     html {

		position: relative;
		margin: 0;
		background: white;
	}
    table {
      text-align: center;
      font-size: 13px;
    }
    
    body {
      font-size: 15px;
    }
    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
	.thisStep {
	    text-align: center;
	    background-color: #fef0ae;
	    font-weight: bolder;
	    border-bottom: 1px solid #fef0ae;
	    height: 35px;
	    font-size: 16px;
	}
	
	.allStep{
		height: 45px;
   		padding-top: 10px;
   		border-radius: 20px 20px 0px 0px;
	}
	
	.owl-carousel .owl-item img {
	    display: block;
	    width: 85% !important;
	}
	h1, .h1 {
	    font-size: 1.7rem !important;
	}
	
	hr{
		margin-left: -55px !important;
	}
  </style>



</head>
<body>
  <div class="page-holder">
    
    <!-- navbar-->
    <jsp:include page="../commons/header.jsp"/>

    <div class="container">
        <!-- sidebar -->
      <jsp:include page="../commons/sidebar.jsp"/>
      <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if>          
      <!-- main page -->
     <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        
     <%-- <%@ include file="../commons/sidebar.jsp" %> --%>
      <div class="col-lg-12 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px; margin-top: 30px;">
        
      <div class="row" style="width:1000px">
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3 thisStep allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="#" style="color: black" ><b>상세정보</b></a>
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a id="review" style="color: black;cursor: pointer;" onclick="disicionCheck(this);" ><b>후기</b></a>          
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a id="inquiry"style=" color: black; cursor: pointer;" onclick="disicionCheck(this);"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a id="studentManage"  style="color: black; cursor: pointer;" onclick="disicionCheck(this);"><b>출석 관리</b></a>
        </div>
        <script>
          function disicionCheck(p){
            if("${classDetail.dicsionStatus}" != "S" ){
              alert("개설되지 않은 클래스로 조회할 수 없습니다.");
              return;
            } 
            switch(p.id){
              case "review" : location.href = "${pageContext.servletContext.contextPath }/teacher/classReviewList?classType=${classDetail.clsType}&clsNo=${ classDetail.clsNo }"; break;
              case "inquiry" : location.href = "${pageContext.servletContext.contextPath }/teacher/userInquiry?classType=${classDetail.clsType}&clsNo=${ classDetail.clsNo }"; break;
              case "studentManage" : location.href = "${pageContext.servletContext.contextPath }/teacher/studentManagement?classType=${classDetail.clsType}&clsNo=${ classDetail.clsNo }";break;
            }
          }
        </script>        
      </div>
    <!-- 문의 게시판 -->
    <div class="col-sm-12" id="content-formatting" style="float: left; margin-top: 25px;">
      <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
      <c:choose>
        <c:when test="${ classDetail.dicsionStatus eq 'W' }">
        <h4>상세정보</h4>
        <p style="color: gray;">심사대기중</p>
        </c:when>
        <c:when test="${ classDetail.dicsionStatus eq 'F' }">
        <h4>상세정보</h4>
        <p style="color: cornflowerblue;">응원진행 중(현재 응원 수 : ${ cheeringCount })</p>
        </c:when>
        <c:when test="${ classDetail.dicsionStatus eq 'L' }">
        <h4>상세정보</h4>
        <p style="color: red;">응원 수 미달(최종 응원 수 : ${ cheeringCount })</p>
        </c:when>
        <c:when test="${ classDetail.dicsionStatus eq 'R' }">
        <h4>상세정보</h4>
        <p ><b style="color: red;">심사거절</b>(사유 : ${ rejectReason }) </p>
        </c:when>
        <c:otherwise>
        <h4>상세정보</h4>
        <p ><b style="color: green;">승인완료</b>(최종 응원 수 : ${ cheeringCount }) </p>
        </c:otherwise>
      </c:choose>
      </div>

      <div class="col-sm-12">
        <!-- PRODUCT SLIDER-->
        <div class="row" style="margin-left: 130px;">
          <div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
            <div class="owl-thumbs d-flex flex-row flex-sm-column" data-slider-id="1">
            <c:forEach var="classPic" items="${ titlePicture }">
              <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="${pageContext.servletContext.contextPath }/${ classPic.titlePic}" alt="..."></div>
            </c:forEach>
            </div>
          </div>
          <div class="col-sm-10 order-1 order-sm-2">
            <div class="owl-carousel product-slider" data-slider-id="1">
            
            
            
            <c:forEach var="classPicSlide" items="${ titlePicture }" varStatus="status">
              <a class="d-block" href="${pageContext.servletContext.contextPath }/${ classPicSlide.titlePic}" data-lightbox="product" title="Product item ${status.count }">
                <img class="img-fluid" src="${pageContext.servletContext.contextPath }/${ classPicSlide.titlePic}" alt="...">
              </a>
            </c:forEach>
              <%-- <a class="d-block" href="img/class-sport2.png" data-lightbox="product" title="Product item 2">
                <img class="img-fluid" src="${pageContext.servletContext.contextPath }/resources/teacher/img/class-sport2.png" alt="...">
              </a>
              <a class="d-block" href="img/class-sport3.png" data-lightbox="product" title="Product item 3">
                <img class="img-fluid" src="${pageContext.servletContext.contextPath }/resources/teacher/img/class-sport3.png" alt="...">
              </a> --%>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-10" style="margin-left: 80px;" >
        <ul class="list-inline mb-2">
<!--           <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li> -->
        </ul>
        <br>
       <br>
        <div class="sm-6" style="margin-left: 100px;">
          <h1>${ classDetail.title }</h1>
          <br>
          <p class="text-muted lead">클래스 정가 ${ classDetail.price } 원</p>
          <ul class="list-unstyled small d-inline-block" style="font-size: 16px; display: flex !important; padding-top: 15px;">
            <div class="class-icon">
              <c:choose>
                  <c:when test="${ classDetail.clsType eq 'O' }">
                      <div><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/calendar.png" width="20px">&nbsp;&nbsp;원데이클래스</div>
                  </c:when>
                  <c:otherwise>
                      <div><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/calendar.png" width="20px">&nbsp;&nbsp;정규클래스</div>
                  </c:otherwise>
              
              </c:choose>
              <%-- <div style="padding-top:15px"><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/pin.png" width="22px">&nbsp;&nbsp;00동</div> --%>
            </div>
            <div class="class-icon" style="padding-inline: 30px;">
              <div><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/clock.png" width="20px">&nbsp;&nbsp;소요시간  ${ classDetail.time }</div>
              <%-- <div style="padding-top:15px"><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/users.png" width="20px">&nbsp;&nbsp;최대 4명 가능</div> --%>
            </div>
          </ul>
        </div>
      </div>

      <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 50px;">
        <div class="col-sm-10" style="text-align: center;">
          <ul class="list-unstyled small d-inline-block" style="width: 800px;">
<!--             <div style="text-align: center;">
              <strong class="text-uppercase text-dark">일정</strong> : 원데이클래스</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">수강</strong> : 바로 수강 가능</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">지역</strong> : 00동</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">인원</strong> : 최대 4명 가능</a></li>
            </div> -->
            
            <!-- DETAILS TABS-->
            <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
            </ul>
  
            <!-- 상세보기 탭 -->
            <div class="tab-content mb-5" id="myTabContent">
              <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                <div class="p-4 p-lg-5 bg-white" style="text-align: center;">
                  <ul class="list-unstyled small d-inline-block" style="width: 900px;">
                    <div style="text-align:left; height: 2100px;">
                    <h4> <b style="font-size: 13px; ">●</b> 간단소개글</h4>
                    <pre style="font-size: 16px;">${ classDetail.simpleIntro }</pre>
                    <br><br>
                    <hr>
                    <br><br>
                    <h4> <b style="font-size: 13px; ">●</b> 클래스소개</h4>
                      <!-- <div style="width: 550px; height: 70px; margin-top: 20px;">
                      </div> -->
                      
                      <pre style="font-size: 16px;">
${ classDetail.intro }
                     </pre>
                      <br><br>
                      <hr><br>
                      <!-- 완성작 사진 -->
                      <h4> <b style="font-size: 13px; ">●</b> 클래스 완성작</h4><br>
                      <div style="width: 550px; display: flex;  text-align: center; justify-content: space-between; font-size: 16px;">
                      <c:forEach var="piece" items="${ classPiece }">
                        <div><img src="${pageContext.servletContext.contextPath }/resources/upload/${ piece.piecePic}" alt="완성작" width="250px" height="250px"><br>${ piece.pieceTitle }</div>
                      
                      
                      </c:forEach>
                      </div>
                      <br><br><br><hr>
                      <!-- 커리큘럼 -->
                      <div>
                        <br><h4><b style="font-size: 13px; ">●</b> 커리큘럼</h4><br><br>
                        <c:forEach var="curriculum" items="${ curriculum }">
                        <div style="display: flex;">
                          <img src="${pageContext.servletContext.contextPath }/resources/teacher/img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">${ curriculum.curriStep } 단계 : ${ curriculum.curriTitle }</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <p style="font-size: 20px; font-weight: lighter;">${ curriculum.curriContent }.</p>
                        </div>
                        <br><br>
                        </c:forEach>
                      </div>
                      <br><br> 
                      <hr>
                      <br>
                      <!-- 추가 제공사항 및 유의사항 -->
                      <div style="font-size: large;">
                        <h3>※ 추가 제공사항 및 유의사항</h3>
                        <br>
                      <div style="display: flex; width: 550px;">
                        <div style="font-size: large;">&nbsp;&nbsp;&nbsp; ${ classDetail.addInfo }</div>
                      </div>
                        <c:forEach items="${classDetail.addSup}" var="item" varStatus="status">
                          ${ status.count }. ${ item }<br>
                        </c:forEach>
                          <!-- 1. 주차는 불가하며 근처 공영 주차장 이용 부탁드립니다.<br>
                          2. 여러분들과 함께 하는 수업으로 시작을 꼭 지켜주세요.<br>
                          3. 10분전 입실 부탁드립니다.<br>
                          4. 최소인원 1인 최대 6인 입니다.<br> -->
                        <br><br>
                      </div>
                      <hr>
                      <br>
                      <h3>※ 편의사항</h3>
                      
                      <div style="display: flex; width: 550px;">
                      <c:if test="${ empty  classDetail.addSup}">
                        <div style="font-size: large;">&nbsp;&nbsp;&nbsp; 등록된 정보 없음</div>
                      </c:if>
                      <c:if test="${ not empty  classDetail.addSup}">
                        <div style="font-size: large;">&nbsp;&nbsp;&nbsp; ${classDetail.addSup}</div>
                      </c:if>
                      </div>                      
                      <br><br>
                      <br>
                      <!-- 지도 보기 -->
                      <hr>
                      <h3>※ 위치</h3>
                        <br><br>
					  <div id="map" style="width:100%;height:400px;"></div>
                           <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4f9c32f3d7241ef20de4f8c2703db2c7&libraries=services"></script>
                           <script>
                           var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                               mapOption = {
                                   center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                                   level: 3 // 지도의 확대 레벨
                               };  
                           
                           // 지도를 생성합니다    
                           var map = new kakao.maps.Map(mapContainer, mapOption); 
                           
                           // 주소-좌표 변환 객체를 생성합니다
                           var geocoder = new kakao.maps.services.Geocoder();
                           
                           //주소 저장
                           var classAdress = '${ requestScope.classDetail.address }';
                           // 주소로 좌표를 검색합니다
                           geocoder.addressSearch(classAdress, function(result, status) {
                           
                               // 정상적으로 검색이 완료됐으면 
                                if (status === kakao.maps.services.Status.OK) {
                                 
                                   var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                           
                                   // 결과값으로 받은 위치를 마커로 표시합니다
                                   var marker = new kakao.maps.Marker({
                                       map: map,
                                       position: coords
                                   });
                           
                                   // 인포윈도우로 장소에 대한 설명을 표시합니다
                                   var infowindow = new kakao.maps.InfoWindow({
                                       content: '<div style="width:150px;text-align:center;padding:6px 0;">우리 동네 클래스</div>'
                                   });
                                   infowindow.open(map, marker);
                           
                                   // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                   map.setCenter(coords);
                               } 
                           });    
                           </script>                      
                    </div>
                  </ul>
                </div>
              </div>

            </div>
          </ul>
        </div>
      </div>
    </div>
    </div>


    <!-- JavaScript files-->
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
  </div>
  </div>
  <jsp:include page="../commons/footer.jsp"/>
</body>
</html>