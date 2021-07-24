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

    body {
      font-size: 15px;
    }

    textarea {
      resize: none;
      width: 100%;
      height: 200px;
    }

    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae;
      border-color: #fef0ae;
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
  </style>



</head>
<body>
  <div class="page-holder">
    
    <!-- navbar-->
    <jsp:include page="../commons/header.jsp"/>

    <div class="container">
        <!-- sidebar -->
        <jsp:include page="../commons/sidebar.jsp"/>
   
      <c:if test="${not empty info.message }">
          <script>
              alert("${info.message}");
          </script>
      </c:if>      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        <div class="col-lg-12 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px; margin-top: 30px;">
        <div class="row" style="width:1000px; margin-bottom : 25px;">
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/classDetail/${ info.clsNo }" style="font-size: 15; color: black"><b>상세정보</b></a>
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/classReviewList?classType=${ classType }&clsNo=${ info.clsNo }" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3 thisStep allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/userInquiry?classType=${info.classType}&clsNo=${ info.clsNo }" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/studentManagement?classType=${info.classType}&clsNo=${ info.clsNo }" style="font-size: 15; color: black"><b>출석 관리</b></a>
        </div>            
      </div>  
    
    <!-- 문의 게시판 -->
    <div class="col-sm-12" id="content-formatting" style="float: left; height: 700px">
    <h4>고객문의</h4>
        <div class="sol-sm-2" style="text-align: right;">
          <a href="${pageContext.servletContext.contextPath }/teacher/reportUser?userNo=${ inquiry.userNo }&clsNo=${ info.clsNo }" style="color: white; background-color: red; border-radius: 5px; padding: 3px 5px 3px 5px;">신고하기</a>
        </div>
      <form method="post" action="${pageContext.servletContext.contextPath }/teacher/inquiryAnswer">
        <table class="table table-hover" style="margin-top: 15px">
          <thead>
            <tr>
              <th>글 번호</th>
              <td style="width: 25%">${ inquiry.queNo }</td>
              <th>작성일</th>
              <td style="width: 25%">${ inquiry.queDate }</td>
            </tr>
            <tr>
              <th>작성자</th>
              <td style="width: 25%">${ inquiry.userName }</td>
              
              <th>답변일</th>
              <c:choose>
				<c:when test="${ empty inquiry.answer.answerTime  }">
              	<td style="width: 25%">-</td>
				</c:when>
				<c:otherwise>
               	<td style="width: 25%">${ inquiry.answer.answerTime }</td>
				</c:otherwise>              
              </c:choose>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="6" rowspan="" style="padding-top: 20px; padding-bottom: 20px;">
${ inquiry.queContent }
              </td>
            </tr>
            <tr>
              <td colspan="6" rowspan="" style="padding-top: 20px;">
              <c:choose>
				<c:when test="${ empty inquiry.answer.answerContent  }">
                <textarea style="resize: none;" name="answerContent" required="required" ></textarea>
				</c:when>
				<c:otherwise>
                <textarea style="resize: none;" name="answerContent" readonly="readonly">${ inquiry.answer.answerContent }</textarea>
				</c:otherwise>              
              </c:choose>
              </td>
            </tr>
          </tbody>
        </table><br>
        <input type="hidden" name="queNo" value="${ inquiry.queNo }">
        <input type="hidden" name="classType" value="${ info.classType }">
        <input type="hidden" name="clsNo" value="${ info.clsNo }">
        <input type="hidden" name="qNo" value="${ info.qNo }">
        <div style="display: flex; padding-left: 35%; margin: auto">
        <button class="btn btn-primary" type="button"  onclick="goBack();">이전</button>
        <c:choose>
		<c:when test="${ empty inquiry.answer.answerContent }">
        <button class="btn btn-primary" type="submit" style="margin-left: 10%;">답변작성</button>
		</c:when>
		<c:otherwise>
        <button class="btn btn-primary" type="submit" style="margin-left: 10%;" disabled="disabled">답변작성</button>
		</c:otherwise>              
        </c:choose>        
        </div>
      </form>
    </div>

	<script>
	  function goBack(){
		  location.href = "${pageContext.servletContext.contextPath }/teacher/userInquiry?classType=${ info.classType }&clsNo=${ info.clsNo }&queNo=${ info.queNo }";
	  }
	</script>
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
  </div>
  <jsp:include page="../commons/footer.jsp"/>
</body>
</html>