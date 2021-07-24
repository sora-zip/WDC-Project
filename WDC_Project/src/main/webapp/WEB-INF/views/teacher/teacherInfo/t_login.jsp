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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/endor/owl.carousel2/assets/owl.carousel.min.css">
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
      <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script> 
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <style>
/*      html {

		position: relative;
		margin: 0;
		background: white;
	} */
    body {
      font-size: 15px;
    }
    
    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
  </style>
  <body>

    <!-- header -->
    <div class="page-holder">
    	
      <!-- navbar-->
      <jsp:include page="../commons/header.jsp"/>

      <!-- body -->
      <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if>
      <div class="container py-5" >
        <div class="col-lg-7" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h4 class="mb-5">로그인</h4>
              <form method="post" action="${pageContext.servletContext.contextPath }/teacher/teacherSignIn">
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorId">아이디</label>
                  <div class="col-sm-12">
                    <input class="form-control" id="tutorId" type="text" placeholder="아이디" name="teacherId">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">비밀번호</label>
                  <div class="col-sm-12">
                    <input class="form-control" id="tutorPwd" type="password" placeholder="비밀번호" name="teacherPwd">
                  </div>
                </div><br><br>
                <div class="form-group row">
                  <div class="col-sm-4" style="margin-right: 40px;"></div>
                  <div class="col-sm-3">
                    <%-- <button class="btn btn-primary" type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/teacher/teacherSignIn'">로그인</button> --%>
                    <button class="btn btn-primary" type="submit">로그인</button>
                  </div>
                  <div class="col-sm-2" style="font-size: 12px; text-align: right; padding: 0px;"><a href="${ pageContext.servletContext.contextPath }/teacher/findId" style="color: black;">아이디찾기</a></div>
                  <div class="col-sm-2" style="font-size: 12px; text-align: center; padding: 0px;"><a href="${pageContext.servletContext.contextPath }/teacher/findPWD" style="color: black;">비밀번호찾기</a></div>
                </div>
              </form>
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
	  
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <br><br><br><br>
    <!-- footer -->
    <jsp:include page="../commons/footer2.jsp"/>
    </div>
  </body>
</html>