<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default2.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png">
  <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <style>
    .nav-item {
      	font-weight: bold;
    }
    .text-uppercase {
	    letter-spacing: 0.05em;
	}
	a{
		text-decoration: unset !important;
	}

  </style>
</head>
<body>
      <header class="header bg-white" style="height: 70px;">
        <div class="container px-0 px-lg-3">
    <c:choose>
        <c:when test="${ sessionScope.teacherNo gt 0 }">
        <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${ pageContext.servletContext.contextPath }/teacher/main"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"><a href="${pageContext.servletContext.contextPath }/teacher/main">강사페이지</a></li>
            </ul>
            <ul class="navbar-nav ml-auto">               
              <!-- <li class="nav-item"><a class="nav-link" href="t_InfoEdit.html"><i class="fas fa-user-alt mr-1 text-gray"></i>마이 페이지</a></li>&nbsp;&nbsp;&nbsp;&nbsp; -->
              <li class="nav-item"><a class="nav-link" onclick="logoutCheck();" style="cursor: pointer;"><i class="fas fa-user-alt mr-1 text-gray"></i>로그아웃</a></li>
            </ul>
          </div>
              <script>
                  function logoutCheck(){
                	  if(confirm("로그아웃 하시겠습니까?")){
                		  location.href = "${pageContext.servletContext.contextPath }/teacher/logout";
                	  } else {
                		  location.href = "#";
                	  }
                  }
              </script>
        </nav>
        </div>
        </header>
        </c:when>
        <c:otherwise>
        <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${ pageContext.servletContext.contextPath }"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"><a href="${pageContext.servletContext.contextPath }/teacher/">강사페이지</a></li>
            </ul>
            <ul class="navbar-nav ml-auto">               
              <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/teacher/registTeacher"> <i class="fas fa-user-alt mr-1 text-gray"></i>회원가입</a></li>
              <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/teacher"> <i class="fas fa-user-alt mr-1 text-gray"></i>로그인</a></li>
            </ul>
          </div>
        </nav>
        </c:otherwise>
    </c:choose>
  </div>
  <hr>
</body>
</html>