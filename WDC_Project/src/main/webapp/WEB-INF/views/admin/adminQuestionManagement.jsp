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
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <style>
        	.container-fluid{
        		 margin-top: 30px;
        	}
        	
        	.card-header {
        		 font-size: x-large;
        	}
        	
        	.totalQuestion {
        		margin-top: 0.5%;
                width: 33%;
                border-radius: 5px;
                background: #fef0ae;
                border: none;
                height: 30px;
            }

            .totalQuestion:hover {
                background: rgb(112, 112, 112);
            }

			.teacherQuestion {
               	margin-top: 0.5%;
                width: 33%;
                border-radius: 5px;
                background: #fef0ae;
                border: none;
                height: 30px;
            }

            .teacherQuestion:hover {
                background: rgb(112, 112, 112);
            }
            
            .studentQuestion {
                margin-top: 0.5%;
                width: 33%;
                border-radius: 5px;
                background: #fef0ae;
                border: none;
                height: 30px;
            }
            
            .studentQuestion:hover {
                background: rgb(112, 112, 112);
            }
        </style>
    </head>
    <body class="sb-nav-fixed">
    
    	<!-- header -->
		<%@ include file="commons/header.jsp" %>
		
        <div id="layoutSidenav">
        
        	<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <div class="card mb-4">

                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>문의내역
                            </div>
                            
                            <div class="sideMenu">
                            	<input type="button" id="to" class="totalQuestion" value="전체" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/questionManagement?currentMenu=question&mt=to'">
                            	<input type="button" id="tc" class="totalQuestion" value="강사" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/questionManagement?currentMenu=question&mt=tc'">
                            	<input type="button" id="st" class="totalQuestion" value="수강생" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/questionManagement?currentMenu=question&mt=st'">
      						</div>

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>문의번호</th>
                                            <th>분류</th>
                                            <th>성명</th>
                                            <th>아이디</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                            <th>답변여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     					<c:forEach items="${questionList}" var="QuestionDTO">
				                            <tr onclick="location.href='${ pageContext.servletContext.contextPath }/admin/questionDetail?currentMenu=question&mt=${QuestionDTO.questionType}&no=${QuestionDTO.questionNo}'">
				                                <td>${QuestionDTO.questionNo}</td>
				                                <c:choose>
				                                	<c:when test="${QuestionDTO.questionType eq 'USER'}">
				                                		<td>수강생</td>
				                                	</c:when>
				                                	<c:when test="${QuestionDTO.questionType eq 'TEACHER'}">
				                                		<td>강사</td>
				                                	</c:when>
				                                </c:choose>
				                                <td>${QuestionDTO.questionName}</td>
				                                <td>${QuestionDTO.questionId}</td>
				                                <td>${QuestionDTO.questionTitle}</td>
				                                <td>${QuestionDTO.questionDate}</td>
				                                <td>${QuestionDTO.answerYN}</td>
				                            </tr>
				                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script>
    		function drawColor(){
    			var documentUrl = document.URL; 
    			var NdocumentUrl = new URL(documentUrl);  
    			var currentTab = NdocumentUrl .searchParams.get("mt");  //url에 있는 name이란 파라미터값을 가지고옴
    			
    			const currentTabBar = document.getElementById(currentTab);
    			currentTabBar.style.background = '#ffe163';
    			currentTabBar.style.fontWeight = 'bolder';
    		}
    	</script>
    	<script>drawColor();</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>