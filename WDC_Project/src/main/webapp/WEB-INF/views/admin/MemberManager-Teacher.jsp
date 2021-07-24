<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>우리동네 클래스</title>
<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>	
	<style>
		table td{
			font-size: small;
		}
	</style>
</head>
<body class="sb-nav-fixed">
	<!-- header -->
	<%@ include file="commons/header.jsp"%>

	<div id="layoutSidenav">

		<!-- sideBar & footer -->
		<%@ include file="commons/sideBarAndFooter.jsp"%>

		<div id="layoutSidenav_content">
			<div class="container-fluid px-4" style="margin-top: 30px;">
			<div class="card mb-4">
				<div class="card-header" style="font-size: x-large;">
					<i class="fas fa-table me-1"></i> 회원관리(강사) 상세 페이지
				</div>
				<br>
				<br>
				<br>
				<br>
				<div class="row" align="center" style="margin-left: 140px; margin-bottom: 60px;">
					
					<div class="col-md-4" style="font-size: xx-large; padding-left: 150px;">${memberInfo.name}
						<c:choose>
							<c:when test="${ memberInfo.usertype eq 'T'}">강사님</c:when>
							<c:when test="${ memberInfo.usertype eq 'U'}">수강생</c:when>
						</c:choose>
					</div>
						<br>
						<br> 
						<div class="col-sm-10" style="margin-left: 40px;" align="center">
							<br><br><br>
						<table class="table table-striped">
							<tr>
								<td>회원 번호</td>
								<td style="padding-left: 200px;">${ memberInfo.teNo }</td>
								<td></td>
							</tr>
							<tr>
								<td>회원 타입</td>
								<td style="padding-left: 200px;">
									<c:choose>
										<c:when test="${ memberInfo.usertype eq 'T'}">강사님</c:when>
										<c:when test="${ memberInfo.usertype eq 'U'}">수강생</c:when>
									</c:choose></td>
								<td></td>
							</tr>
							<tr>
								<td>강사 타입</td>
								<td style="padding-left: 200px;"><c:choose>
										<c:when test="${ memberInfo.teacherType eq 'INDI'}">사업자</c:when>
										<c:when test="${ memberInfo.teacherType eq 'FREE'}">프리랜서</c:when>
									</c:choose></td>
								<td></td>
							</tr>
							<tr>
								<td>강사 이름</td>
								<td style="padding-left: 200px;">${ memberInfo.name }</td>
								<td></td>
							</tr>
							<tr>
								<td>아이디</td>
								<td style="padding-left: 200px;">${ memberInfo.id }</td>
								<td></td>
							</tr>
							<tr>
								<td>휴대폰 번호</td>
								<td style="padding-left: 200px;">${ memberInfo.phone }</td>
								<td></td>
							</tr>
							<tr>
								<td>가입일</td>
								<td style="padding-left: 200px;">${ memberInfo.enrollDate }</td>
								<td></td>
							</tr>
							<tr>
								<td>누적 신고</td>
								<td style="padding-left: 200px;">${ memberInfo.reportedCnt }</td>
								<td align="right"><c:choose>
										<c:when test="${memberInfo.blockYn eq 'N'}">
											<button type="button" class="btn btn-danger"
												data-bs-toggle="modal" data-bs-target="#insertBlackList">
												블랙리스트 등록</button>
										</c:when>
										<c:otherwise>
											<button class="btn btn-danger" disabled>BlackList</button>
										</c:otherwise>
									</c:choose></td>
							</tr>
						</table>
						<button class="btn btn-success" style="margin-top: 30px; margin-right: 50px;" type="button" data-bs-toggle="modal" data-bs-target="#popupProfile">프로필 보기</button>
						<button class="btn btn-primary" style="margin-top: 30px;" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectMemberBycategory?currentMenu=member&ut=st'">&nbsp;&nbsp;&nbsp;&nbsp;뒤로&nbsp;&nbsp;가기&nbsp;&nbsp;&nbsp;&nbsp;</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 블랙리스트 등록 -->
	<div class="modal fade" id="insertBlackList" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">블랙리스트 등록</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form method="POST"
					action="${pageContext.servletContext.contextPath}/admin/blackListInsert">
					<div class="modal-body">
						<textarea cols="50" rows="10" style="resize: none;"
							name="blackReason"></textarea>
						<input type="hidden" name="userNo" value="${ memberInfo.teNo }" />
						<input type="hidden" name="type" value="${ memberInfo.usertype }" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-danger">등록하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
		<!-- 강사님 프로필 보기 -->
		<div class="modal fade" id="popupProfile" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">${ memberInfo.name } 강사님 프로필</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
					<div class="modal-body" align="center">
					<c:choose>
						<c:when test="${not empty memberInfo.imgPath}">	
							<img src="${ pageContext.servletContext.contextPath }/resources/upload/${memberInfo.imgPath}"alt="강사님 사진" width="300" height="300" style="border-radius: 100%;"/>
						</c:when>
						<c:otherwise>
							<img src="${ pageContext.servletContext.contextPath }/resources/user/img/user.png"alt="강사님 사진" width="300" height="300" style="border-radius: 100%;"/>
						</c:otherwise>
					</c:choose>
						<br>
						<br>
						<textarea cols="55" rows="10" style="resize: none;"placeholder="강사님 소개란 입니다." readonly>${ memberInfo.teacherIntro }</textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					</div>
			</div>
		</div>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
</body>
</html>