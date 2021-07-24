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
      margin: auto;
      font-size: 13px;
      padding: 10px;
    }
    
    th {
      text-align: center;
      padding: 10px;
      background: rgb(233, 233, 233);
    }

    td {
      text-align: left;
      padding-left: 10px;
      padding-right: 10px;
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
  <div class="page-holder">
    <!-- navbar-->
    <%@ include file="../commons/header.jsp" %>

    <div class="container">
      <!-- sidebar -->
      <%@ include file="../commons/sidebar.jsp" %>
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; height: 800px">

        <div class="col-sm-12" id="content-formatting" style="float: left; margin: auto;">
          <table class="table table-hover">
            <thead>
              <tr>
                <th>글 번호</th>
                <td colspan="3">${ QnADetail.queNo }</td>
                <th>문의일</th>
                <td style="width: 25%">${ QnADetail.queDate }</td>
              </tr>
              <tr>
                <th>제목</th>
                <td colspan="3">${ QnADetail.queTitle }</td>
                <th>답변일</th>
                <c:choose>
                  <c:when test="${ empty QnADetail.answer.answerTime }">
                  <td style="width: 25%">-</td>
                  </c:when>
                  <c:otherwise>
                  <td style="width: 25%">${ QnADetail.answer.answerTime }</td>
                  </c:otherwise>
                </c:choose>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td colspan="6" rowspan="" style="padding-top: 20px; padding-bottom: 20px;">
                ${ QnADetail.queContent}  
                </td>
              </tr>
              <tr>
                <td colspan="6" rowspan="" style="padding-top: 20px; padding-bottom: 20px;">
                  <p><b>관리자 답변</b></p>
                  <c:choose>
                    <c:when test="${ empty QnADetail.answer.answerContent }">
                      등록된 답변이 없습니다.
                    </c:when>
                    <c:otherwise>
                    ${ QnADetail.answer.answerContent }
                    </c:otherwise>
                  </c:choose>
                </td>
              </tr>
            </tbody>
          </table><br><br><br><br>
          <button class="btn btn-primary" type="button" style="margin-left: 40%;" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/teacherInquiryList'">목록으로</button>
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
  
  <jsp:include page="../commons/footer.jsp"/>
</body>
</html>