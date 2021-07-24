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
        
        #tabMenu {
       		 margin-left: 0px;
       		 margin-bottom: 0.5%;
        }
        
        .table {
        	border: 1px solid lightgray;
        }
        
        th {
            text-align: center !important;
            border: 1px solid lightgray !important;
            vertical-align: middle;
            width: 130px !important;
            background: #fef0ae !important;
        }

        td {
            text-align: center;
            width: 215px;
        }

        .detailCalculate {
        	border: 1px solid lightgray;
        }
        
        .signCalculate {
        	vertical-align: middle;
        	font-weight: bolder;
        	font-size: large;
        }
        
        .submitBtn {
        	margin-left: 84%;
        }
        
        .returnPageBtn {
        	width: 100px; 
        	background: #fef0ae; 
        	border: 1px solid lightgrey;
        }

        .returnPageBtn:hover {
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
                                <i class="fas fa-table me-1"></i>정산 상세
                            </div>

							<form id="area" method="post">
	                            <div class="card-body">
	                            
	                            	<ul class="nav nav-tabs" id="tabMenu">
		                            	<li class="nav-item">
										    <a class="nav-link active" data-toggle="tab">클 래 스</a>
										</li>
									</ul>
	                                <table class="table" id="classTable">
	                                    <tbody>
	                                        <tr>
	                                            <th>타 입</th>
	                                            <c:choose>
				                                	<c:when test="${ calculateInfoDetail.classType eq 'O'}">
				                                		<td>원데이</td>
				                                	</c:when>
				                                	<c:when test="${ calculateInfoDetail.classType eq 'R'}">
				                                		<td>정규</td>
				                                	</c:when>
					                            </c:choose>
	                                            <th>제 목</th>
	                                            <td>${ calculateInfoDetail.className }</td>
	                                            <%-- <th>수강인원</th>
	                                            <td>${ calculateInfoDetail.countStudent }</td> --%>
	                                            <input type="hidden" name="classNo" value="${ calculateInfoDetail.classNo }">
	                                        </tr>
	                                     </tbody>
	                                 </table>
	                                
	                                <ul class="nav nav-tabs" id="tabMenu">
		                            	<li class="nav-item">
										    <a class="nav-link active" data-toggle="tab">강 사</a>
										</li>
									</ul>
	                                <table class="table" id="teacherTable">
	                                	<tbody>
	                                		<tr>
	                                			<th>이 름</th>
	                                            <td>${ calculateInfoDetail.teName }</td>
	                                            <th>타 입</th>
	                                            <c:choose>
					                                	<c:when test="${ calculateInfoDetail.teType eq 'FREE'}">
					                                		<td>프리랜서</td>
					                                	</c:when>
					                                	<c:when test="${ calculateInfoDetail.teType eq 'INDI'}">
					                                		<td>사업자</td>
					                                	</c:when>
					                            </c:choose>
	                                            <th>아이디</th>
	                                            <td>${ calculateInfoDetail.teId }</td>
	                                            <%-- <th>수업일수</th>
	                                            <td>${ calculateInfoDetail.cday }</td> --%>
	                                            <input type="hidden" name="teNo" value="${ calculateInfoDetail.teNo }">
	                                		</tr>
	                                	</tbody>
	                                </table>
	                                
	                                <ul class="nav nav-tabs" id="tabMenu">
		                            	<li class="nav-item">
										    <a class="nav-link active" data-toggle="tab">정 산</a>
										</li>
									</ul>
	                                <table class="table" id="calculateTable">
	                                	<tbody>
	                                		<tr>
	                                			<th class="th">정산날짜</th>
	                                            <td class="td">${ calculateInfoDetail.calcMonth }</td>
	                                            <th class="th">은행</th>
	                                            <td class="td">${ calculateInfoDetail.bank }</td>
	                                            <th class="th">계좌번호</th>
	                                            <td class="td">${ calculateInfoDetail.teAcntNo }</td>
	                                            <th class="th">예금주</th>
	                                            <td class="td">${ calculateInfoDetail.teAcntHolder }</td>
	                                		</tr>
	                                		<tr>
	                                			<th colspan="9">상세 정산 정보</th>
	                                		</tr>
	                                		<tr>
	                                            <td>
	                                                <div class="detailCalculate">총 매출</div>
	                                                <div class="detailCalculate">${ calculateInfoDetail.totalSalesString }</div>
	                                            </td>
	                                            <td class="signCalculate">
	                                                <div>-</div>
	                                            </td>
	                                            <td>
	                                                <div class="detailCalculate">소비세</div>
	                                                <div class="detailCalculate">${ calculateInfoDetail.tax }</div>
	                                            	<input type="hidden" name="tax" value="${ calculateInfoDetail.tax }">
	                                            </td>
	                                            <td class="signCalculate">
	                                                <div>-</div>
	                                            </td>
	                                            <td>
	                                                <div class="detailCalculate">사용 수수료(10%)</div>
	                                                <div class="detailCalculate">${ calculateInfoDetail.useFeesString }</div>
	                                            	<input type="hidden" name="useFees" value="${ calculateInfoDetail.useFees }">
	                                            </td>
	                                            <td class="signCalculate">
	                                                <div>-</div>
	                                            </td>
	                                            <td>
	                                                <div class="detailCalculate">카드 수수료(2.1%)</div>
	                                                <div class="detailCalculate">${ calculateInfoDetail.cardFeesString }</div>
	                                            	<input type="hidden" name="cardFees" value="${ calculateInfoDetail.cardFees }">
	                                            </td>
	                                            <td class="signCalculate">
	                                                <div>=</div>
	                                            </td>
	                                            <td>
	                                                <div class="detailCalculate">최종 금액</div>
	                                                <div class="detailCalculate">${ calculateInfoDetail.calcAmountString }</div>
	                                                <input type="hidden" name="calcAmount" value="${ calculateInfoDetail.calcAmount }">
	                                                <input type="hidden" name="tuitionMNo" value="${ calculateInfoDetail.tuitionMNo }">
	                                            </td>
	                                        </tr>
	                                	</tbody>
	                                </table>
	
	                                <div class="submitBtn">
	                                	<c:choose>
	                                		<c:when test="${ calculateInfoDetail.calcYN eq 'N'}">
	                                			<c:if test="${ calculateInfoDetail.today eq '14'}">
				                                	<input type="button" id="calculateBtn" class="returnPageBtn" value="정산하기">
	                                			</c:if>
	                                		</c:when>
	                                	</c:choose>
	                                    <input type="button" class="returnPageBtn" value="리스트보기" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/calculateManagement?currentMenu=calculate&YN=N&type=O'">
	                                </div>
	                            </div>
                            </form>

                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script>
        	$("#calculateBtn").on("click",function(){
        		$("#area").attr("action","/wdc/admin/calculateDetail").submit();
        	});
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>
