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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <style>
   html {

		position: relative;
		margin: 0;
		background: white;
	}
		
    body {
        font-size: 15px;
		min-height: 100%;
    }
    container {
    	height: 100%;
    }

    table {
      	text-align: center;
    }
    
    .card-header {
      	margin-bottom: 20px;
    }
    
    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }

    image {
      	height: 200px;
      	width: 100px;
    }
    
    .rounded-circle {
        border-radius: 50%!important;
        margin-top: 8px;
        width: 50px;
        background-color: #fef0ae;
    }

    .thumbnail-file-area input[type=file] {
      	display:none;
    }

    .card-header {
      	font-weight: bold;
      	font-size: 17px;
    }

    .card-img-top {
      	width: 80%;
    }

    .card-body {
      	text-align: center;
    }

  </style>
  </head>
  <body>
  	
    <div class="wrapper">
		
		<!-- header -->
		<%@ include file="../commons/header.jsp" %>

      	<div class="container">
        
        	<!-- sidebar -->
			<%@ include file="../commons/sidebar.jsp" %>

        	<!-- main page -->
		   <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; height: 1000px">
		   <br>
			<h3>공지사항</h3>
			<br><br>
		     <div class="col-sm-12" id="content-formatting" style="float: left; margin: auto; ">
		       <table class="table table-hover" style="border-bottom: 1px solid rgba(0,0,0,0.08);">
		         <thead>
		           <tr>
		             <th>공지 번호</th>
		             <td colspan="3">${ noticeDetail.no }</td>
		             <th>작성일</th>
		             <td style="width: 25%">${ noticeDetail.writeDate }</td>
		           </tr>
		           <tr>
		             <th>제목</th>
		             <td colspan="3">${ noticeDetail.title } </td>
		           </tr>
		         </thead>
		         <tbody style="padding: 15px 15px 15px 15px">
		           <tr>
		             <td colspan="6" rowspan="" style="padding-top: 20px; padding-bottom: 20px; " align="left">
					               ${ noticeDetail.content }     
		             </td>
		           </tr>
		         </tbody>
		       </table><br><br><br><br>
		       <button class="btn btn-primary" type="button" style="margin-left: 40%;" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/main'">목록으로</button>
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
    </div>
    
 	<!-- footer -->
	<%@ include file="../commons/footer.jsp" %>
  	
  </body>
</html>