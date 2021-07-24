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
        	
        	.subMenuBar {
        		 float: right; 
        		 font-size: 15px; 
        		 margin-top: 4px;"
        	}
        	
        	.issue {
        		background: #fef0ae;
        		width: 100px;
        		border: 1px solid lightgrey;
        	}
	    
	        .issue:hover {
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
                                <i class="fas fa-table me-1"></i>쿠폰 관리

                                <div class="subMenuBar">
                                    <button class="issue" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/couponIssue?currentMenu=coupon'">발급하기</button>
                                </div>
                            </div>

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>쿠폰번호</th>
                                            <th>대상</th>
                                            <th>쿠폰명</th>
                                            <th>할인 금액</th>
                                            <th>발급일</th>
                                            <th>쿠폰 사용 가능 날짜</th>
                                            <th>사용 여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     					<c:forEach items="${couponList}" var="CouponDTO">
				                            <tr onclick="location.href='${ pageContext.servletContext.contextPath }/admin/couponDetail?currentMenu=coupon&no=${ CouponDTO.couponNo }'">
				                                <td>${CouponDTO.couponNo}</td>
				                                <c:choose>
				                                	<c:when test="${CouponDTO.userId eq 'TOTAL'}">
				                                		<td>고객 전체</td>
				                                	</c:when>
				                                	<c:when test="${CouponDTO.userId ne 'TOTAL'}">
				                                		<td>${CouponDTO.userId}</td>
				                                	</c:when>
				                                </c:choose>
				                                <td>${CouponDTO.couponName}</td>
				                                <td>${CouponDTO.disamount}</td>
				                                <td>${CouponDTO.issueDate}</td>
				                                <td>${CouponDTO.startDate} ~ ${CouponDTO.endDate}</td>
				                                <c:choose>
				                                	<c:when test="${CouponDTO.userId eq 'TOTAL'}">
				                                		<td>상세페이지에서 확인</td>
				                                	</c:when>
				                                	<c:when test="${CouponDTO.userId ne 'TOTAL'}">
				                                		<td>${CouponDTO.useStatus}</td>
				                                	</c:when>
				                                </c:choose>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>