<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

    <style>
      hr {
     	margin-top: 0;
     	margin-bottom: 0;
      }
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

      .faq-box{
        padding-left: 20px;
        padding-right: 20px;
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
                <h1 class="h2 mb-0">고객 센터</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>
        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-0 order-lg-0">
                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/notice">공지사항</a></strong></div>
                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/faq">자주 묻는 질문</a></strong></div>
                <c:if test="${ empty sessionScope.userNo }">               
	             	<div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">1:1 문의</a></strong></div>
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">나의 신고</a></strong></div>
             	</c:if>
                <c:if test="${ !empty sessionScope.userNo }">
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry">1:1 문의</a></strong></div>
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/report">나의 신고</a></strong></div>              
              	</c:if>
              </div> 
              <div id="cont_area" style="margin-top: -50px;"><!-- 본문 콘텐츠-->
                <div class="cont_inner" id="policy_page" style="min-height: 435px; text-align: left; float: left; width: 850px;">
                    <br><br>
                    <div style="font-weight: bold;">Q. 클래스를 다 들으면 수강완료증을 발급해주실 수 있나요?</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
						수강생 정보, 클래스 정보가 간략하게 기재된 수강증을 드려요.<br>
						수강 후 완료 클래스 카테고리에서 발급해드립니다.       
						<br><br>
                    </p>
                    <br>
                    <div style="font-weight: bold;">Q. 앱으로 볼 수 있나요?</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
				                  현재 모바일/PC로 이용 가능한 점 안내해드립니다.<br>
						열심히 앱 개발중이니 조금만 더 기다려주세요!
                        <br><br>
                    </p>
                    <br>
                    <div style="font-weight: bold;">Q. 회원 정보를 수정하고 싶어요.</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
						마이페이지 > 내 정보 관리 > 회원정보 수정 에서 변경할 수 있습니다.<br>
						비밀번호 변경을 원하실 경우 마이페이지 > 내 정보 관리 > 비밀번호 변경 페이지에서 가능합니다.<br>
						<br>
						단, SNS계정으로 간편로그인 하신 경우 사이트 내 로그인하기 > 비밀번호 찾기를 통해 임시 비밀번호를 먼저 발급 받으셔야 합니다.<br>
						발급받으신 비밀번호로 로그인 후 마이페이지에서 비밀번호 변경 바랍니다.
                        <br><br>
                    </p>
                    <br>
                    <div style="font-weight: bold;">Q. 쿠폰은 어떻게 쓰나요?</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
				                 결제단계에서 원하시는 쿠폰 선택해주시면 됩니다.<br>
					        사이트 내 마이페이지 > 내 쿠폰 페이지에서 보유한 쿠폰 확인 가능합니다.
                        <br><br>
                    </p>
                    <br>
                    <div style="font-weight: bold;">Q. 결제수단 종류는 어떤 것들이 있나요?</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
				                  현재는 카카오페이로만 결제 가능합니다.<br>
						무통장입금 및 실시간 계좌이체는 제공이 어려운 점 양해 부탁드립니다.
                        <br><br>
                    </p>
                    <br>
                </div>
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