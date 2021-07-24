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
        	
        	#tabMenu {
        		 margin-left: 0px;
        		 margin-bottom: 1%;
        	}
        
            .calculateNo {
                width: 49.8%;
                border-radius: 5px;
                margin-top: 0.5%;
                background: #fef0ae;
                border: none;
                height: 30px;
            }
            
            .calculateNo:hover {
            	background: rgb(112, 112, 112);
            }

            .calculateYes {
                width: 49.8%;
                border-radius: 5px;
                margin-top: 0.5%;
                background: #fef0ae;
                border: none;
                height: 30px;
            }
            
            .calculateYes:hover {
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
                                <i class="fas fa-table me-1"></i>정산 내역
                            </div>
                            
                            <div class="sideMenu">
                            	<input type="button" id="N" class="calculateNo" value="예정" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/calculateManagement?currentMenu=calculate&YN=N&type=O'">
                            	<input type="button" id="Y" class="calculateYes" value="완료" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/calculateManagement?currentMenu=calculate&YN=Y&type=O'">
      						</div>
                            
                            <div class="card-body">
                            
                            	<ul class="nav nav-tabs" id="tabMenu">
								  <li class="nav-item">
								    <a class="nav-link" data-toggle="tab" href="${ pageContext.servletContext.contextPath }/admin/calculateManagement?currentMenu=calculate&YN=${calculateList[0].calcYN}&type=O" id="O">원데이</a>
								  </li>
								  <li class="nav-item">
								    <a class="nav-link" data-toggle="tab" href="${ pageContext.servletContext.contextPath }/admin/calculateManagement?currentMenu=calculate&YN=${calculateList[0].calcYN}&type=R" id="R">정규</a>
								  </li>
								</ul>
                            
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>정산번호</th>
                                            <th>분류</th>
                                            <th>성명</th>
                                            <th>아이디</th>
                                            <th>정산여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     					<c:forEach items="${calculateList}" var="CalculateDTO">
				                            <tr onclick="location.href='${ pageContext.servletContext.contextPath}/admin/calculateDetail?currentMenu=calculate&YN=${CalculateDTO.calcYN}&type=${CalculateDTO.classType}&no=${CalculateDTO.calcNo}&cday=${CalculateDTO.cday}'">
				                                <td>${CalculateDTO.calcNo}</td>
				                                <c:choose>
				                                	<c:when test="${CalculateDTO.teType eq 'FREE'}">
				                                		<td>프리랜서</td>
				                                	</c:when>
				                                	<c:when test="${CalculateDTO.teType eq 'INDI'}">
				                                		<td>사업자</td>
				                                	</c:when>
				                                </c:choose>
				                                <td>${CalculateDTO.teName}</td>
				                                <td>${CalculateDTO.teId}</td>
				                                <td>${CalculateDTO.calcYN}</td>
				                                <input type="hidden" value="${CalculateDTO.classType}" name="classType">
				                                <input type="hidden" value="${CalculateDTO.cday}" name="cday">
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
    			var currentTab = NdocumentUrl.searchParams.get("YN");  //url에 있는 name이란 파라미터값을 가지고옴
    			var currentTabTab = NdocumentUrl.searchParams.get("type");
    			
    			const currentTabBar = document.getElementById(currentTab);
    			currentTabBar.style.background = '#ffe163';
    			currentTabBar.style.fontWeight = 'bolder';
    			
    			const currentTabTabBar = document.getElementById(currentTabTab);
    			currentTabTabBar.className = 'nav-link active';
    		}
    	</script>
    	<script>drawColor();</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>