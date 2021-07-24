<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .panel-default {
      padding-left: 30px;
      padding-top: 20px;
      padding-bottom: 20px;
    }

    a {
      color: black;
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

  
  </head>
  
  <body>
     <!-- header -->
    <div class="page-holder">
    <%@ include file="../commons/header.jsp" %>

      <div class="container">

        <!-- sidebar-->
        <%@ include file="../commons/sidebar.jsp" %>

        <!-- main for FAQ-->
        <form method="post" action="${pageContext.servletContext.contextPath }/teacher/inquiryWrite">
        <div class="col-lg-8 order-1 order-lg-1 mb-5 mb-lg-0" style="margin: auto; padding-top: 10px;">
          <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
            <P style="font-size: 20px; font-weight: bold; margin-top: 25px;" >문의작성<P>
          <hr>
          </div>
          <div class="col-lg-12" style="margin: auto; margin:20px;">
            <div class="col-mb-12">
              <label for="inquiryTitle" class="form-label" style="margin-left: 10px;"><h5>제목</h5></label>
              <input type="text" class="form-control" id="inquiryTitle" placeholder="제목을 입력하세요."  style="margin-left: 10px; margin-bottom: 30px;" name="questionTitle" required="required">
            </div>
            <div class="col-mb-12">
              <label for="inquiryText" class="form-label"  style="margin-left: 10px;"><h5>내용</h5></label>
              <textarea class="form-control" id="inquiryText" rows="3" placeholder="문의 내용을 입력하세요." style="margin-left: 10px; height: 300px; resize: none;" name="questionContent" required="required"></textarea>
            </div>
            <div class="form-group row">
              <div class="col-sm-4" style="margin: auto; padding: 60px;">
                <button class="btn btn-primary" type="submit" onclick="location.href='t_inquiryList.html'">문의하기</button>
              </div>
            </div>
          </div>
        </div>
        </form>
      </div>

<!--       <footer class="bg-dark text-white">
        <div class="container py-4">
          <div class="row py-5">
            <div class="col-md-1 mb-3 mb-md-0">
              <h5 class="text-uppercase mb-3"><p> </p></h5>
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
              <h3 class="text-uppercase mb-3"><p> </p></h3>
            </div>
          </div>
          <div class="border-top pt-4" style="border-color: #1d1d1d !important">
            <div class="row">
              <div class="col-lg-6">
                <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
              </div>
              <div class="col-lg-6 text-lg-right">
                <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor" href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
              </div>
            </div>
          </div>
        </div>
      </footer> -->
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
    </div>
    
    <jsp:include page="../commons/footer.jsp"/>
  </body>
</html>