<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<%@include file="../commons/header.jsp" %>
    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>
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
        background-color: #ffe66a;
      }
      i{
        font-family: "Font Awesome 5 Free" !important;
      }

      .w-100{
        transition: all 0.2s linear;
      }
/*       .btn-dark:hover{
        background-color: #ffe66a;
        border: #ffe66a;
      } */


    *{font-family:'Cafe24SsurroundAir' !important;}
    
  </style>

  </head>
                <!-- 현재 시간  -->
              <%Timestamp now = new Timestamp(System.currentTimeMillis());

				SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd");

				String strDate = formats.format(now); %>
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
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="">
                  <ol class=" justify-content-lg-end mb-0 px-0">
                   <a href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList" style="color: black; font-weight: 600;">돌아가기</a>
                  </ol>
                </nav>
              </div>
            </div>
            </section>
          </div>
        <c:set value="<%=strDate %>" var="cDate"></c:set>
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain">내 정보</a></strong></div>
                  
                  <c:choose>
                  <c:when test="${requestScope.scheduleDetailUserClassDTO.scheduleDate == cDate && requestScope.scheduleDetailUserClassDTO.clsType eq 'O' }">
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  </c:when>
                  <c:when test="${requestScope.scheduleDetailUserClassDTO.startDate < cDate && requestScope.scheduleDetailUserClassDTO.clsType eq 'R' }">
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  </c:when>
                  <c:otherwise>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  </c:otherwise>
                  </c:choose>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/complateClassList">참여 완료 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/coupon">내 쿠폰</a></strong></div>
              </div>
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">

                <div class="row">
                 <div class="col-xl-10 col-lg-4 col-sm-6" style="margin-left: 30px; ">
                  <div class="row" style="height: 200px;  width: 1500px;">
                    <img class="w-100" src="${pageContext.servletContext.contextPath }/${scheduleDetailUserClassDTO.titlePic}"  alt="..." style="width: 200px !important; height: 150px !important; margin-right: 30px; border-radius: 2px;">
                    <ul class="list-inline mb-2">
                      <li class="list-inline-item m-0">
                        <i class="fas fa-caret-right small text-dark" style="display: flex; margin-left: 3px; ">
                          <p style="margin-left: 10px; margin-top: 2px;"> 강의명</p>
                        </i>
                      </li> 
                      <h4 style="overflow: hidden;">
                      <a href="${ pageContext.servletContext.contextPath }/user/classDetail/${ scheduleDetailUserClassDTO.clsNo }" style="color: black;">${ requestScope.scheduleDetailUserClassDTO.title }</a></h4>
                      <br>  
                      <li class="list-inline-item m-0">
                        <i class="fas fa-caret-right small text-dark" style="display: flex; margin-left: 3px; ">
                          <p style="margin-left: 10px; margin-top: 2px;"> 강사명</p>
                        </i>
                      </li> : ${ requestScope.scheduleDetailUserClassDTO.teName } 강사님
                      <br>
                    </ul>
                  </div>
                  <!-- PRODUCT-->
                    <div style="text-align: left; margin-top: -30px;">
					<hr>
                    <c:if test="${ requestScope.scheduleDetailUserClassDTO.clsType eq 'O' }">
                    <li>수업예정 날짜 : ${ requestScope.scheduleDetailUserClassDTO.scheduleDate }</li>
                    </c:if>
                    <c:if test="${ requestScope.scheduleDetailUserClassDTO.clsType eq 'R' }">
                    <li>수업예정 날짜 : ${ requestScope.scheduleDetailUserClassDTO.startDate } ~ ${ requestScope.scheduleDetailUserClassDTO.endDate }</li>
                    </c:if>
                    <hr>
                    <li>수업예정 시간 : ${ requestScope.scheduleDetailUserClassDTO.scheduleStart }</li>
                    <hr>
                    <li>수업소요 시간 : ${ requestScope.scheduleDetailUserClassDTO.time }</li>
                    <hr>
                    <li>결제 날짜 : ${ requestScope.scheduleDetailUserClassDTO.clsAplDate }</li>
                    <hr>
                    <li>신청 인원 : ${ requestScope.scheduleDetailUserClassDTO.ppl } 명 </li>
                    <hr>
                    <li>결제 금액 : <fmt:formatNumber value="${ requestScope.scheduleDetailUserClassDTO.payPrice }" pattern="#,###"/> 원</li>
                    <hr>
                    </div>
                    <br>
                    <div style="margin-left: 25%;">
                     <c:choose>
                         <c:when test="${ requestScope.scheduleDetailUserClassDTO.clsType eq 'O' && requestScope.scheduleDetailUserClassDTO.scheduleDate == cDate }">
                         	                      <div style="width: 200px; height: 40px; display: inline-flex;">
	                          <button class="btn btn-dark" type="button" style="display: flex;" onclick="noRefund();">구매 취소하기</button>
	                          <script type="text/javascript">
	                          	function noRefund() {
									alert("원데이 클래스는 강의 날짜 당일에 환불 불가합니다. 고객센터에 문의해 주세요");
								}
	                          </script>
	                      </div>                         
                         </c:when>
                         <c:otherwise>
	                      <div style="width: 200px; height: 40px; display: inline-flex;">
	                        <form action="${ pageContext.servletContext.contextPath }/user/userRefund" style="display: flex;" method="post">
	                      <button class="btn btn-dark" type="submit" style="display: flex;">구매 취소하기</button>
	                      <c:choose>
                          	<c:when test="${ requestScope.scheduleDetailUserClassDTO.clsType eq 'O'}">
                          		<input type="hidden" name="scheduleDate" value="${ requestScope.scheduleDetailUserClassDTO.scheduleDate }">
                          	</c:when>
                          </c:choose>
	                      <input type="hidden" name="titlePic" value="${scheduleDetailUserClassDTO.titlePic}">
                          <input type="hidden" name="title" value="${ requestScope.scheduleDetailUserClassDTO.title }">
                          <input type="hidden" name="ppl" value="${ requestScope.scheduleDetailUserClassDTO.ppl }">
	                      <input type="hidden" name="scheduleStart" value="${ requestScope.scheduleDetailUserClassDTO.scheduleStart }">
                          <input type="hidden" name="time" value="${ requestScope.scheduleDetailUserClassDTO.time }">
                          <input type="hidden" name="teNo" value="${ requestScope.scheduleDetailUserClassDTO.teNo }">
                          <input type="hidden" name="teName" value="${ requestScope.scheduleDetailUserClassDTO.teName }">
                          <input type="hidden" name="clsType" value="${ requestScope.scheduleDetailUserClassDTO.clsType }">
                          <input type="hidden" name="startDate" value="${ requestScope.scheduleDetailUserClassDTO.startDate }">
                          <input type="hidden" name="endDate" value="${ requestScope.scheduleDetailUserClassDTO.endDate }">
                          <input type="hidden" name="payPrice" value="${ requestScope.scheduleDetailUserClassDTO.payPrice }">
                          <input type="hidden" name="payNo" value="${ requestScope.scheduleDetailUserClassDTO.payNo }">
                          <input type="hidden" name="scheduleNo" value="${ requestScope.scheduleDetailUserClassDTO.scheduleNo }">
                          <input type="hidden" name="aplNo" value="${ requestScope.scheduleDetailUserClassDTO.aplNo }">
	                        </form>
	                      </div>
                         </c:otherwise>
                      </c:choose>
                      <div style="width: 200px; height: 40px; display: inline-flex;">
                        <form action="${ pageContext.servletContext.contextPath }/user/userReport" style="display: flex;">
                          <button class="btn btn-dark" type="submit" style="display: flex;">클래스 신고하기</button>
                          
                          <c:choose>
                          	<c:when test="${ !empty requestScope.scheduleDetailUserClassDTO.scheduleDate }">
                          		<input type="hidden" name="scheduleDate" value="${ requestScope.scheduleDetailUserClassDTO.scheduleDate }">
                          	</c:when>
                          </c:choose>
                          <input type="hidden" name="titlePic" value="${scheduleDetailUserClassDTO.titlePic}">
                          <input type="hidden" name="title" value="${ requestScope.scheduleDetailUserClassDTO.title }">
                          <input type="hidden" name="ppl" value="${ requestScope.scheduleDetailUserClassDTO.ppl }">
                          <input type="hidden" name="scheduleStart" value="${ requestScope.scheduleDetailUserClassDTO.scheduleStart }">
                          <input type="hidden" name="time" value="${ requestScope.scheduleDetailUserClassDTO.time }">
                          <input type="hidden" name="teNo" value="${ requestScope.scheduleDetailUserClassDTO.teNo }">
                          <input type="hidden" name="teName" value="${ requestScope.scheduleDetailUserClassDTO.teName }">
                          <input type="hidden" name="clsType" value="${ requestScope.scheduleDetailUserClassDTO.clsType }">
                          <input type="hidden" name="startDate" value="${ requestScope.scheduleDetailUserClassDTO.startDate }">
                          <input type="hidden" name="endDate" value="${ requestScope.scheduleDetailUserClassDTO.endDate }">
                          <input type="hidden" name="aplNo" value="${ requestScope.scheduleDetailUserClassDTO.aplNo }">
                          <input type="hidden" name="clsNo" value="${ requestScope.scheduleDetailUserClassDTO.clsNo }">
                        </form>
                      </div>
                    </div>


                <br><br>
                <!-- PAGINATION-->

              </div>
            </div>
          </div>
        </section>
      	<%@include file="../commons/footer.jsp" %>

 </div>
  </body>
</html>