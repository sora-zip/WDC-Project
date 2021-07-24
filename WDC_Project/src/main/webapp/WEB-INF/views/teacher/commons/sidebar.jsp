<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>우리 동네 클래스</title>
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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="img/favicon.png">
  <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <style>
    body {
      font-size: 15px;
    }
    p {
      font-size: 17px;
      font-weight: bold;
      margin: 0px;
    }
	.side-head {
	    height: 45px;
	    width: 130px;
	    margin: 20px;
	    padding: 5px;
	    background: #f7f6f5;
	    text-align: center;
    }
	.side-body {
	    text-align: right;
	    font-size: 16px;
	}
  </style>
</head>
<body>
  <div class="col-lg-2 order-1 order-lg-0" style="float: left; margin-left: -60px; margin-top: 10px;">
    <div class="py-2 side-head"><p>클래스 관리</p></div>
    <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
      <li class="mb-2 side-body"><a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/teacher/teacherClassManagement">클래스 관리</a></li>
      <li class="mb-2 side-body"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
    </ul>
    <div class="py-2 side-head"><p>매출/정산</p></div>
    <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
      <li class="mb-2 side-body"><a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/teacher/teacherBalanceList">정산내역 관리</a></li>
      <li class="mb-2 side-body"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
    </ul>
    <div class="py-2 side-head"><p>문의하기</p></div>
    <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
      <li class="mb-2 side-body"><a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/teacher/teacherInquiry">관리자 문의</a></li>
      <li class="mb-2 side-body"><a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/teacher/teacherInquiryList">문의내역 관리</a></li>
      <li class="mb-2 side-body"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
    </ul>
  </div>
</body>
</html>