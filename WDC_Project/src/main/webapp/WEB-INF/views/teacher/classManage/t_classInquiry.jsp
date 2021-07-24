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
      text-align: center;
    }

    body {
      font-size: 15px;
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
		h1, .h1 {
	    font-size: 1.7rem !important;
	}
	
	hr{
		margin-left: -55px !important;
	}
	.pagingArea button {
	  background-color: #fef0ae;
	  border: 1px solid #fef0ae;
	  border-radius: 5px;
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
              <a href="${pageContext.servletContext.contextPath }/teacher/classReviewList?classType=${ classType }&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>후기</b></a>          
            </div>
            <div class="col-sm-3 thisStep allStep" id="content-formatting" style="float: left; margin: auto;">
              <a href="#" style="font-size: 15; color: black"><b>고객문의</b></a>
            </div>
            <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
              <a href="${pageContext.servletContext.contextPath }/teacher/studentManagement?classType=${ classType }&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>출석 관리</b></a>
            </div>            
        </div>  
    
    <!-- 문의 게시판 -->
    <div class="col-sm-12" id="content-formatting" style="float: left; height: 800px">
    <h4 style="margin-bottom: 25px">고객문의</h4>
    <form method="get" action="${pageContext.servletContext.contextPath }/teacher/userInquiry">
        <div class='col-sm-12' >
          <div class="form-group">
            <div class="row">
              <div class='col-sm-3'>
                <select class="form-control" name="replyStatus" id="replyStatus">
                	<option value="A">선택</option>
                	<option value="yet">답변 대기</option>
                	<option value="complete">답변 완료</option>
                </select>
              </div>
              <div class='col-sm-6'>
                <button type="submit" class="btn btn-primary">검색</button>
                <input type="hidden" name="clsNo" value="${ clsNo }">   
                <button type="button" class="btn btn-primary" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/userInquiry?clsNo=${ clsNo }&replyStatus=A'">초기화</button>   
              </div>
            </div>
            </div>
        </div>
    </form>
	<br>
      <div class="col-sm-12" id="content-formatting" style="float: left;">
        <table class="table table-hover" style="text-align: center;">
          <thead>
            <tr>
              <th>번호</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>답변</th>
            </tr>
          </thead>
          <tbody>
          <c:choose>
          <c:when test="${ empty inquiryList }">
          <tr>
            <td colspan="5">조회된 결과 없음.</td>
          </tr>
          </c:when>
          <c:otherwise>
            <c:forEach var="inquiry" items="${ inquiryList }" varStatus="status">
              <tr>
                <td>${ pageInfo.startRow + status.index }</td>
                <td><a href="${pageContext.servletContext.contextPath }/teacher/userInquiryDetail?classType=${ classType }&clsNo=${ clsNo }&queNo=${ inquiry.queNo }">${ inquiry.userName }</a></td>
                <td>${ inquiry.queDate }</td>
                <c:choose>
                <c:when test="${ not empty inquiry.answer.answerContent}">
                  <td>답변완료</td>
                </c:when>
                <c:otherwise>
                  <td>답변대기</td>
                </c:otherwise>
                </c:choose>
              </tr>
            </c:forEach>
          </c:otherwise>
          </c:choose>
          </tbody>
        </table><br><br>
                <nav aria-label="...">
						<div class="pagingArea" align="center">
							<c:choose>
								<c:when test="${ empty requestScope.searchValue }">
									<button id="startPage"><<</button>

									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<button  disabled ><</button>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<button id="prevPage"><</button>
									</c:if>

									<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }"	end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<button disabled>
												<c:out value="${ p }" />
											</button>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<button onclick="pageButtonAction(this.innerText);">
												<c:out value="${ p }" />
											</button>
										</c:if>
									</c:forEach>

									<c:if
										test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<button disabled >></button>
									</c:if>
									<c:if
										test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<button id="nextPage">></button>
									</c:if>

									<button id="maxPage">>></button>
								</c:when>
								<c:otherwise>
									<button id="searchStartPage"><<</button>

									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<button  disabled><</button>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<button id="searchPrevPage" ><</button>
									</c:if>

									<c:forEach var="p"	begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<button disabled>
												<c:out value="${ p }" />
											</button>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<button  onclick="seachPageButtonAction(this.innerText);">
												<c:out value="${ p }" />
											</button>
										</c:if>
									</c:forEach>

									<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<button disabled>></button>
									</c:if>
									<c:if
										test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<button id="searchNextPage" >></button>
									</c:if>

									<button id="searchMaxPage" >>></button>
								</c:otherwise>
							</c:choose>
						</div>
					</nav>
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
  </div>
 </div>
  <jsp:include page="../commons/footer.jsp"/>
  <script>
    const link = "${pageContext.servletContext.contextPath }/teacher/teacherClassManagement";
	if(document.getElementById("startPage")) {
		const $startPage = document.getElementById("startPage");
		$startPage.onclick = function() {
    		let replyStatus = document.getElementById("replyStatus").value;
			location.href = link + "?currentPage=1" + "&replyStatus="+replyStatus;
		}
	}
	
	if(document.getElementById("prevPage")) {
		const $prevPage = document.getElementById("prevPage");
		$prevPage.onclick = function() {
			let classType = document.getElementById("classType").value;
			let proceed = document.getElementById("proceed").value;
			let decision = document.getElementById("decision").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }" + "&replyStatus="+replyStatus;
		}
	}
	
	if(document.getElementById("nextPage")) {
		const $nextPage = document.getElementById("nextPage");
		$nextPage.onclick = function() {
			let classType = document.getElementById("classType").value;
			let proceed = document.getElementById("proceed").value;
			let decision = document.getElementById("decision").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }" + "&replyStatus="+replyStatus;
		}
	}
	
	if(document.getElementById("maxPage")) {
		const $maxPage = document.getElementById("maxPage");
		$maxPage.onclick = function() {
			let classType = document.getElementById("classType").value;
			let proceed = document.getElementById("proceed").value;
			let decision = document.getElementById("decision").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.maxPage }" + "&replyStatus="+replyStatus;
		}
	}
	
	function pageButtonAction(text) {
   		
		let classType = document.getElementById("classType").value;
		let proceed = document.getElementById("proceed").value;
		let decision = document.getElementById("decision").value;

   		location.href = link + "?currentPage=" + text  + "&replyStatus="+replyStatus;
	}
  </script>  
  <script>
	  window.onload = function(){
		  let beforeReplyStatus = "${ replyStatus }";
		  console.log(beforeReplyStatus)
		  if(beforeReplyStatus != null && beforeReplyStatus.length > 0){
		  
			  let replyStatus = document.getElementById("replyStatus");
			  
			  for(var i = 0; i < replyStatus.length; i++){
				  if(replyStatus[i].value == beforeReplyStatus){
					  replyStatus[i].selected = true;					  
				  }
			  }
		  }
	  }
	</script>    
</body>
</html>