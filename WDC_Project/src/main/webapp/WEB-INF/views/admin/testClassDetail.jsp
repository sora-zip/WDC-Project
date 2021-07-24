<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
           	<!-- header -->
		<%@ include file="commons/header.jsp" %>
        <div id="layoutSidenav">
        	<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>
            <div id="layoutSidenav_content">
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">
                            <div class="card-header" style="font-size: x-large;">클래스 상세 페이지 </div>
                              <div class="container">
                              	<br><br>
	                              <div style="display:flex;">
		                            <c:forEach var="classPic" items="${ classPic }">
		                              <div style="background-color: red; width: 450px; height:300px;">
                                         <div class=""><img class="" style=" width: 450px; height:300px;"src="${pageContext.servletContext.contextPath }/${ classPic.titlePic}" alt="..."></div>
		                              </div>
                                     </c:forEach>
	                              </div>
									<table class="table table-bordered">
										<tr>
											<th>클래스 제목</th>
											<td>리포머 하나면 가성비 홈짐 완성! 하루 30분 리포머 필라테스</td>
										</tr>
										<tr>
											<th>클래스 신청일</th>
											<td>신청좀해</td>
										</tr>
										<tr>
											<th>클래스 타입</th>
											<td>원데이 클래스</td>
										</tr>
										<tr>
											<th>카테고리 </th>
											<td>스포츠</td>
										</tr>
										<tr>
											<th>강사 이름</th>
											<td>김현빈</td>
										</tr>
										<tr>
											<th>강사 아이디</th>
											<td>TE02</td>
										</tr>
										<tr>
											<th>클래스 가격</th>
											<td>560,000 원</td>
										</tr>
										<tr>
											<th>클래스 기간</th>
											<td>월 부터 ~ 월 까지</td>
										</tr>
										<tr>
											<th>소요 시간</th>
											<td>2시간</td>
										</tr>
										<tr>
											<th>공방 주소</th>
											<td>경기도 안산시 단원구 고잔로 81 힐스테이트 중앙</td>
										</tr>
										<tr>
											<th>클래스 부가 정보</th>
											<td>부가부가</td>
										</tr>
										<tr>
											<th>추가 제공</th>
											<td>제공제공</td>
										</tr>
										<tr>
											<th>클래스 간단소개</th>
											<td>무야호~</td>
										</tr>
										<tr>
											<th>클래스 소개</th>
											<td>무야호~</td>
										</tr>
										<tr>
											<th>완성작</th>
											<td>사진</td>
											<td>설명</td>
											<th>완성작</th>
											<td>사진</td>
											<td>설명</td>
										</tr>
									</table>
									
									
                              </div>
                        </div>
                    </div>
            </div>
        </div>
    </body>
</html>