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
	        .container-fluid {
	        	margin-top: 30px;
	        }
	        
	        .card-header {
	        	font-size: x-large;
	        }
	        
	        th {
	            width: 200px;
	            text-align: center !important;
	            border: 1px solid lightgrey !important;
	            background: #fef0ae !important;
	        }
	
	        td {
	            text-align: center;
	            border: 1px solid lightgrey !important;
	        }
	        
	        .moveReturnPageBtn {
	        	 margin-left: 92%;
	        }
	        
	        .returnBtn {
	        	 width: 100px; 
	        	 background: #fef0ae; 
	        	 border: 1px solid lightgrey;
	        }
	
	        .returnBtn:hover {
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
                                <i class="fas fa-table me-1"></i>쿠폰 상세
                            </div>

                            <div class="card-body">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>대 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상</th>
                                            <td>
                                            	<c:if test="${ couponDetail.userId eq 'TOTAL'}">고객 전체</c:if>
                                            	<c:if test="${ couponDetail.userId ne 'TOTAL'}">
                                            		${ couponDetail.userId }
                                            	</c:if>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>쿠 &nbsp;폰 &nbsp;명</th>
                                            <td>${ couponDetail.couponName }</td>
                                        </tr>
                                        <tr>
                                            <th>사용 기한</th>
                                            <td>${ couponDetail.startDate } ~ ${ couponDetail.endDate }</td>
                                        </tr>
                                        <tr>    
                                            <th>할인 금액</th>
                                            <td>${ couponDetail.disamount }원</td>
                                        </tr>
                                        <c:if test="${ couponDetail.userId eq 'TOTAL'}">
                                        	<c:choose>
                                        		<c:when test="${couponDetail.cntUseUser eq 0}">
                                        			<th>사용인원</th>
                                        			<td>아직 아무도 사용하지 않았습니다</td>
                                        		</c:when>
                                        		<c:when test="${couponDetail.cntUseUser ne 0}">
                                        			<th>사용인원</th>
                                        			<td>총 ${couponDetail.cntUseUser}명</td>
                                        		</c:when>
                                        	</c:choose>
                                        </c:if>
                                    </tbody>
                                </table>

                                <div class="moveReturnPageBtn">
                                    <input type="submit" class="returnBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/couponManagement?currentMenu=coupon'" value="리스트보기">
                                </div>
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

