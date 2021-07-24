<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
      text-align: center;
    }
    
    body {
      font-size: 15px;
      font-family: "Libre Franlin";
    }

    pre {
      font-family: "Libre Franlin";
      font-size: 15px;
    }

    td {
      width: 100%;
    }

    th {
      width: 100%;
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
        <div class="col-sm-3 step allStep"  id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/classDetail/${ clsNo }" style="font-size: 15; color: black"><b>상세정보</b></a>
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/classReviewList?classType=${ classType }&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/userInquiry?classType=${ classType }&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3 thisStep allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="#" style="font-size: 15; color: black"><b>출석 관리</b></a>
        </div>            
      </div>  
    
    <!-- 클래스 정보 -->
    <form method="post" action="${ pageContext.servletContext.contextPath }/teacher/regularAttendance">
    <div class="col-sm-12" id="content-formatting" style="float: left;">
    <h4>출석관리</h4><br><br>
      <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
        <div class="row" style="padding-bottom: 15px;">
          <div class="col-sm-9">
            <h5>[ ${ regularInfo.classTitle } ]</h5>
          </div>
          <div class="col-sm-2`" style="float: right;">
            <p><b>수업일 : </b></p>
          </div>
          <div class="col-sm-1" style="float: right;">
            <input type="date" required="required" name="attendanceDate">
          </div>
        </div>
        <div class="col-sm-12">
          <pre><b>진행 기간  :  </b>${ regularInfo.start} ~ ${ regularInfo.end }</pre>
        </div>  
        <div class="col-sm-12">
          <pre id="countInfo"><b>강의 횟수  :  </b>0회 / 총 ${ regularInfo.scheduleCount }회</pre>
        </div>        
        <div class="col-sm-12">
          <pre><b>수강 인원  :  </b>${ regularInfo.applyCount }명 / 최대 ${ regularInfo.maxPeople }명</pre>
        </div>
      </div>

      <!-- 출석표1 -->
      <div class="col-sm-12" id="content-formatting" style="float: left; height: 400px; overflow: auto;">
        <table class="table table-hover" style="text-align: center;">
          <thead>
            <tr>
              <th rowspan="2" nowrap style="vertical-align: middle;">번호</th>
              <th rowspan="2" nowrap style="vertical-align: middle;">이름</th>
              <c:forEach var="cnt" begin="1" end="${ regularInfo.scheduleCount }" step="1">
              <th nowrap>${ cnt }회차</th>
              </c:forEach>
            </tr>
            <tr>
              <c:forEach var="cnt" begin="1" end="${ regularInfo.scheduleCount }" step="1">
              <th><input type="checkbox" class="attendAllCheck${ cnt }" value="${ cnt }" id="all${ cnt }"onclick="allAttend(this);"></th>
              </c:forEach>
            </tr>
          </thead>
          <tbody>
            <c:choose>
            <c:when test="${ empty applyUserInfoList }">
              <td>신청인원이 없음</td>
            </c:when>
            <c:otherwise>
            <c:forEach var="applyUserInfo" items="${ applyUserInfoList }" varStatus="status">
            <tr>
              <td nowrap>${ status.count }</td>
              <td nowrap>${ applyUserInfo.userName }</td>
              <c:forEach var="cnt" begin="1" end="${ regularInfo.scheduleCount }" step="1">
                  <td><input type="checkbox" class="checkUser${cnt}"value="${ cnt }/${ applyUserInfo.aplNo }/${ applyUserInfo.userNo}" name="attendanceInfo"></td>
              </c:forEach>
            </tr>
            </c:forEach>
            </c:otherwise>
            </c:choose>
          </tbody>
        </table>
      </div>
      <div class="col-sm-12" id="content-formatting" style="float: left;">
        <div class='col-sm0-2' style="float:right; text-align: right; margin-top: 30px;">
        </div>
        <div class='col-sm-3' style="margin:auto; padding-top: 70px; padding-bottom: 50px;">
        <input type="hidden" value="${ regularInfo.scheduleNo }" name="scheduleNo">
        <input type="hidden" value="${ clsNo }" name="clsNo">
          <c:choose>
            <c:when test="${ empty applyUserInfoList }">
            
     	     <button type="submit" class="btn btn-primary" disabled="disabled">출석체크</button>
            </c:when>
            <c:otherwise>
     	     <button type="submit" class="btn btn-primary">출석체크</button>
            </c:otherwise>
            </c:choose>
        </div>
      </div>
    </div>
    <input type="hidden" name="lastCount" id="lastCount" value="0">
    </form>
   <script>
    window.onload = function(){
       
      if ("${ existingInfo }" != null && "${ existingInfo }".length > 0) {
        let existStep = [];
        let existApplyNo = [];
        let existMemberNo = [];
        
        <c:forEach items="${existingInfo}" var="list" varStatus="status">
          <c:choose>
            <c:when test="${ status.last}">
              existStep.push(${list.classStep});
              existMemberNo.push(${list.attendanceUser});
              existApplyNo.push(${list.attendanceApply});
              const lastDate = "${list.classDate}";
            </c:when>
            <c:otherwise>
              existStep.push(${list.classStep});
              existMemberNo.push(${list.attendanceUser}+"/");
              existApplyNo.push(${list.attendanceApply}+"/");
           /*    existApplyNo.push("/");
              existMemberNo.push("/"); */
            </c:otherwise>
          </c:choose>
        </c:forEach>

        existApplyNo = existApplyNo.toString().split("/");
        existMemberNo = existMemberNo.toString().split("/");
		
        for (var i = 0; i < existApplyNo.length; i++) {
          if (i == 0) {
 /*            existApplyNo[i] = existApplyNo[i].slice(0, existApplyNo[i].length - 1);
            existMemberNo[i] = existMemberNo[i].slice(0, existMemberNo[i].length - 1); */
            
          } else if (i == existApplyNo.length - 1) {
            existApplyNo[i] = existApplyNo[i].slice(1, existApplyNo[i].length);
            existMemberNo[i] = existMemberNo[i].slice(1, existMemberNo[i].length);
          } else {
            existApplyNo[i] = existApplyNo[i].slice(1, existApplyNo[i].length);
            existMemberNo[i] = existMemberNo[i].slice(1, existMemberNo[i].length);
          }
        };
        let applyNoList = [];
        let memberNoList = [];

        for (var i = 0; i < existApplyNo.length; i++) {
          applyNoList.push(existApplyNo[i].split(','));
          memberNoList.push(existMemberNo[i].split(','));
        }
        for (var i = 1; i <= existStep.length; i++) {
          var allClass = document.getElementsByClassName("attendAllCheck" + i);
          var userClass = document.getElementsByClassName("checkUser" + i);
          allClass[0].disabled = true;
		
          var index = []; 
          index = applyNoList[i-1].length;
			
          var existValue = "";
          for (var j = 0; j < userClass.length; j++) {

            userClass[j].disabled = "true";
            userClass[j].name = "";
            for (var k = 0; k < applyNoList[i-1].length; k++) {
            	console.log("k의횟수 : " + applyNoList.length);
              existValue = i + "/" + applyNoList[i - 1][k] + "/" + memberNoList[i - 1][k];
              console.log("value : " + existValue);
              if (userClass[j].value == existValue) {
                userClass[j].checked = true;
              }
            }
          }
        }

        for(var i = existStep.length+2; i <= "${ regularInfo.scheduleCount }"; i++){

          var allClass = document.getElementsByClassName("attendAllCheck" + i);
          var userClass = document.getElementsByClassName("checkUser" + i);
          allClass[0].disabled = true;

          for(var j = 0; j < userClass.length; j++){
            userClass[j].disabled=true;
          }
        }
        var classCount = existStep.length;
        document.getElementById("countInfo").innerHTML = "<b>강의 횟수  :  </b>"+classCount+"회 / 총 ${ regularInfo.scheduleCount }회";
        document.getElementById("lastCount").value = classCount;
      }

    }
   </script>
   <script>
   function allAttend(p){
      let id = document.getElementById(p.id);
      let className = "checkUser" + p.value;
      let classUser = document.getElementsByClassName(className);
      if(id.checked){
         for(var i = 0; i < classUser.length; i++){
            classUser[i].checked = true;
         } 
      } else {
         for(var i = 0; i < classUser.length; i++){
            classUser[i].checked = false;
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
     <jsp:include page="../commons/footer.jsp"/> 
</body>
</html>