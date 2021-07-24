<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

      <style>
      .class-link {
        color: black;
      } 

      .class-link:hover {
        color:black;
      }

      .card-body{
        height: 400px;
        margin-left: 100px;

      }
    
      .justify-content-lg-end {
        justify-content: center !important;
      }

      .form-control-lg {
        width: 450px;
      }

      .list-inline-item {
        margin-left: 50px;
      }

      .currentPage{
        font-weight: 600;
        font-size: 26px;

      }
      .form-control{
        border-radius: 5px;
      }

      .img-fluid{
        height: 180px;
        width: 250px;
        border-radius: 5px;
      }
      
      .bottom_badge{
        position: absolute;
        top: 12rem;
        right: 3rem;
        z-index: 999;
        font-size: 7px;
      }

      i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}
    </style>
  </head>
  <body>
    <div class="page-holder">
      <!-- navbar-->
	<%@include file="../commons/header2.jsp" %>
      <%@include file="../commons/search.jsp" %>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">찜 목록</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>

        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/likeClassList">찜 목록</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/cheerClassList">응원한 클래스</a></strong></div>
              </div>
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                  <!-- PRODUCT-->
                  <c:choose>
                  	<c:when test="${ empty requestScope.likeClassDTOList }">
                  		<c:set var="num" value="0"/>
                  		<div class="noList">찜한 클래스가 없습니다.</div>
                  	</c:when>
                  </c:choose>
                  <!-- PRODUCT-->
                  <c:forEach  var="classList" items="${ requestScope.likeClassDTOList }">
                  	  <c:set var="num" value="1"/>
	                  <div class="col-xl-3 col-lg-4 col-sm-6">
	                    <div class="productNoneOpacity text-center">
	                    <c:if test="${ requestScope.classList.dicsionStatus eq 'F' }">
	                      <div class="badge text-white badge-danger">D - ${classList.dDay} </div>
	                    </c:if>
	                      <div class="position-relative mb-3" style="max-width: 184px; max-height: 180px;">
	                        <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }"><img class="img-fluid w-100" src="${pageContext.servletContext.contextPath }/${classList.titlePic}" alt="..."></a>
	                      </div>
	                      <h6> 
	                      <c:if test="${classList.clsType eq 'O'}">
	                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
	                        [원데이] ${classList.title}
	                      </a>
	                      </c:if>
	                      <c:if test="${classList.clsType eq 'R'}">
	                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
	                        [정규] ${classList.title}
	                      </a>
	                      </c:if>
	                      </h6>
	                    </div>
	                  </div>
                  </c:forEach>
                </div>
                <br><br>
                
                <c:if test="${num == 1}">
                <!-- 페이지 처리 -->
				<div class="pagingArea" align="center">
		 	       <nav aria-label="Page navigation example" style="margin-top: 50px;">
		           		<ul class="pagination justify-content-center justify-content-lg-end">
							<c:choose>
							    <c:when test="${ empty requestScope.searchValue }">
								    <li id="startPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					
									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<li id="prevPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
						
									<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<li class="page-item active"><a class="page-link"><c:out value="${ p }"/></a></li>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<li class="page-item" style="cursor:pointer;"><a class="page-link" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></a></li>
										</c:if>
									</c:forEach>
									
									<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<li id="nextPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									
									<li id="maxPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Next"><span aria-hidden="true">»</span></a></li>
							     </c:when>
							   	 <c:otherwise>
				   				    <li id="searchStartPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					
									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<li id="searchPrevPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
						
									<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<li class="page-item active"><a class="page-link"><c:out value="${ p }"/></a></li>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<li class="page-item" style="cursor:pointer;"><a class="page-link" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></a></li>
										</c:if>
									</c:forEach>
									
									<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<li id="searchNextPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									
									<li id="searchMaxPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Next"><span aria-hidden="true">»</span></a></li>
							    </c:otherwise>
							</c:choose>   
						</ul>
					</nav>
				</div>
				<%-- 페이지 처리 --%>
                  
			   <!-- 페이징 스크립트 -->
		       <script>
					const link = "/wdc/user/mypage/likeClassList";
					//const searchLink = "${ pageContext.servletContext.contextPath }/board/search";
						
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
						location.href = link + "?currentPage=" + text;
					}
					function seachPageButtonAction(text) {
						location.href = searchLink + "?currentPage=" + text + "&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
					}
				</script>
				</c:if>
              </div>
            </div>
          </div>
        </section>
      </div>
      <br><br><br>
       	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>