<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      text-align: center;
    }
    
    body {
      font-size: 15px;
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
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        <div class="col-lg-12 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px; margin-top: 30px;">
        <div class="row" style="width:1000px; margin-bottom : 25px;">
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/classDetail/${ clsNo }" style="font-size: 15; color: black"><b>상세정보</b></a>
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/classReviewList?classType=${classType}&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/userInquiry?classType=${classType}&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3 thisStep allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="#" style="font-size: 15; color: black"><b>출석 관리</b></a>
        </div>            
      </div>  
    
    <!-- 문의 게시판 -->
    <div class="col-sm-12" id="content-formatting" style="float: left; margin-left: 70px">
    <h4>출석관리</h4>
      <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
        <p style="font-size: 18px; float: right;">수업일 : ${ classDate }</p>
      </div>
      <div align="right">
        <button id="attendanceButton"type="button" class="btn btn-primary" style="margin-right: 50px" onclick="attendanceChange(this);" value="0">전체출석</button>
      </div>
      <form method="post" action="${pageContext.servletContext.contextPath }/teacher/oneDayAttendanceUpdate">
      <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 20px; min-height: 500px">
        <table class="table table-hover" style="text-align: center;">
          <thead>
            <tr>
              <th>번호</th>
              <th>이름</th>
              <th>연락처</th>
              <th>신청인원</th>
              <th>참석 여부</th>
              <th>출석 확인</th>
            </tr>
          </thead>
          <tbody>
          <c:choose>
          <c:when test="${ empty applyInfoList }">
            <td colspan="5">신청인원이 없습니다.</td>
          </c:when>
          <c:otherwise>
            <c:forEach var="applyUser" items="${ applyInfoList }" varStatus="status">
            <input type="hidden" value=${ applyUser.aplNo} name="allApplyNo">
            <tr>
              <td>${ status.count }</td>
              <td>${ applyUser.userName }</td>
              <td>${ applyUser.userPhone }</td>
              <td>${ applyUser.ppl }</td>
              <c:choose>
                <c:when test="${ applyUser.attStatus eq 'Y'}">
                <td>참석</td>
                <td><input type="checkbox" checked="checked" value="${ applyUser.aplNo }" name="checkedApplyNo"></td>
                </c:when>
                <c:otherwise>
                <td>미참석</td>
                <td><input type="checkbox" value="${ applyUser.aplNo }" name="checkedApplyNo"></td>
                </c:otherwise>
              </c:choose>
            </tr>
            
            </c:forEach>
          </c:otherwise>
          </c:choose>

          </tbody>
<!--           <tfoot>
            <tr>
              <td> </td>
              <td> </td>
              <td> </td>
              <th>총 인원</th>
              <td>3명</td>
            </tr>
          </tfoot> -->
        </table><br><br>
        <div class='col-sm-12' style="margin:auto; padding-bottom: 50px; ">
        <input type="hidden" name="clsNo" value=${ clsNo }>
        <input type="hidden" name="classType" value=${ classType }>
        <input type="hidden" name="scheduleNo" value=${ scheduleNo }>
        <input type="hidden" name="classDate" value= ${ classDate }>
        <c:choose>
          <c:when test="${ empty applyInfoList }">
          <button type="button" class="btn btn-primary" style="margin-left: 0px" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/studentManagement?classType=${classType}&clsNo=${ clsNo }'">목록으로</button>   
          </c:when>
          <c:otherwise>
          <button type="button" class="btn btn-primary" style="margin-left: 0px" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/studentManagement?classType=${classType}&clsNo=${ clsNo }'">목록으로</button>   
          <button type="submit" class="btn btn-primary" style="margin-left: 250px">수업시작</button>   
             
          </c:otherwise>
          </c:choose>
        </div>

      </div>
      </form>
    </div>
    <script>
	function attendanceChange(p){
		
		var checkboxList = document.getElementsByName("checkedApplyNo");
		if(p.value == 0){
			for(var i = 0; i < checkboxList.length; i++){
				checkboxList[i].checked = true;
				p.value = 1;
			}
		} else {
			
			for(var i = 0; i < checkboxList.length; i++){
				checkboxList[i].checked = false;
				p.value = 0;
			}
		}
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
  </div>
  <jsp:include page="../commons/footer.jsp"/>
</body>
</html>