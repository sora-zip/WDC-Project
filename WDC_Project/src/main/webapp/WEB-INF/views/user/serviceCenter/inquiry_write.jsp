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

      div.tab {
        width: 600px;
      }

      .tab {
          height: auto;
          border-bottom: 1px solid rgba(0,0,0,0.2);
          width: 1000px;
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
                <h1 class="h2 mb-0">문의 작성</h1>
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
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/faq">자주 묻는 질문</a></strong></div>
	                <c:if test="${ empty sessionScope.userNo }">               
		             	<div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">1:1 문의</a></strong></div>
		                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">나의 신고</a></strong></div>
	             	</c:if>
	                <c:if test="${ !empty sessionScope.userNo }">
		                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry">1:1 문의</a></strong></div>
		                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/report">나의 신고</a></strong></div>              
	              	</c:if>
	            </div> 
	        <!-- 문의작성 -->
			<form action="${ pageContext.servletContext.contextPath }/user/serviceCenter/insertWrite" method="get">
				<div class="list_none" style="display: block; height: 604px; width: 850px; border: 1px solid lightgray;">
					<div class="writeNameBox">
						<div class="writeNameBoxContent" style="margin: auto;">
							<p style="text-align: center; font-weight: bold; margin-top: 10px;">문의 제목 :  <input type="text" name="queTitle" class="titleInput" placeholder="제목을 입력하세요." required style="width: 500px;"> </p>
						</div>
					</div>
		            <hr>
					<textarea class="wirteContent" name="queContent" style="border-radius: 5px; width: 825px; margin-left: 12px;" rows="21" name="" placeholder="문의 사항을 적어주세요." required="required"></textarea>
				</div>
				<br>
				<div class="list_none" style="display: flex; text-align: center; width: 550px; margin-left: 145px; margin-top: 10px; justify-content: space-evenly;">
					<button class="btn btn-dark" type="submit" style="font-size: 15px; width: 110px; height: 36px;">작성하기</button>
			</form>
					<form action="${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry" method="get">
						<button class="btn btn-dark" type="submit" style="font-size: 15px; width: 110px; height: 36px;">취소하기</button>
					</form>
				</div>
	      	</div>
          </div>
        </section>
      </div>
      <br>
      <br>
      <%@include file="../commons/footer.jsp" %>
	</div>
  </body>
</html>