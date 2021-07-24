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
    body {
      font-size: 15px;
    }

    table {
      text-align: center;
      font-size: 13px;
      color: black;
    }

    a {
      color: black;
    }
    
   
    nav {
      padding-top: 50px;
    }

    textarea {
      padding-top: 10px;
      width: 100%;
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
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 0px;">
                <div class="col-lg-12 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px; margin-top: 30px;">
        <div class="row" style="width:1000px; margin-bottom : 25px;">
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/classDetail/${ clsNo }" style="font-size: 15; color: black"><b>상세정보</b></a>
        </div>
        <div class="col-sm-3 thisStep allStep"  id="content-formatting" style="float: left; margin: auto;">
          <a href="#" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/userInquiry?classType=${ classType }&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3 step allStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/studentManagement?classType=${ classType }&clsNo=${ clsNo }" style="font-size: 15; color: black"><b>수강생 관리</b></a>
        </div>            
      </div>  
    
    <!-- 문의 게시판 -->
    <c:if test="${not empty message }">
    <script>
        alert("${message}");
    </script>
    </c:if>
    <div class="col-sm-10" id="content-formatting" style="float: left;">
    <h4>후기</h4>
        <!-- 리뷰 탭 -->
          <div class="p-4 p-lg-5 bg-white">
          <div style="display: flex;">
          <p>평점 : ${ avgScore }</p>
          <ul class="list-inline mb-2" style="margin: 0px 10px 0px 10px;">
          <c:forEach var="i" begin="1" end="${ requestScope.avgScore }" step="1">
            <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
          </c:forEach>
          <c:if test="${ requestScope.classStar.avgScore % 1 ne 0 }">
            <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
          </c:if>
          </ul>
          <p> / 리뷰 수 : ${ reviewCount } 개</p>
          </div>
          <hr>
          <br>
            <div class="row" style="min-height: 800px">
              <div class="col-lg-12">
                <div style="display:flex;">
                </div>
                <c:choose>
                <c:when test="${ reviewCount eq 0 }">
                <p>등록된 리뷰가 없습니다.</p>
                </c:when>
                <c:otherwise>
               
                <!-- 리뷰1 -->
                <c:forEach var="review" items="${ reviewList }">
                <div class="media mb-3">
                  <div class="media-body ml-3">
                    <div class="col-sm-12">
                      <div style="display: flex;">
                      <h6 class="mb-0 text-uppercase">${ review.userName } 수강생</h6>
                      <p class="small text-muted mb-0 text-uppercase" style="margin-left: 20px;">${ review.reviewEnrollDate }</p>
                      </div>
					  <ul class="list-inline mb-2" style="margin: 10px 0px 0px 0px; display: flex;">
					  <c:forEach var="i" begin="1" end="${ review.reviewScore }" step="1">
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      </c:forEach>
                      <c:if test="${ requestScope.classStar.avgScore % 1 ne 0 }">
                      <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                      </c:if>
                      <li style="margin-left: 10px"><p>${ review.reviewScore }</p></li>
                      </ul>
                      <img class="review-img" width="150px" height="150px" style="border-radius: 10%; margin-top: 8px" src="${pageContext.servletContext.contextPath }/resources/upload/${ review.reviewPic }">
                      <pre class="text-small mb-0 text-muted" style="margin-top: 15px">${ review.reviewContent }</pre>
                      <br>
                      <c:choose>
                      <c:when test="${ empty review.answer.ansContent }">
                      <form method="post" action="${pageContext.servletContext.contextPath }/teacher/reviewAnswer" onsubmit="return contentCheck(${review.reviewNo});">
                      <div class="col-sm-12" style="padding: 0px;">
                        <textarea style="resize: none;" name="ansContent" id="content${ review.reviewNo }"></textarea>
                      </div>
                      <div class="col-sm-12" style="padding: 0px; text-align: center;">
                      <input type="hidden" value="${ clsNo }" name="clsNo">
                      <input type="hidden" value="${ classType }" name = "classType">
                      <input type="hidden" value="${ review.reviewNo }" name = "reviewNo">
                      <input type="hidden" value="${ pageInfo.currentPage }" name = "currentPage">
                      <button class="btn btn-sm btn-primary" type="submit">답변작성</button>
                      </div>                    
                      </form>
                      </c:when>
                      <c:otherwise>
                      <div class="media mb-3" style="border: 1px solid rgba(0,0,0,0.08); padding: 10px 10px 10px 10px">
                          <img class="review-img" width="50px" height="50px" style="border-radius: 50px;" src="${pageContext.servletContext.contextPath }/resources/upload/${ review.answer.tePic }">
                        <div class="media-body ml-3">
                          <div class="col-sm-12">
                            <p class="small text-muted mb-0 text-uppercase">${ review.answer.ansDate }</p>
                            <pre class="text-small mb-0 text-muted" align="left">
${ review.answer.ansContent }
                            </pre>
                          </div>
                             
                          </div>   
                        </div>
                      </c:otherwise>
                      </c:choose>
                      </div>
                    </div>
                  </div>
                </c:forEach>
                </c:otherwise>
                 </c:choose>
                </div>
                </div>
                </div>
                <hr>
                <script>
                    function contentCheck(p){
                    	
                    	let content = "content"+p;
                    	console.log(document.getElementById(content).value.length);
                    	
                    	if(document.getElementById(content).value == "" || document.getElementById(content).value.length == 0){
                    		
                    		alert("답변 내용을 입력해주세요");
	                    	return false;
                    	} else {
                    		
	                    	return true;
                    	}
                    	
                    	
                    }
                </script>
          
                <!-- 리뷰2 -->
<%-- 					<nav aria-label="...">
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
					</nav> --%>
              </div>
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </div>
  </div>
 <!--  <script>
	const link = "${pageContext.servletContext.contextPath }/teacher/classReviewList";
		
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
	
	function pageButtonAction(text) {
		
		location.href = link + "?currentPage=" + text + "&classType=${ classType }&clsNo=${ clsNo }";
	}

	</script>  	 -->
  
  <jsp:include page="../commons/footer.jsp"/>
</body>
</html>