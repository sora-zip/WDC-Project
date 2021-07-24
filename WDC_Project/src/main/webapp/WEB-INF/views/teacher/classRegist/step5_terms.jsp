<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>우리 동네 클래스 | W.D.C </title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/css/bootstrap.min.css">
<!-- Lightbox-->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/css/lightbox.min.css">
<!-- Range slider-->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.css">
<!-- Bootstrap select-->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- Owl Carousel-->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.theme.default.css">
<!-- Google fonts-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
<!-- theme stylesheet-->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css"
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
	<div class="container" style="width: 90%; margin :0 auto; display: none;" id="registPage5">
		<!-- 정규클래스등록1-->
		<div class="row">
			<div class="col-md-2 step">클래스 기본정보</div>
			<div class="col-md-2 step">클래스 소개</div>
			<div class="col-md-3 step">클래스 일정 및 가격</div>
			<div class="col-md-2 step">클래스 부가정보</div>
			<div class="col-md-3 nowStep">클래스 등록 및 약관동의</div>
		</div>
		<br>
		<br>
		<br>
		<div class="row" style="border: 1px solid rgba(0, 0, 0, 0.2); padding: 20px 0 10px 10px; width: 90%;">
			<div class="col-md-9">
				<h6>우동클 이용약관 동의</h6>
				<br>
			</div>
			<div class="col-md-2">
				<label> 전체동의 <input type="checkbox"	style="margin-left: 10px;" id="allCheck" onclick="allTermCheck(this);" value="0">
				</label>
			</div>
			<table>
				<tbody>
					<tr>
						<td>[필수]</td>
						<td style="font-size: 14px;">서비스 이용약관동의</td>
						<td style="width: 100px;"></td>
						<td colspan="2"><label>동의합니다.<input type="checkbox" style="margin-left: 4px;" class="indiviCheck" onclick="clickCheck();"></label></td>
					</tr>
					<tr>
						<td>[필수]</td>
						<td style="font-size: 14px;">서비스 개인정보 처리방침 동의</td>
						<td style="width: 100px;"></td>
						<td colspan="2"><label>동의합니다.<input type="checkbox" style="margin-left: 4px;" class="indiviCheck" onclick="clickCheck();"></label></td>
					</tr>
					<tr>
						<td>[필수]</td>
						<td style="font-size: 14px;">환불은 규정에 따라 처리됩니다.</td>
						<td style="width: 100px;"></td>
						<td colspan="2"><label>동의합니다.<input type="checkbox" style="margin-left: 4px;" class="indiviCheck" onclick="clickCheck();"></label></td>
					</tr>
					<tr>
						<td></td>
						<td style="width: 600px; font-size: 14px;">따로 설정하실 수 없으며,	우동클 환불 규정에 따라 처리되오니 꼭 확인 해 주시기 바랍니다.</td>
						<td style="width: 100px;"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<br><br><br>
		<h6>꼭 확인해주세요!</h6>
		<div>
			* 작성하신 내용은 우동클 운영진의 검수츨 통해 오픈 됩니다. 승인/반려될 수 있습니다.(평일기준 7일 소요)<br>
			* 클래스 검수 요청 전 입력하신 정보를 마지막으로 확인해주세요. 검수 요청 후에는 수정이 불가합니다.<br>
		</div>
		<br><br><hr><br><br>

		<button type="button"onclick="movePage(3);" class="btnBack btn-primary">이전</button>
		<button class="btn1 btn-primary" style="width:200px;">클래스 검수 요청하기</button>
	</div>
	<script>
	  function allTermCheck(p){
		  var check = document.getElementsByClassName("indiviCheck");
		if(p.value == 0){
			for(var i = 0; i < check.length; i++){
				check[i].checked = true;
			}
			p.value = 1;
		} else {
			for(var i = 0; i < check.length; i++){
				check[i].checked = false;
			}
			p.value = 0;
		}
	  }
    </script>
	<script>
		function clickCheck(){
			var check = document.getElementsByClassName("indiviCheck");
			var cnt = 0;
			for(var i = 0; i < check.length; i++){
				if(check[i].checked){
					cnt++;
				}
			}

			if(cnt == check.length){
				document.getElementById("allCheck").checked = true;
				document.getElementById("allCheck").value = 1;
			} else {
				document.getElementById("allCheck").checked = false;
				document.getElementById("allCheck").value = 0;
			}
		}
	</script>

</body>

</html>