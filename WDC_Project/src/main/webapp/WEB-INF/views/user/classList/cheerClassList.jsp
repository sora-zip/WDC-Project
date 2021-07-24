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
        right: 3.3rem;
        z-index: 999;
        font-size: 12.5px;
        background-color: #f8f9fa;
        color: black !important;
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
                <h1 class="h2 mb-0">My Page</h1>
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
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/likeClassList">찜 목록</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/cheerClassList">응원한 클래스</a></strong></div>
              </div>
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                  <c:choose>
                  	<c:when test="${ empty requestScope.cheerClassDTOList }">
                  		<c:set var="num" value="0"/>
                  		<div class="noList">응원한  클래스가 없습니다.</div>
                  	</c:when>
                  </c:choose>
                  <!-- PRODUCT-->
                  <c:forEach  var="classList" items="${ requestScope.cheerClassDTOList }">
                  <c:set var="num" value="1"/>
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="productNoneOpacity text-center">
		              <c:if test="${classList.dDay ne '-' && cheerClassList.dDay ne '.'}">
		               <div class="badge text-white badge-danger">D - ${classList.dDay} </div>
		              </c:if>
		              <c:if test="${classList.dDay eq '-' || classList.dDay eq '.'}">
		               <div class="badge text-white badge-danger">D - DAY </div>
		              </c:if>
                      <div class="position-relative mb-3" style="max-width: 184px; max-height: 180px;">
                        <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }"><img class="img-fluid w-100" src="${pageContext.servletContext.contextPath }/${classList.titlePic}" alt="..."></a>
                      </div>
                      <h6> 
                      <c:if test="${classList.clsType eq 'O'}">
                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
                        [오픈예정][원데이] ${classList.title}
                      </a>
                      </c:if>
                      <c:if test="${classList.clsType eq 'R'}">
                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
                        [오픈예정][정규] ${classList.title}
                      </a>
                      </c:if>
                      </h6>
                    </div>
                  </div>
                  </c:forEach>
                  </div>
                <br><br>
                <c:if test="${num == 1}">
	                <!-- PAGINATION-->
                </c:if>
              </div>
            </div>
          </div>
        </section>
      </div>

      	<%@include file="../commons/footer.jsp" %>

      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>