<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Boutique | Ecommerce bootstrap template</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="all,follow">
  <!-- Bootstrap CSS-->
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
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<style>
  .thumbnail-file-area input[type=file] {
    display:none;
  }
</style>
</head>

<body>
  <div class="page-holder">
    
    <!-- navbar-->
    <jsp:include page="../commons/header.jsp"/>
    
    <!-- <header class="header bg-white" style="padding-top: 80px; padding-bottom: 30px;">
      <div class="container px-0 px-lg-3">
        <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.html"><span
              class="font-weight-bold text-uppercase text-dark">
              <h1>우리동네 클래스</h1>
            </span></a>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
              </li>
              <li class="nav-item">
              </li>
              <li class="nav-item"><a class="nav-link" href="#">
                  <h3>강사 페이지</h3>
                </a>
              </li>
              <li class="nav-item dropdown">
              </li>
            </ul>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item"></li>
              <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>회원가입</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>로그인</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </header> -->

    <div class="hello" style="width: 90%; margin: 10% 10% 10% 10%; display: flex;">
      <!-- SIDEBAR-->
      <jsp:include page="../commons/sidebar.jsp"/>
      
      <!-- <div class="col-lg-2 order-1 order-lg-0" style="float: left; width: 15%;">
        <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black;">
            <h2>홈</h1>
          </a></h5>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">클래스 관리</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">클래스 관리</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">매출/정산</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">정산내역 관리</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">세금계산서 관리</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">문의하기</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
          <li class="mb-2"><a class="reset-anchor" href="#">관리자 문의</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">문의내역 관리</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">자주 묻는 질문</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
      </div> -->
      <!-- /SIDEBAR -->

      <!-- 본문 -->
      <div class="container" style="width: 80%; margin-left: 10px;">
        <!-- 정규클래스등록1-->
        <div class="row">
          <div class="col-md-2 nowStep" >클래스 기본정보</div>
          <div class="col-md-2 step" >클래스 소개</div>
          <div class="col-md-3 step" >클래스 일정 및 가격</div>
          <div class="col-md-2 step">클래스 부가정보</div>
          <div class="col-md-3 step">클래스 등록 및 약관동의</div>
        </div>
        <br><br><br>
        <h6>카테고리 선택</h6>
        <form method="post" action="${pageContext.servletContext.contextPath }/classRegist/step2" enctype="multipart/form-data">
        <div class="form-inline">
        
          <c:if test="${requestScope.classType eq  'O' }">
          <select class="form-group" style="width: 200px; margin-right: 20px;" name="clsType">
            <option value="O">원데이</option>
          </select>
          </c:if>
          <c:if test="${requestScope.classType eq 'R' }">
          <select class="form-group" style="width: 200px; margin-right: 20px;" name="clsType">
            <option value="R">정규과정</option>
          </select>
          </c:if>
          <select class="form-group" style="width: 200px; margin-right: 20px;" name="categoryNo">
            <option value="1">스포츠</option>
            <option value="2">요리/베이킹</option>
            <option value="3">미술/공예/공연전시</option>
            <option value="4">뷰티</option>
            <option value="5">컴퓨터/IT</option>
            <option value="6">언어/스피치</option>
            <option value="7">재테크/창업</option>
          </select>

        </div>
        <br>
        <hr>
        <br>
        <h6>클래스 타이틀<h6>
            <div class="form-group">
              <input style="width: 80%;" type="text" name="title" required="required">
            </div>
            <br>
            <hr><br>
        <h6>클래스 간략소개<h6>
            <div class="form-group">
              <input style="width: 80%;" type="text" name="simpleIntro" required="required">
            </div>
            <br>
            <hr><br>
            <h6>대표사진등록<b>*</b></h6>
            <div style="font-size: 15px; opacity: .7">
              - 분할사진 사진내에 텍스트가 포함된 사진, 클래스와 관련없는 사진은 클래스 승인 반려 사유가 되니 주의해주세요.<br>
              - 사진은 대표이미지 포함 최대 3장까지 첨부 할 수 있습니다.<br>
              - 1:1 배율사진을 권장합니다.
            </div>
            <br>
            <div>
              <button>전체삭제(되나?)</button>
            </div>
            <br>
            <div>
              <table>
                <td>
                  <div class="content-img-area1" id="contentImgArea1">
                    <img id="contentImg1" width="150" height="120">
                  </div>
                </td>
                <td>
                  <div class="content-img-area2" id="contentImgArea2">
                    <img id="contentImg2" width="150" height="120">
                  </div>
                </td>
                <td>
                  <div class="content-img-area3" id="contentImgArea3">
                    <img id="contentImg3" width="150" height="120">
                  </div>
                </td>
              </table>
              <div class="thumbnail-file-area">
                <input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)" required="required">
                <input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this,2)" >
                <input type="file" id="thumbnailImg3" name="thumbnailImg3" onchange="loadImg(this,3)" >
              </div>
            </div>
            
              <br>
              <hr><br>
              <h6>클래스주소</h6>
              <div class="form-horizontal">
                <div class="form-group">
                  <input id="zipCode" type="text" class="select-nomalsize"  style="margin-bottom: 8px;"  name="zipCode"  required="required" placeholder="우편번호">
                  <button id="searchZipCode" class="submit-btn" type="button" style="margin-left: 10px;" >주소 검색</button>
                  <input id="address1"type="text" class="form-control"style="width: 50%; margin-bottom: 8px;" placeholder="주소" name="address">
                  <input type="text" class="form-control"style="width: 50%; margin-bottom: 8px;" placeholder="상세주소" name="address">
                </div>

              </div>
              <br>
              <hr><br>

              <button type="button" onclick="goMain();">메인으로</button>
              <button type="submit">다음></button>
              </form>
              <script>
                  function goMain(){
                	  if(confirm("메인으로 돌아가시겠습니까?<br> 작성중인 내용은 유지되지 않습니다.")){
                		  location.href = "${pageContext.servletContext.contextPath }/teacher/main";
                	  } else {
                		  location.href = "#";
                	  }
                  }
              </script>
      </div>
    </div>
    <br>
    <br>
    <!-- 주소검색 -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function() {
		
			//다음 우편번호 검색 창을 오픈하면서 동작할 콜백 메소드를 포함한 객체를 매개변수로 전달한다.
			new daum.Postcode({
				oncomplete: function(data){
					//팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		
		$goMain.onclick = function() {
			location.href = "${ pageContext.servletContext.contextPath }";
		}
	</script>    
    <!-- /주소검색 -->
    <!-- //정규클래스등록1-->
  </div>
  <!-- //본문 -->

  <footer class="bg-dark text-white">
    <div class="container py-4">
      <div class="row py-5">
        <div class="col-md-1 mb-3 mb-md-0">
          <h5 class="text-uppercase mb-3">
            <p> </p>
          </h5>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              공지사항</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              서비스 약관</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              개인정보<br>처리약관</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              자주 묻는<br>질문</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              문의하기</a></h3>
        </div>
        <div class="col-md-1 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3">
            <p> </p>
          </h3>
        </div>
      </div>
      <div class="border-top pt-4" style="border-color: #1d1d1d !important">
        <div class="row">
          <div class="col-lg-6">
            <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
          </div>
          <div class="col-lg-6 text-lg-right">
            <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor"
                href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- JavaScript files-->
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/t_WDC.js"></script>
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>


  <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </div>
</body>

</html>