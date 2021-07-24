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
      font-size: 13px;
    }

    a{
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
    <%@ include file="../commons/header.jsp" %>

    <div class="container">
    <%@ include file="../commons/sidebar.jsp" %>
<!--       <div class="col-lg-2 order-1 order-lg-1" style="float: left;">
        <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black; text-align: center;"><h2>홈</h1></a></h5>
        <div class="py-2 px-4 bg-light mb-3"><h5>클래스 관리</h5></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="t_classManagement.html">클래스 관리</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><h5>매출/정산</h5></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="t_balanceList.html">정산내역 관리</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><h5>문의하기</h5></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
          <li class="mb-2"><a class="reset-anchor" href="t_Inquiry.html">관리자 문의</a></li>
          <li class="mb-2"><a class="reset-anchor" href="t_inquiryList.html">문의내역 관리</a></li>
          <li class="mb-2"><a class="reset-anchor" href="t_FAQ.html">자주 묻는 질문</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
      </div> -->
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left;">
          <div class="col-sm-12" id="content-formatting" style="float: left;">
        <form action="${pageContext.servletContext.contextPath }/teacher/teacherInquiryList" method="get">
            <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
              <P style="font-size: 20px; font-weight: bold; margin-top: 25px;" >문의내역<P>
            <hr>
            </div>
            <div class="row" style="margin-left: 30px;">
              <div class='col-sm-2'>
                <select class="custom-select mr-sm-2" id="inquiryReply" name="inquiryReply">
                	<option value="none" selected>전체</option>
                	<option value="N" onclick="alert()">처리 중</option>
                	<option value="Y">답변완료</option>
                </select>
              </div>
              <div class='col-sm-6' style="float: left;">
                <!-- <input type="text" class="form-control" id="search"> -->
                  <button type="submit" class="btn btn-primary">적용</button>
                  <button type="reset" class="btn btn-primary" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/teacherInquiryList'">초기화</button>
              </div>
              
         <!-- <div class='col-sm-6'>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary">검색</button>
                  <button type="reset" class="btn btn-primary">초기화</button>                  
                </div>
              </div> -->
            </div>
          </form>
            <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 25px; height: 800px; margin-left: 25px;">
              <table class="table table-hover" style="text-align: center; margin-bottom: 30px; font-size: 15px;">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>문의 날짜</th>
                    <th>답변 여부</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="QnAList" items="${ adminQnAList }" varStatus="status">
                  <tr>
                    <td>${ pageInfo.startRow + status.index }</td>
                    <td><a href="${pageContext.servletContext.contextPath }/teacher/teacherInquiryDetail?questinoNo=${QnAList.queNo }&answer=${QnAList.answerYn}">${ QnAList.queTitle }</a></td>
                    <td>${ QnAList.queDate }</td>
                    <c:choose>
                      <c:when test="${ QnAList.answerYn eq 'Y' }">
                      <td>답변완료</td>
                      </c:when>
                      <c:otherwise>
                      <td>처리중</td>
                      </c:otherwise>
                    </c:choose>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
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
	<script>
	  window.onload = function(){
		  let beforeInquiryReply = "${ inquiryReply }";

		  if(beforeInquiryReply != null && beforeInquiryReply.length > 0){
		  
			  let inquiryReply = document.getElementById("inquiryReply");
			  
			  for(var i = 0; i < inquiryReply.length; i++){
				  if(inquiryReply[i].value == beforeInquiryReply){
					  inquiryReply[i].selected = true;					  
				  }
			  }
		  }
		  
	  }
	</script>
	<script>
    const link = "${pageContext.servletContext.contextPath }/teacher/teacherInquiryList";
	console.log(inquiryReply);
    if(document.getElementById("startPage")) {
		const $startPage = document.getElementById("startPage");
		$startPage.onclick = function() {
	    	let inquiryReply = document.getElementById("inquiryReply").value;
			location.href = link + "?currentPage=1"+ "&inquiryReply="+inquiryReply;
		}
	}
	
	if(document.getElementById("prevPage")) {
		const $prevPage = document.getElementById("prevPage");
		$prevPage.onclick = function() {
	    	let inquiryReply = document.getElementById("inquiryReply").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }"+ "&inquiryReply="+inquiryReply;
		}
	}
	
	if(document.getElementById("nextPage")) {
		const $nextPage = document.getElementById("nextPage");
		$nextPage.onclick = function() {
	    	let inquiryReply = document.getElementById("inquiryReply").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }"+ "&inquiryReply="+inquiryReply;
		}
	}
	
	if(document.getElementById("maxPage")) {
		const $maxPage = document.getElementById("maxPage");
		$maxPage.onclick = function() {
			    let inquiryReply = document.getElementById("inquiryReply").value;
				location.href = link + "?currentPage=${ requestScope.pageInfo.maxPage }"+ "&inquiryReply="+inquiryReply;
		}
	}
	
	function pageButtonAction(text) {
	    let inquiryReply = document.getElementById("inquiryReply").value;
		location.href = link + "?currentPage=" + text + "&inquiryReply="+inquiryReply;
	}
	</script>    
</body>
</html>