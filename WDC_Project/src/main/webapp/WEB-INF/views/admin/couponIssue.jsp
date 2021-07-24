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
            width: 200px;
            text-align: center !important;
            border: 1px solid lightgrey !important;
            background: #fef0ae !important;
        }

        td {
            border: 1px solid lightgrey !important;
        }
        
		.radioBtn {
			margin-right: 15px;
        	margin-left: 250px;
		}
		
		#certainArea {
			margin-left: 10px;
		}
		
		.couponInfoArea {
			width: 1175px;
			border: none;
		}
		
		.day {
			text-align: center; 
        	background: rgb(235, 235, 235) !important;
		}
		
		.couponIssueBtnArea {
        	margin-left: 84%;
        }
        
        .couponIssueBtn {
        	background: #fef0ae;
        	width: 100px;
        	border: 1px solid lightgrey;
        }
        
        .couponIssueBtn:hover {
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
                                <i class="fas fa-table me-1"></i>쿠폰 발급
                            </div>

                            <form id="area" method="POST" action="/wdc/admin/couponIssue">
								<div class="card-body">
	                                <table class="table">
		                                    <tbody>
		                                        <tr>
		                                            <th>대 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상</th>
		                                            <td colspan="4">
		                                                <input type="radio" name="type" value="total" class="radioBtn" required>전체 회원
		                                                <c:choose>
		                                                	<c:when test="${not empty id}">
			                                                <input type="radio" name="type" value="certain" class="radioBtn" checked>특정 회원
			                                                <input type="text" name="userId" id="certainArea" placeholder="ID를 입력하세요." value="${id}">
		                                                	</c:when>
		                                                	<c:otherwise>
			                                                <input type="radio" name="type" value="certain" class="radioBtn">특정 회원
			                                                <input type="text" name="userId" id="certainArea" placeholder="ID를 입력하세요." value="">
		                                                	</c:otherwise>
		                                                </c:choose>
		                                            </td>
		                                        </tr>
		                                        <tr>
		                                            <th>쿠 &nbsp;폰 &nbsp;명</th>
		                                            <td colspan="4">
		                                            	<input type="text" name="couponName" class="couponInfoArea" required>
		                                            </td>
		                                        </tr>
		                                        <tr>
		                                            <th>사용 기한</th>
		                                            <td class="day">시작일</td>
		                                            <td><input type="date" name="startDate" required></td>
		                                            <td class="day">종료일</td>
		                                            <td><input type="date" name="endDate" required></td>
		                                        </tr>
		                                        <tr>
		                                            <th>할인 금액</th>
		                                            <td colspan="4">
		                                            	<input type="text" name="discount" class="couponInfoArea" required>
		                                            </td>
		                                        </tr>
		                                    </tbody>
	                                    
	                                </table>
	
	                                <div class="couponIssueBtnArea">
	                                	<input type="submit" id="btnCoupon" class="couponIssueBtn"  value="발급하기">
	                                    <input type="button" class="couponIssueBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/couponManagement?currentMenu=coupon'" value="리스트보기">
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

