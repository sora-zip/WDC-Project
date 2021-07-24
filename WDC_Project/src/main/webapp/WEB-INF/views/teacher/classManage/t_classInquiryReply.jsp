<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    }

    table {
      margin: auto;
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
    <jsp:include page="../commons/header.jsp"/>

    <div class="container">
        <!-- sidebar -->
        <jsp:include page="../commons/sidebar.jsp"/>
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classDetail.html" style="font-size: 15; color: black"><b>상세정보</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classReview.html" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classInquiry.html" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classAttendance.html" style="font-size: 15; color: black"><b>출석 관리</b></a>
        </div>            
      </div>  
    
    <!-- 문의 게시판 -->
    <div class="col-sm-10" id="content-formatting" style="float: left;">
      <form>
        <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
          <h4>고객문의</h4>
        </div>
        <div class="sol-sm-2" style="text-align: right;">
          <a href="t_reportWrite.html" style="color: black;">신고하기</a>
        </div>
        <table class="table table-hover">
          <thead>
            <tr>
              <th>글 번호</th>
              <td colspan="3">61</td>
              <th>작성일</th>
              <td style="width: 25%">2021-05-20</td>
            </tr>
            <tr>
              <th>제목</th>
              <td colspan="3">정산 일자가 지났는데 아직 입금이 안됐어요</td>
              <th>답변일</th>
              <td style="width: 25%">2021-05-21</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="6" rowspan="" style="padding-top: 20px; padding-bottom: 20px;">
                동해 물과 백두산이 마르고 닳도록
                하느님이 보우하사 우리나라 만세.
                무궁화 삼천리 화려 강산
                대한 사람, 대한으로 길이 보전하세.<br>
                
                남산 위에 저 소나무, 철갑을 두른 듯
                바람 서리 불변함은 우리 기상일세.
                무궁화 삼천리 화려 강산
                대한 사람, 대한으로 길이 보전하세.<br><br>
                
                남산 위에 저 소나무, 철갑을 두른 듯
                바람 서리 불변함은 우리 기상일세.
                무궁화 삼천리 화려 강산
                대한 사람, 대한으로 길이 보전하세.   
              </td>
            </tr>
            <tr>
              <td colspan="6" rowspan="" style="padding-top: 20px; padding-bottom: 20px;">
                <p><b>강사 답변</b></p>
                동해 물과 백두산이 마르고 닳도록
                하느님이 보우하사 우리나라 만세.
                무궁화 삼천리 화려 강산
                대한 사람, 대한으로 길이 보전하세.<br>
                
                남산 위에 저 소나무, 철갑을 두른 듯
                바람 서리 불변함은 우리 기상일세.
                무궁화 삼천리 화려 강산
                대한 사람, 대한으로 길이 보전하세.<br><br>
                
                남산 위에 저 소나무, 철갑을 두른 듯
                바람 서리 불변함은 우리 기상일세.
                무궁화 삼천리 화려 강산
                대한 사람, 대한으로 길이 보전하세.   
              </td>
            </tr>
          </tbody>
        </table><br><br><br><br>
        <button class="btn btn-primary" type="button" style="margin-left: 40%;" onclick="location.href='t_classInquiry.html'">확인</button>



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
  
  <jsp:forward page="../commons/footer.jsp"></jsp:forward>
</body>
<html>