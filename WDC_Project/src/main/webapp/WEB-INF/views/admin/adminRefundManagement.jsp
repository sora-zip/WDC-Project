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
        
            .refundNo {
                width: 49.8%;
                border-radius: 5px;
                margin-top: 0.5%;
                background: #fef0ae;
                border: none;
                height: 30px;
            }
            
            .refundNo:hover {
            	background: rgb(112, 112, 112);
            }

            .refundYes {
                width: 49.8%;
                border-radius: 5px;
                margin-top: 0.5%;
                background: #fef0ae;
                border: none;
                height: 30px;
            }
            
            .refundYes:hover {
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
                                <i class="fas fa-table me-1"></i>환불 내역
                            </div>
                            
                            <div class="sideMenu">
                            	<input type="button" id="N" class="refundNo" value="예정" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/refundManagement?currentMenu=refund&YN=N'">
                            	<input type="button" id="Y" class="refundYes" value="완료" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/refundManagement?currentMenu=refund&YN=Y'">
      						</div>
                            
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>환불신청번호</th>
                                            <th>클래스타입</th>
                                            <th>클래스명</th>
                                            <th>아이디</th>
                                            <th>신청일</th>
                                            <th>승인여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     					<c:forEach items="${refundList}" var="RefundDTO">
				                            <tr onclick="location.href='${ pageContext.servletContext.contextPath}/admin/refundDetail?currentMenu=refund&status=${RefundDTO.refundStatus}&no=${RefundDTO.cancelNo}&classNo=${RefundDTO.classNo}'">
				                                <td>${RefundDTO.cancelNo}</td>
				                                <c:choose>
				                                	<c:when test="${RefundDTO.classType eq 'O'}">
				                                		<td>원데이</td>
				                                	</c:when>
				                                	<c:when test="${RefundDTO.classType eq 'R'}">
				                                		<td>정규</td>
				                                	</c:when>
				                                </c:choose>
				                                <td>${RefundDTO.className}</td>
				                                <td>${RefundDTO.id}</td>
				                                <td>${RefundDTO.refundApplyDate}</td>
				                                <td>${RefundDTO.refundStatus}</td>
				                                <input type="hidden" name="classNo" value="${ RefundDTO.classNo }">
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
    			var currentTab = NdocumentUrl .searchParams.get("YN");  //url에 있는 name이란 파라미터값을 가지고옴
    			
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