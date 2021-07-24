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
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain">내 정보</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white  mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/complateClassList">참여 완료 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/coupon">내 쿠폰</a></strong></div>
              </div>
              <!-- SHOP LISTING-->
              <!-- 원데이 클래스일 경우 구매 취소 불가 !!-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                    <c:choose>
                  	<c:when test="${ empty requestScope.participatingClassList  }">
                  		<div style="margin-left: 315px; margin-top: 100px; margin-bottom: 110px;">진행 중인 클래스가 없습니다.</div>
                  	</c:when>
                  	</c:choose>
                
                  <!-- PRODUCT-->
                <c:forEach  var="classList" items="${ requestScope.participatingClassList }">
                                  <div class="col-xl-3 col-lg-4 col-sm-6">
                
                    <div class="productNoneOpacity text-center">
                      <c:if test="${ classList.clsType eq 'O' }">
                      <div class="badge text-white badge-primary">${fn:substring(classList.scheduleDate,5,10)} / ${classList.scheduleStart} </div>
                      </c:if>
                      <c:if test="${ classList.clsType eq 'R' }">                    
                      <div class="badge text-white badge-primary">${fn:substring(classList.startDate,5,10)} ~ ${fn:substring(classList.endDate,5,10)} </div>
                      </c:if>  
                      <div class="position-relative mb-3" style="max-width: 184px; max-height: 180px;">
                        <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/mypage/userApplyClassDetail/${ classList.aplNo }"><img class="img-fluid w-100" src="${pageContext.servletContext.contextPath }/${classList.titlePic}" alt="..."></a>
                      </div>
                      <h6> 
                      <c:if test="${ classList.clsType eq 'O' }">
                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/mypage/userApplyClassDetail/${ classList.aplNo} ">
                        [원데이] ${classList.title}/  ${ classList.aplNo }
                        
                      </a>
                      </c:if>
                      <c:if test="${ classList.clsType eq 'R' }">
                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/mypage/userApplyClassDetail/${ classList.aplNo} ">
                        [정규] ${classList.title}
                      </a>
                      </c:if>
                      </h6>
                      <p class="small text-muted"><fmt:formatNumber value="${classList.payPrice}" pattern="#,###"/> 원 / ${classList.clsPplAmount}명</p>
                    </div>
                    </div>
                 </c:forEach>
                  
                </div>
                <br><br>
                <!-- PAGINATION-->

              </div>
            </div>
          </div>
        </section>
      </div>
       	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>