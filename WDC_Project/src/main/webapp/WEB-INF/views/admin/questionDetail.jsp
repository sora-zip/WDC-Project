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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Favicon-->
    	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	    <style>
	    	.container-fluid {
	        	margin-top: 30px;
	        }
	        
	        .card-header {
	        	font-size: x-large;
	        }
	        
	        th {
	            text-align: center !important;
	            width: 200px;
	            border: 1px solid lightgrey !important;
	            background: #fef0ae !important;
	            vertical-align: middle;
	        }
	
	        td {
	            border: 1px solid lightgrey !important;
	        }
	        
	        #questionContextArea {
	        	height: 200px;
	        }
	        
	        .questionContext {
	        	overflow: auto;
	        }
	        
	        #requestTitle {
	        	width: 200px;
	        }
	        
	        #requestContextArea {
	        	overflow: auto;
	        }
	        
	        #requestContext {
	        	width: 99.9%; 
	        	height: 150px; 
	        	border: none;
	        }
	        
	        .submitBtn {
	        	margin-left: 84%;
	        }
	        
	        .answerBtn {
	        	width: 100px; 
	        	background: #fef0ae; 
	        	border: 1px solid lightgrey;
	        }
	
	        .answerBtn:hover {
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
                                <i class="fas fa-table me-1"></i>문의 상세
                            </div>

							<form method="POST" id="area" action="/wdc/admin/questionAnswer">
	                            <div class="card-body">
	                                <table class="table">
	                                    <tbody>
	                                        <tr>
	                                            <input type="hidden" name="questionNo" value="${ questionDetail.questionNo }">
	                                            <th>회원번호</th>
	                                            <td>${ questionDetail.userNo }</td>
	                                            <th>분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</th>
	                                            <c:choose>
	                                            	<c:when test="${ questionDetail.questionType eq 'TEACHER'}">
	                                            		<td>강사</td>
	                                            	</c:when>
	                                            	<c:when test="${ questionDetail.questionType eq 'USER'}">
	                                            		<td>수강생</td>
	                                            	</c:when>
	                                            </c:choose>
	                                        </tr>
	                                        <tr>
	                                            <th>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</th>
	                                            <td>${ questionDetail.questionName }</td>
	                                            <th>아&nbsp;&nbsp;이&nbsp;&nbsp;디</th>
	                                            <td>${ questionDetail.questionId }</td>
	                                        </tr>
	                                        <tr>
	                                            <th>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
	                                            <td colspan="3">
	                                            	${ questionDetail.questionTitle }
	                                            </td>
	                                        </tr>
	                                        <tr>
	                                            <th>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
	                                            <td colspan="3" id="questionContextArea">
	                                                <div class="questionContext">
	                                                	${ questionDetail.questionContent }
	                                                </div>
	                                            </td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                            </div>

	                            <div class="card-body">
	                                <table class="table">
	                                    <tr>
	                                        <th id="requestTitle">답&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;변</th>
	                                        <td id="requestContextArea">
	                                            <div>
	                                            	<c:choose>
	                                            		<c:when test="${empty questionDetail.questionReContent }">
	                                            			<input type="text" name="questionReContent" id="requestContext" required>
	                                            		</c:when>
	                                            		<c:when test="${not empty questionDetail.questionReContent}">
	                                            			${ questionDetail.questionReContent }
	                                            		</c:when>
	                                            	</c:choose>
	                                            </div>
	                                        </td>
	                                    </tr>
	                                </table>
	                                
	                                <div class="submitBtn">
	                                	<c:if test="${empty questionDetail.questionReContent}">
	                                		<input type="submit" id="questionAnswerBtn" class="answerBtn" value="답변달기">
	                                	</c:if>
	                                    <input type="button" class="answerBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/questionManagement?currentMenu=question&mt=to'" value="리스트보기">
	                                </div>
	                            </div>
                            </form>

                        </div>
                    </div>
                </main>
            </div>
            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>

