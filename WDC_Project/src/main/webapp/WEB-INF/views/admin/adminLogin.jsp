<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>우리동네 클래스</title>
        <!-- Favicon-->
    	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    	<style>
    		#layoutAuthentication_content {
    			 background: gray;
    		}
    		
    		.title {
    			font-weight: bolder;
    			font-size: 66px; 
    			margin-left: 37.3%;
    			margin-top: 70px;
    		}
    		
    		.container {
    			margin-top: -25px;
    		}
    		
    		#title {
    			font-weight: bolder;
    			font-size: xxx-large;
    		}
    		
    		.form-check {
    			font-size: x-small;
				padding: 0 !important;
    		}
    		
    		#loginBtn {
    			background: black; 
    			margin-left: 20%;
    			width: 120px;
    			font-size: large;
    		}
    		
    		#loginBtn:hover {
    			background : #fef0ae;
    			color: black;
    		}
    		
    		#retunPageBtn {
    			background: black; 
    			margin-right: 20%;
    			width: 120px;
    			font-size: large;
    		}
    		
    		#retunPageBtn:hover {
				background : #fef0ae;
    			color: black;
			}
    	</style>
    </head>
          <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="title">우리동네 클래스</div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4" id="title">LOGIN</h3></div>
                                    <div class="card-body">
                                        <form method="POST" action="${pageContext.servletContext.contextPath}/admin/adminSingIn">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="text" name="AdminId" placeholder="ID" />
                                                <label for="inputEmail">ID</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password" name="AdminPwd" placeholder="Password" />
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <a href="${pageContext.servletContext.contextPath}/user/login">관리자가 아니신 분은 여기를 클릭해주세요!!</a>
                                                <label class="form-check-label" for="inputRememberPassword"></label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button class="btn btn-primary" type="submit" id="loginBtn">Login</button>
                                                <a class="btn btn-primary" id="retunPageBtn" href="${ pageContext.servletContext.contextPath }">Main</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            
            <!-- footer -->
			<%@ include file="commons/loginFooter.jsp" %>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
    </body>
</html>

