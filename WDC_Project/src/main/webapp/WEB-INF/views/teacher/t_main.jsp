<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>  

.reset-anchor {
    color: inherit;
    transition: all 0.3s;
    font-size: 16px;
}
   html {

		position: relative;
		margin: 0;
		background: white;
	}
		
    body {
        font-size: 15px;
		min-height: 100%;
    }
    .container {
	    width: 100%;
	    padding-right: 15px;
	    padding-left: 15px;
	    margin-right: auto;
	    margin-left: auto;
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
      	background-color: transparent !important;
    }

    .card-img-top {
      	width: 80%;
    }

    .card-body {
      	text-align: center;
    }
    .pagingArea button {
	background-color: #fef0ae;
	border: 1px solid #fef0ae;
	border-radius: 5px;
	}
	
	.side-body {
    text-align: right;
	}
	
	.col-sm-4 {
	    flex: 0 0 33.333333%;
	    max-width: 41% !important;
	 }
  </style>
  </head>
  <body>
  	<div class="page-holder">
  		<!-- header -->
		<%@ include file="commons/header.jsp" %>
<!--     <div class="wrapper">
 -->      	<div class="container">
        	<!-- sidebar -->
			<%@ include file="commons/sidebar.jsp" %>

        	<!-- main page -->
	        <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; margin-left: 50px;">
	          <div class="col-mb-12" id="notice" style="margin-top: 25px;">
	            <div class="card-header">▣ 공지사항</div>
	              <div class="card-body" style="padding: 0;">
	                <table class="table table-hover">
	                  <thead>
	                    <tr>
	                      <th>번호</th>
	                      <th>중요여부</th>
	                      <th>제목</th>
	                      <th>등록일</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                  <c:choose>
	                  <c:when test="${ empty noticeList }">
	                    <tr>
	                      <td colspan="4">등록된 공지사항이 없습니다. </td>
	                    </tr>
	                  </c:when>
	                  <c:otherwise>
	                    <c:forEach var="notice" items="${ noticeList }" varStatus="status">
	                    <tr>
	                      <td><c:out value="${ status.index + pageInfo.startRow}"/></td>
	                      <c:choose>
	                          <c:when test="${ notice.important eq 'Y'}">
	                              <td><b style="color: red">[중요]</b></td>  
	                          </c:when>
	                          <c:otherwise>
	                              <td>[일반]</td>  
	                          </c:otherwise>
	                      </c:choose>
	                          <td><a href="${pageContext.servletContext.contextPath }/teacher/noticeDetail?noticeNo=${ notice.no}"><c:out value="${ notice.title }"/></a></td>  
	                          <td><c:out value="${ notice.writeDate }"/></td>  
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

									<c:forEach var="p"
										begin="${ requestScope.pageInfo.startPage }"
										end="${ requestScope.pageInfo.endPage }" step="1">
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

									<c:forEach var="p"
										begin="${ requestScope.pageInfo.startPage }"
										end="${ requestScope.pageInfo.endPage }" step="1">
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

									<c:if
										test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
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
	          <br><br>
	          </div>        
	          <!-- 메인 하단 프로필 및 기타 정보 -->
	          <div class="col-sm-4" id="content-formatting" style="float: left; width: 435px; margin-left: 50px;">
	            <div class="card-header">▣ 강사 프로필
	            </div>
	            <div class="card-body" >
	            <c:choose>
	            	<c:when test="${empty teacherInfo.teacherPicture }">
	              		<img class="card-img-top" src="${pageContext.servletContext.contextPath }/resources/teacher/img/user.png" alt="Card image" style="height: 150px; width: 150px; border-radius: 100px"" ><br><br>
	            	</c:when>
	            	<c:otherwise>
	              		<img class="card-img-top" src="${pageContext.servletContext.contextPath }/resources/upload/${ teacherInfo.teacherPicture }" alt="Card image" style="height: 150px; width: 150px; border-radius: 100px"><br><br>
	            	</c:otherwise>
	            </c:choose>
	              <h5>${ teacherInfo.teacherName}</h5>
	              <p class="text-muted"></p>
	              <p class="text-warning"></p>
	              <p class="text-danger"></p>
	              <c:choose>
	                  <c:when test="${ empty teacherInfo.teacherIntro}">
			              <p class="text">등록된 소개글이 없습니다.</p>
	                  </c:when>
	                  <c:otherwise>
			              <pre class="text" align="left">${ teacherInfo.teacherIntro }</pre>
	                  </c:otherwise>
	              </c:choose>
	              <p class="text-primary"></p>
	              <p><button class="btn btn-primary" type="button" class="btn btn-primary" data-toggle="modal" data-target="#editProfile">편집</button></p>
	              <p style="padding-top: 50px;"></p>
	            </div>
	          </div>
	
	          <!-- 프로필편집 팝업 -->

              <form method="post" action="updateProfile" enctype="multipart/form-data">       			  
	          <div id="editProfile"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	            <div class="modal-dialog">
	              <div class="modal-content" >
	                <div class="modal-header">
	                  <h4 class="modal-title" id="gridSystemModalLabel">프로필편집</h4>
	                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                </div>
	                <div class="modal-body">
	                  <div class="container">
	                    <h6>프로필사진 편집</h6><br>
	                    <div class="row">
	                      <div class="col-md-3"></div>
	                      <div class="content-img-area1 col-md-6" id="contentImgArea1" align="center">
	                      <c:choose>
	                          <c:when test="${empty teacherInfo.teacherPicture }">
        	                      <img id="contentImg1" width="150" height="150" style="border-radius: 100px; cursor: pointer;" src="${pageContext.servletContext.contextPath }/resources/teacher/img/customer-2.png"">
	                          </c:when>
	                          <c:otherwise>
        	                      <img id="contentImg1" width="150" height="150;" style="border-radius: 100px; cursor: pointer;" src="${pageContext.servletContext.contextPath }/resources/upload/${teacherInfo.teacherPicture}" >
                                  <input type="hidden" value="${ teacherInfo.teacherPicture }" name="beforePic">
	                          </c:otherwise>
	                      </c:choose>
	                      <button  style="margin-top: 10px;" type="button" class="btn">사진등록</button>
	                      </div>

	                      <div class="thumbnail-file-area">
	                        <input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)">
	                      </div>
	                      <div class="col-md-3"></div>
	                    </div>
	                    <hr>
	                    <div class="form-group">
	                      <p>소개글 작성</p>
	                      <textarea class="form-control" rows="7" name="teacherIntro" style="resize: none;">${ teacherInfo.teacherIntro }</textarea>
	                    </div>
	
	                  </div>
	                </div>
	                <div class="modal-footer" style="display: block;" align="center">
	                  <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 200px; border: 1px solid rgba(0, 0, 0, 0.25);">작성취소</button>
	                  <button type="submit" class="btn btn-primary" style="width: 200px;">작성완료</button>
	                </div>
	              </div>
	            </div>
	          </div>
	          </form>
	          <!-- /프로필편집 팝업 -->
	          <!-- 프로필편집 안내 -->
           	  <c:if test="${ not empty profileMessage }">
        	      <script>
        	          alert("${profileMessage}");
        	      </script>
        	  </c:if>			  
	          <!-- /프로필편집 안내 -->
	          <div class="col-sm-4" style="float: left; margin-bottom: 30px; margin-left: 3%;">
	            <div class="card-header" id="profile">▣ 정산 정보
	            </div>
	            <div class="card-body" style="vertical-align: auto; height: 150px;">
	              <b>누적 정산 금액 : </b><br>
	              <c:choose>
	                  <c:when test="${ empty SumClassCalculate }">0 원</c:when>
	                  <c:otherwise>${ SumClassCalculate } 원</c:otherwise>
	              </c:choose>
	            </div>
	          </div>
	
	          <div class="col-sm-4" style="float: left; margin-left: 3%">
	            <div class="card-header" id="totalClass">▣ 클래스 정보         
	            </div>
	            <div class="card-body" style="margin-bottom: 100px">
	              <b>운영중인 클래스 수</b><br>
	              <p>${ RegistedClassCount }</p>
	            <div class="card-body"></div>
	              <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#classRegist">클래스 등록</button>
	            </div>
	          </div>
	        

        	<!-- 클래스1단계 등록 팝업 -->
	        <div id="classRegist"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="false">
	          <div class="modal-dialog modal-lg">
	            <div class="modal-content">
	              <!-- <div class="modal-header">
	                <h4 class="modal-title" id="gridSystemModalLabel">스케쥴등록</h4>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	              </div> -->
	              <div class="modal-body" style="margin-top: 20px;">
	                <div class="container" style=" padding-left: 20px;">
	                  <strong style="background-color: #fef0ae; border-radius: 5px; padding: 10px 15px 10px 15px;">클래스등록하기</strong>란?
	                  <p style="font-size: 13px; margin: 20px 0 0 0;">우동클 '클래스'에서 작가님의 재능을 공유해보세요.</p>
	                  <p style="font-size: 13px;">간단한 기본정보와 스케쥴 등록으로 직접 내가 클래스를 만들고 운영할 수 있어요!</p>
	                  <br>
	                  <h6>클래스 등록은 이렇게 운영돼요</h6>
	                  <div class="row">
	                    <div class="col-md-2" style="text-align: center; margin-left: 20px;font-size: 13px; border: 1px solid; padding: 3px 13px 3px 13px; border-radius: 5px;">Step1<br>클래스 등록 및 심사</div>
	                    <div style="text-align: center; font-size: 13px; width: 35px; margin-top: 15px;">></div>
	                    <div class="col-md-2" style="text-align: center; font-size: 13px; border: 1px solid; padding: 3px 13px 3px 13px; border-radius: 5px;">Step2<br> 클래스 승인</div>
	                    <div style="text-align: center; font-size: 13px; width: 35px; margin-top: 15px">></div>
	                    <div class="col-md-2" style="text-align: center; font-size: 13px; border: 1px solid; padding: 3px 13px 3px 13px; border-radius: 5px;">Step3<br> 수업진행 및 정산</div>
	                  </div>
	                  <br><br><hr><br>
	                  <h6>클래스등록을 시작해볼까요?</h6>
	                  <p style="font-size: 12px;">등록하려는 클래스의 카테고리를 선택해주세요.</p>
	                  <div class="row">
	                    <div class="col-md-11" style="border: 2px solid #fef0ae; border-radius: 5px; padding: 10px 20px 10px 20px; font-size: 13px; cursor: pointer;" onclick="location.href='${ pageContext.servletContext.contextPath}/classRegist/step1/O'">
	                        	원데이<br>
	                        *원데이란? 수강생과 하루 & 최대 6시간 내외로 수업하는 경우 선택해주세요.
	                    </div>
	                    <div class="col-md-1">
	                    </div>
	                    <div class="col-md-11" style="border: 2px solid #fef0ae; border-radius: 5px; margin-top: 20px; padding: 10px 20px 10px 20px; font-size: 13px; cursor: pointer;" onclick="location.href='${ pageContext.servletContext.contextPath}/classRegist/step1/R'">
	                      	정규과정<br>
	                      *정규과정이란? 수강생과 최소 2일 이상 수업하는 경우 선택해주세요.
	                    </div>
	                    <div class="col-md-1">
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <br><br>
	              <!-- <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	                <button type="button" class="btn btn-primary">다음</button>
	              </div> -->
	            </div>
	          </div>
	        </div>
        	<!-- /클래스1단계 등록 팝업 -->
      
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

      		<!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>

 	<!-- footer -->
	<%@ include file="commons/footer2.jsp" %> 
	<script>
	const link = "/wdc/teacher/main";
		
	if(document.getElementById("startPage")) {
		const $startPage = document.getElementById("startPage");
		$startPage.onclick = function() {
			location.href = link + "?currentPage=1";
		}
	}
	
	if(document.getElementById("prevPage")) {
		const $prevPage = document.getElementById("prevPage");
		$prevPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }";
		}
	}
	
	if(document.getElementById("nextPage")) {
		const $nextPage = document.getElementById("nextPage");
		$nextPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }";
		}
	}
	
	if(document.getElementById("maxPage")) {
		const $maxPage = document.getElementById("maxPage");
		$maxPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.pageInfo.maxPage }";
		}
	}
	
	if(document.getElementById("searchStartPage")) {
		const $searchStartPage = document.getElementById("searchStartPage");
		$searchStartPage.onclick = function() {
			location.href = searchLink + "?currentPage=1&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
	if(document.getElementById("searchPrevPage")) {
		const $searchPrevPage = document.getElementById("searchPrevPage");
		$searchPrevPage.onclick = function() {
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
	if(document.getElementById("searchNextPage")) {
		const $searchNextPage = document.getElementById("searchNextPage");
		$searchNextPage.onclick = function() {
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
	if(document.getElementById("searchMaxPage")) {
		const $searchMaxPage = document.getElementById("searchMaxPage");
		$searchMaxPage.onclick = function() {
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.maxPage }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
//	if(document.getElementsByTagName("td")) {
		
//		const $tds = document.getElementsByTagName("td");
//		for(let i = 0; i < $tds.length; i++) {
			
//			$tds[i].onmouseenter = function() {
//				this.parentNode.style.backgroundColor = "orangered";
//				this.parentNode.style.cursor = "pointer";
//			}
//			
//			$tds[i].onmouseout = function() {
//				this.parentNode.style.backgroundColor = "black";
//			}
			
//			$tds[i].onclick = function() {
//				alert(this.parentNode.children[0].innerText);
//			}
			
//		}
//		
//	}
	
	function pageButtonAction(text) {
		
		location.href = link + "?currentPage=" + text;
	}
	function seachPageButtonAction(text) {
		location.href = searchLink + "?currentPage=" + text + "&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
	}
	</script>  	
  </body>
</html>