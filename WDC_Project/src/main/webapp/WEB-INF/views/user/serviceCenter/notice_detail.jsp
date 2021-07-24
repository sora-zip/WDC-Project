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
    table.type09 tbody th {
        width: 110px;
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        border-bottom: 1px solid #ccc;
        background: #f3f6f7;
        text-align: center;
    }
    table.type09 td {
      width: 720px;
      padding: 10px;
      vertical-align: top;
      border-bottom: 1px solid #ccc;
    }
    
    i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}

    thead{
      border-bottom: 1px solid #ccc;
    }
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
	            	<div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/notice">공지사항</a></strong></div>
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/faq">자주 묻는 질문</a></strong></div>
	                <c:if test="${ empty sessionScope.userNo }">               
		             	<div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">1:1 문의</a></strong></div>
		                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">나의 신고</a></strong></div>
	             	</c:if>
	                <c:if test="${ !empty sessionScope.userNo }">
		                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry">1:1 문의</a></strong></div>
		                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/report">나의 신고</a></strong></div>              
	              	</c:if>
	            </div> 
              <div>
                <table class="type09">
                  <thead>
                    <tr>
                      <th scope="cols"></th>
                      <th scope="cols"></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">제목</th>
                      <td colspan="3">${ requestScope.noticeDetail.noticeTitle }</td>
                    </tr>
                    <tr>
                      <th scope="row">작성일</th>
                      <td>${ requestScope.noticeDetail.writeDate }</td>
                    </tr>
                  </tbody>
                </table>
                <br><br>
                <p style="margin-left: 50px; margin-right: 50px;">
			    	${ requestScope.noticeDetail.noticeContent }
                </p>
                <br><br>
                <hr>
                <button class="btn btn-primary" type="submit" style="margin-left: 85%;" onclick="location.href='${ pageContext.servletContext.contextPath }/user/serviceCenter/notice'">목록보기</button>
            </div>
          </div>
        </section>
      </div>
      <br><br><br><br>
      
      <%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>