<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

  </head>
  <style>
    .login-find{
      display: flex;
      margin: auto;
      width: 200px;
      justify-content: space-evenly;
    }

    i{
      font-family: "Font Awesome 5 Free" !important;
    }

    *{font-family:'Cafe24SsurroundAir' !important;}
    
    .login-type{
	    text-align: center;
	    display: flex;
	    margin: auto;
	    width: 430px;
	    justify-content: space-evenly;
    }
  </style>
  <body>
    <!-- header -->
    <div class="page-holder">
      <!-- navbar-->
	<%@include file="../commons/header2.jsp" %>
      <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if>
      <br><br>
      <!-- body -->
      <form action="${ pageContext.servletContext.contextPath }/user/mypage/login" method="post">
	     <div class="container py-5">
	        <div class="col-lg-7" style="margin: auto;">
	          <div class="card mb-4" id="forms">
	            <div class="card-body"><br>
		            <h4 class="mb-5" style="text-align: center; font-size: 1.9rem;">Log In</h4>
	                <div class="form-group row">
	                  <label class="col-sm-3 col-form-label" for="tutorId">아이디</label>
	                  <div class="col-sm-12">
	                      <input class="form-control" id="tutorId" type="text" placeholder="아이디" name="userId">
	                  </div>
	                </div>
	                <div class="form-group row">
	                  <label class="col-sm-3 col-form-label" for="tutorPwd">비밀번호</label>
	                  <div class="col-sm-12">
	                    <input class="form-control" id="tutorPwd" type="password" placeholder="비밀번호" name="userPwd">
	                  </div>
	                </div><br><br>
	                <div class="form-group row">
	                  <div class="col-sm-3" style="margin: auto;">
	                    <button class="btn btn-primary" type="submit" style="margin-left: 10%;">로그인</button>
	                  </div>
	                </div>
	                <div class="login-find">
                      <a href="${ pageContext.servletContext.contextPath }/user/mypage/findId" style="color: #adb5bd !important;">아이디 찾기</a></li>
	                  <div style="color: #adb5bd">&nbsp;|&nbsp;</div>
	                  <a href="findPassword.html" style="color: #adb5bd !important;">비밀번호 찾기</a></li>
	                </div><br>
	                <div class="login-find" style="width: 300px; color: #adb5bd !important;">
	                 	 아직 회원이 아니신가요?
                      <a href="${ pageContext.servletContext.contextPath }/user/mypage/signup" style="color: #adb5bd !important;">회원가입</a></li><br>
	                </div>
	            </div>
            </div>
            <br>
            <div class="login-type">
           		* another page &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            <a href="${ pageContext.servletContext.contextPath }/teacher" style="color: black !important;">강사 페이지</a></li>               
	            <a href="${ pageContext.servletContext.contextPath }/admin/login" style="color: black !important;">관리자 모드</a></li>
            </div>
	      </div>
	   </div>
    </form>
    <br><br><br>
    <%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>