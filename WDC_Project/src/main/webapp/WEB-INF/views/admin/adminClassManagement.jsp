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
    	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    </head>
    <style>
        	.category {
        		margin-top: 0.5%;
                width: 13.9%;
                border-radius: 5px;
                background: #fef0ae;
                border: none;
                height: 30px;
            }

            .category:hover {
                background: rgb(112, 112, 112);
            }    
    </style>
    <body class="sb-nav-fixed">
      <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if> 
        
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
                                클래스 관리
                            </div>
                             <div class="sideMenu">
                             	<input type="button" id="total" class="category" value="전체" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=total'">
                            	<input type="button" id="one" class="category" value="1차 심사 진행중" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=one'">
                            	<input type="button" id="t" class="category" value="2차 심사 진행중" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/seconddecision?currentMenu=class&pc=t'">
                            	<input type="button" id="accept" class="category" value="승인된 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=accept'">
                            	<input type="button" id="reject" class="category" value="거절된 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=reject'">
                            	<input type="button" id="lackOfCheering" class="category" value="응원 미달 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=lackOfCheering'">
                            	<input type="button" id="complate" class="category" value="완료 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=complate'">
      						</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>클래스 번호</th>
                                            <th>클래스 제목</th>
                                            <th>강사 이름</th>
                                            <th>클래스 가격</th>
                                            <th>클래스 종류</th>
                                            <th>클래스 상태</th>
                                            <th>심사 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     				<c:forEach items="${classList}" var="ClassDTO">
				                            <tr style="cursor:pointer;" onclick="location.href='${pageContext.servletContext.contextPath}/admin/classDetail?currentMenu=class&cn=${ClassDTO.classNo}&ct=${ClassDTO.classDicsionStatus}&cd=${ClassDTO.decisionStatus}'">
				                                <td>${ClassDTO.classNo}</td>
				                                <td>${ClassDTO.classTitle}</td>
				                                <td>${ClassDTO.teacherName}</td>
				                                <td>${ClassDTO.classPrice}</td>
				                                <td>
				                                <c:choose>
				                                	<c:when test="${ClassDTO.classType eq 'O'}">
				                                		원데이 클래스
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classType eq 'R'}">
				                                		정규 클래스
				                                	</c:when>
				                                </c:choose>
				                                </td>
				                                <td>
				                                <c:choose>
				                                	<c:when test="${ClassDTO.decisionStatus eq 'Y'}">
				                                		클래스 개강 예정
				                                	</c:when>
				                                	<c:when test="${ClassDTO.decisionStatus eq 'P'}">
				                                		클래스 진행중
				                                	</c:when>
				                                	<c:otherwise>
				                                		클래스 종료
				                                	</c:otherwise>
				                                </c:choose>
				                                </td>
				                                <td>
		                                		<c:choose>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'W'}">
				                                		1차 심사중
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'F'}">
				                                		2차 심사중
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'S'}">
				                                		클래스 개설 승인 완료
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'R'}">
				                                		클래스 심사 거절
				                                	</c:when>
				                                	<c:otherwise>
				                                		2차 심사 응원 미달
				                                	</c:otherwise>
				                                </c:choose>
				                                </td>
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
    			var currentTab = NdocumentUrl .searchParams.get("ct");  //url에 있는 name이란 파라미터값을 가지고옴
    			
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