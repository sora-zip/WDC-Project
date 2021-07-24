<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>      

    <style>
        	.category {
        		margin-top: 0.5%;
                width: 33%;
                border-radius: 5px;
                background: #fef0ae;
                border: none;
                height: 30px;
            }

            .category:hover {
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
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                블랙리스트 관리
                            </div>
                            <div class="sideMenu">
                            	<input type="button" id="to" class="category" value="전체" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/blackListMenagement?currentMenu=blacklist&ut=to'">
                            	<input type="button" id="tc" class="category" value="강사" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/blackListMenagement?currentMenu=blacklist&ut=tc'">
                            	<input type="button" id="st" class="category" value="수강생" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/blackListMenagement?currentMenu=blacklist&ut=st'">
      						</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>분류</th>
                                            <th>아이디</th>
                                            <th>성명</th>
                                            <th>블랙리스트 등록 날짜</th>
                                            <th>블랙리스트 사유</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                         				<c:forEach items="${allBlackList}" var="allBlackList">
                         				<c:set value="${i+1}" var="i"></c:set>
				                            <tr>
				                                <td><c:choose>
				                                	<c:when test="${ allBlackList.type eq 'T'}">강사</c:when>
				                                	<c:when test="${ allBlackList.type eq 'U'}">수강생</c:when>
				                                </c:choose></td>
				                                <td>${allBlackList.blackId}</td>
				                                <td>${allBlackList.blackName}</td>
				                                <td>${allBlackList.enrollDate}</td>
				                                <td><button class="btn btn-primary"data-bs-toggle="modal" data-bs-target="#blockReason${i}" type="button">사유보기</button></td>
				                            </tr>
				                            
									 <!-- 블랙리스트 사유 보기 -->
						<div class="modal fade" id="blockReason${i}" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">블랙리스트 등록사유</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>
										<div class="modal-body">
											<div align="center">
												${allBlackList.blackReason}
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">닫기</button>
										</div>
								</div>
							</div>
						</div>           
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
    			var currentTab = NdocumentUrl .searchParams.get("ut");  //url에 있는 name이란 파라미터값을 가지고옴
    			
    			console.log(currentTab);
    			const currentTabBar = document.getElementById(currentTab);
    			currentTabBar.style.background = '#ffe163';
    			currentTabBar.style.fontWeight = 'bolder';
    		}
    	</script>
    	<script>drawColor();</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>