<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png">
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
      font-size: 15px;
      text-align: center;
    }

    a {
       color: black !important;
       text-decoration: unset !important;
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
	
	.col-sm-6{
		width:300px !important;
	}
	
	.manageTb{
		margin-left: 15px !important;
	    width: 972px;
	    padding-top: 22px;
	    padding-bottom: 20px;
	    background-color: #f7f6f5;
	    margin-top: 30px;
	    text-align: center;
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
<!--       <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        
        상단 메뉴바
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
          <a href="t_classAttendance.html" style="font-size: 15; color: black"><b>수강생 관리</b></a>
        </div>            
      </div>  --> 
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left;">
          <div class="col-sm-12" id="content-formatting" style="float: left;">
            <div class="row" style="width: 1000px;">
              
              <form method="get" action="${pageContext.servletContext.contextPath }/teacher/teacherClassManagement">
              <div class="row manageTb"> 
              <div class='col-sm-2' style="float: left; margin-left: 125px;">
                <a style="margin-top: 13px;" >* 클래스 타입</a>              
                <div class="col-auto my-1">
                    <select class="custom-select mr-sm-2" id="classType" style="width:120px" name="classType">
                      <option selected value="none">선택</option>
                      <option value="O">원데이</option>
                      <option value="R">정규일정</option>
                    </select>  
                </div>
              </div>  
              <div class='col-sm-2' style="float: left;">
                <a style="margin-top: 13px;">* 심사 상태</a>
                <div class="col-auto my-1">
                  <select class="custom-select mr-sm-2" id="decision" style="width:120px" name="decision">
                    <option selected value="none">선택</option>
                    <option value="W">대기</option>
                    <option value="F">응원진행중</option>
                    <option value="S">승인완료</option>
                    <option value="L">응원수미달</option>
                    <option value="R">거절</option>
                  </select>
                </div>
              </div>
                <div class='col-sm-2' style="float: left;">
                  <a style="margin-top: 13px;">* 클래스 상태</a>              
                  <div class="col-auto my-1">
                      <select class="custom-select mr-sm-2" id="proceed" style="width:120px" name="proceed">
                        <option selected value="none">선택</option>
                        <option value="Y">진행전</option>
                        <option value="P">진행중</option>
                        <option value="E">종료</option>
                      </select>  
                  </div>
                </div>
                <div class='col-sm-3' style="float: left;">
                  <h5 style="margin-left: 1px;"></h5>
                  <div class="col-auto my-1" style="padding-top: 15px;">
                    <!-- <input type="text" class="form-control" id="search"> -->
                    <button type="submit" class="btn btn-primary" >적용</button>
                    <button type="reset" class="btn btn-primary" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/teacherClassManagement'">초기화</button>
                  </div>
                </div>
              </div>
             </form>
                 
              <!-- 결과 게시판 -->
              <div class="col-sm-12" id="content-formatting" style="float: left; padding-bottom: 300px;">
                <table class="table table-hover" style="margin-bottom: 50px">
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th style="width: 480px;">클래스 이름</th>
                      <th>타입</th>
                      <th>가격</th>
                      <th>상태</th>
                      <th>심사상태 </th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:choose>
                  <c:when test="${ empty classList }">
                  <td colspan="6">조회된 결과 없음</td>
                  </c:when>
                  <c:otherwise>
                  <c:forEach items="${ classList }" var="classList"  varStatus="status">
                    <tr>
                      <td><c:out value="${ pageInfo.startRow + status.index }"/></td>
                      <td><a href="${pageContext.servletContext.contextPath }/teacher/classDetail/${classList.clsNo}">${ classList.title }</a></td>
                      <c:choose>
                          <c:when test="${ classList.schedule.scheduleType == 'I'}">
                              <td> 원데이(개별일정)</td>
                          </c:when>
                          <c:when test="${ classList.schedule.scheduleType == 'D'}">
                              <td> 원데이(요일반복)</td>
                          </c:when>
                          <c:when test="${ classList.schedule.scheduleType == 'R'}">
                              <td> 정규과정</td>
                          </c:when>
                      </c:choose>
                      <td>${ classList.price }</td>
                      <c:choose>
                          <c:when test="${ classList.status eq 'Y' }"><td>진행전</td></c:when>
                          <c:when test="${ classList.status eq 'P' }"><td>진행중</td></c:when>
                          <c:when test="${ classList.status eq 'E' }"><td>종료</td></c:when>
                      </c:choose>
                      <c:choose>
                          <c:when test="${ classList.dicsionStatus eq 'W' }"><td>대기</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'R' }"><td>거절</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'F' }"><td>응원진행중</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'S' }"><td>승인완료</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'L' }"><td>응원수미달</td></c:when>
                      </c:choose>
                    </tr>
                  </c:forEach>
                  </c:otherwise>
                  </c:choose>
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

    </div>
  </div>
    <jsp:include page="../commons/footer.jsp"/>
    <!-- JavaScript files-->
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
    
  

  <script>
    const link = "${pageContext.servletContext.contextPath }/teacher/teacherClassManagement";
	if(document.getElementById("startPage")) {
		const $startPage = document.getElementById("startPage");
		$startPage.onclick = function() {
    		let classType = document.getElementById("classType").value;
    		let proceed = document.getElementById("proceed").value;
    		let decision = document.getElementById("decision").value;
			location.href = link + "?currentPage=1" + "&classType="+classType+"&decision="+decision+"&proceed="+proceed;
		}
	}
	
	if(document.getElementById("prevPage")) {
		const $prevPage = document.getElementById("prevPage");
		$prevPage.onclick = function() {
			let classType = document.getElementById("classType").value;
			let proceed = document.getElementById("proceed").value;
			let decision = document.getElementById("decision").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }" + "&classType="+classType+"&decision="+decision+"&proceed="+proceed;
		}
	}
	
	if(document.getElementById("nextPage")) {
		const $nextPage = document.getElementById("nextPage");
		$nextPage.onclick = function() {
			let classType = document.getElementById("classType").value;
			let proceed = document.getElementById("proceed").value;
			let decision = document.getElementById("decision").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }" + "&classType="+classType+"&decision="+decision+"&proceed="+proceed;
		}
	}
	
	if(document.getElementById("maxPage")) {
		const $maxPage = document.getElementById("maxPage");
		$maxPage.onclick = function() {
			let classType = document.getElementById("classType").value;
			let proceed = document.getElementById("proceed").value;
			let decision = document.getElementById("decision").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.maxPage }" + "&classType="+classType+"&decision="+decision+"&proceed="+proceed;
		}
	}
	
	function pageButtonAction(text) {
   		
		let classType = document.getElementById("classType").value;
		let proceed = document.getElementById("proceed").value;
		let decision = document.getElementById("decision").value;

   		location.href = link + "?currentPage=" + text  + "&classType="+classType+"&decision="+decision+"&proceed="+proceed;
	}
	</script>
	<script>
	  window.onload = function(){
		  let beforeClassType = "${ classType }";
		  let beforeDecision = "${ decision }";
		  let beforeProceed = "${ proceed }";

		  if(beforeClassType != null && beforeClassType.length > 0){
		  
			  let classType = document.getElementById("classType");
			  
			  for(var i = 0; i < classType.length; i++){
				  if(classType[i].value == beforeClassType){
					  classType[i].selected = true;					  
				  }
			  }
		  }

		  if(beforeDecision != null && beforeDecision.length > 0){
		  
			  let decision = document.getElementById("decision");
			  
			  for(var i = 0; i < decision.length; i++){
				  if(decision[i].value == beforeDecision){
					  decision[i].selected = true;					  
				  }
			  }
		  }
		  if(beforeProceed != null && beforeProceed.length > 0){
		  
			  let proceed = document.getElementById("proceed");
			  
			  for(var i = 0; i < proceed.length; i++){
				  if(proceed[i].value == beforeProceed){
					  proceed[i].selected = true;					  
				  }
			  }
		  }
	  }
	</script>  	
</body>
</html>