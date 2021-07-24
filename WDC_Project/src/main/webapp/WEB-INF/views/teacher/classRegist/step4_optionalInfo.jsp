<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Boutique | Ecommerce bootstrap template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/css/bootstrap.min.css">
<!-- Lightbox-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/css/lightbox.min.css">
<!-- Range slider-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.css">
<!-- Bootstrap select-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- Owl Carousel-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.theme.default.css">
<!-- Google fonts-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<style>
.thumbnail-file-area input[type=file] {
	display: none;
}

.table-bordered th {
	text-align: center;
}
</style>
</head>
<body>
	<!-- 본문 -->
	<div class="container" style="width: 90%; margin :0 auto; display: none;"  id="registPage4">
		<!-- 정규클래스등록1-->
		<div class="row">
			<div class="col-md-2 step">클래스 기본정보</div>
			<div class="col-md-2 step">클래스 소개</div>
			<div class="col-md-3 step">클래스 일정 및 가격</div>
			<div class="col-md-2 nowStep">클래스 부가정보</div>
			<div class="col-md-3 step">클래스 등록 및 약관동의</div>
		</div>
		<br><br><br>
		<h6>기타 제공사항 선택</h6>
		<br>
		<div class="row" style="background-color: #f5f5f5; padding: 20px 10px 10px 10px;">
			<div class="col-md-3">
				<label> <input type="checkbox" value="주차공간" name="addInfo"> 주차공간</label>
			</div>
			<div class="col-md-3">
				<label> <input type="checkbox" value="와이파이" name="addInfo"> 와이파이</label>
			</div>
			<div class="col-md-3">
				<label> <input type="checkbox" value="커피 별도구매" name="addInfo"> 커피 별도구매</label>
			</div>
			<div class="col-md-3">
				<label> <input type="checkbox" value="대중교통 용이" name="addInfo"> 대중교통 용이</label>
			</div>
			<div class="col-md-3">
				<label> <input type="checkbox" value="택시/자가용 추천" name="addInfo"> 택시/자가용 추천</label>
			</div>
			<div class="col-md-3">
				<label> <input type="checkbox" value="음료/간식 제공" name="addInfo"> 음료/간식 제공</label>
			</div>
		</div>
		<br><br><hr><br><br>
		<h6>추가 제공 사항 및 유의사항<b style="font-weight: lighter; color: #f5f5f5;">선택항목</b></h6>
		<br>
		<div class="form-group"	style="background-color: #f5f5f5; padding: 15px 15px 15px 15px">
			<input class="form-control" style="border-radius: 5px;"placeholder="ex) 근처 공용주차장을 이용해주세요" name="addSup">
		</div>
		<br><br><hr><br>
		<button type="button" onclick="movePage(2)" class="btnBack btn-primary">이전</button>
		<button type="button" onclick="movePage(4)" class="btn1 btn-primary">다음</button>
	</div>
</body>

</html>