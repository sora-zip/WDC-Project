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
        justify-content: normal !important;
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

      .form-control {
        display: inline-block;
      }
      .couponList{
          height: 100px;
          border-radius: 5px;
          width: 400px;
          margin-right: 20px;
          margin-bottom: 20px;
          padding-top: 5px;
          text-align: left;
          font-size: 14px;
          padding-left: 10px; 
	      height: 150px; 
	      margin: auto ;
	      border: 1px solid white !important;
	      background: white;
      }

      .modal{
        vertical-align: middle;
        margin-top: 13%;
      }

      td:hover{
        text-decoration: underline;
      }

      .tr-hover:hover{
        background-color: #f8f9fa !important;
      }

      .coupon-modal{
        background-color: transparent;
        border: 1px solid transparent;
      }

      td{
        text-decoration:none !important;
        vertical-align: unset !important;
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
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/complateClassList">참여 완료 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/coupon">내 쿠폰</a></strong></div>
              </div>
              <!-- BILLING ADDRESS-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0" style="text-align: center;">
                <div class="container p-0">
                  <div class="row">
                    <table class="table table-hover" style="width: 850px;">
                      <thead>
                        <tr>
                          <th><b>번호</b></th>
                          <th><b>할인금액 </b></th>
                          <th><b>적용 강의명</b></th>
                          <th><b>사용 기한</b></th>
                        </tr>
                      </thead>
                      <tbody>
                       <c:forEach  var="couponList" items="${ requestScope.couponList }">
                       <c:set value="${i+1}" var="i"></c:set>
                        <tr class="tr-hover">
                          <th>${i}</th>
                          <th><button class="coupon-modal" type="button" data-toggle="modal" data-target="#coupon_detail${i}">${couponList.cpnName}</button></th>
                          <c:if test="${couponList.userNo ne '0'}">
                          <td onclick="location.href='${pageContext.servletContext.contextPath}/user/classDetail/${ couponList.clsNo }'" style="cursor:pointer;">${couponList.couponClassName}</td>
                          </c:if>                          
                          <c:if test="${couponList.userNo eq '0'}">
                          <td onclick="location.href='${pageContext.servletContext.contextPath}/user/classDetail/${ couponList.clsNo }'" style="cursor:pointer;">전체 강의</td>
                          </c:if>                          
                          <td>${couponList.cpnEnd}</td>
                        </tr>   
                              <!-- 쿠폰팝업 -->
				      <div id="coupon_detail${i}"class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				        <div class="modal-dialog modal-sm">
				          <div class="modal-content">
				            <div class="modal-header">
				              <div class="couponList">
				                <h4><i class="fas mr-2 fa-gift">할인금액 : <fmt:formatNumber value="${ couponList.disAmount }" pattern="#,###"/> 원</i></h4>
				
				                <h6>${couponList.cpnName}</h6>
				                <c:if test="${couponList.userNo eq '0'}">
					                <br>
					                	적용 강좌명 : 전체
					                <br>
				                </c:if>
				                <c:if test="${couponList.userNo ne '0'}">
					                <br>
					                	적용 강좌명 : ${couponList.couponClassName}
					                <br>
				                </c:if>
				                ${couponList.cpnEnd} 까지
				            </div>
				            </div>
				          </div>
				        </div>
				      </div>
                        </c:forEach>
 
                      </tbody>
                    </table>
                  </div>
                  <!-- PAGINATION-->
                  <nav aria-label="Page navigation example" style="margin-left: 300px; margin-top: 50px;">
                    <ul class="pagination justify-content-center justify-content-lg-end">
                      <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                      <li class="page-item active"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>



      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>