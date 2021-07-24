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
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png">
  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<style>
   html {

		position: relative;
		margin: 0;
		background: white;
	}
  .thumbnail-file-area input[type=file] {
    display:none;
  }
  .info{
    margin-bottom: 15px;
  }
  .infogroup>p{
    margin-bottom : -2px;
  }
</style>
</head>

<body>
  <div class="page-holder">
    <form method="post" action="${pageContext.servletContext.contextPath }/teacher/reportWrite">
    <!-- navbar-->
	<jsp:include page="../commons/header.jsp"/>
	
    <div class="hello" style="width: 90%; margin: 3% 3% 10% 10%; display: flex; height: 850px">
      
      <!-- SIDEBAR-->
      	<jsp:include page="../commons/sidebar.jsp"/>
      <!-- /SIDEBAR -->

      <!-- 본문 -->
     
      <div class="container" style="width: 80%; margin-left: 0px;">
        <div class="row">
          <div class="col-md-1"></div>
          <div class="col-md-9 form-group infogroup">
            <h4>신고하기</h4><br><br>
            <table class="table">
              <tbody>
                <tr>
                  <th style="width: 10%;">제목</th>
                  <th>
                    <input class="form-control" type="text" name="reportTitle">
                  </th>
                </tr>
                <tr>
                  <td style="width: 10%;">내용</td>
                  <td>
                    <textarea class="form-control" rows="15" style="resize: none;"  name="reportReason"></textarea>
                  </td>
                </tr>
              </tbody>
            </table>
            <hr>
          </div>
          <div class="col-md-2"></div>
          <div class="col-md-5"></div>
          <div class="col-md-2">
            <button type="button" style="background-color:white; border-radius: 5px; border: 1px solid rgba(0,0,0,0.08)">이전</button>
            <button type="submit" style="background-color:#fef0ae; border-radius: 5px; border: 1px solid #fef0ae">저장</button>
            <input type="hidden" name="reportToNo"; value="${ userNo }">
            <input type="hidden" name="clsNo"; value="${ clsNo }">
          </div>
          </div>
        </div>
      </div>
      </form>
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
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/t_WDC.js"></script>
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>


  <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </div>
  
  <jsp:include page="../commons/footer.jsp"/>
</body>

</html>