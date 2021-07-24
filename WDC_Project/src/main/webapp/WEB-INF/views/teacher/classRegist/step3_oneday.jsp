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
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon"
	href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
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

.btn-group>.btn:first-child:not(:last-child):not(.dropdown-toggle) {
	border-bottom-right-radius: 0;
	border-top-right-radius: 0;
}

.btn-default, .btn-default:focus {
	color: #5e5e5e;
	background-color: #fff;
	border-color: #e6e6e6;
}

.btn {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	letter-spacing: 0.01em;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-font-feature-settings: "kern" 1;
	-moz-font-feature-settings: "kern" 1;
	margin-bottom: 0;
	border: 1px solid #f0f0f0;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	background-image: none !important;
	color: #626262;
	background-color: #fff;
	text-shadow: none;
	box-shadow: none;
	line-height: 21px;
	position: relative;
	transition: color 0.1s linear 0s, background-color 0.1s linear 0s,
		opacity 0.2s linear 0s !important;
	padding: 6px 10px;
	border-radius: 7px;
}

label.btn-default.active {
	border-color: #fef0ae;
	background-color: #fef0ae;
}

input[name="dayName"] {
	display: none;
}
.schedule-none{
    background-color: white;
    border-radius : 5px;
	border-color:  #fef0ae;
}
.schedule-select{
    background-color: #fef0ae;
    border-radius: 5px;
	border-color:  #fef0ae;
}
</style>

</head>

<body>
	<!-- 본문 -->
	<div class="container" style="width: 90%; margin :0 auto; display: none" id="oneday">
		<!-- 정규클래스등록1-->
		<div class="row">
			<div class="col-md-2 step">클래스 기본정보</div>
			<div class="col-md-2 step">클래스 소개</div>
			<div class="col-md-3 nowStep">클래스 일정 및 가격</div>
			<div class="col-md-2 step">클래스 부가정보</div>
			<div class="col-md-3 step">클래스 등록 및 약관동의</div>
		</div>
		<br><br><br>
		<h6>스케쥴 등록</h6>
		<div style="font-size: 15px; opacity: .7">
			- 개별일정 : 반복되지 않는 일정을 개별로 등록할 경우<br>
			- 요일반복 : 특정 기간 매주 같은 요일의 일정을	등록할 경우<br>
			- 상시모집 : 날짜를 지정하지 않고 상시로 모집하는 경우<br>
			- 정규모집 : 원데이가 아닌 주, 월 단위 정규 과정을 모집하는 경우<br> (정규모집의 경우 정규모집 또는 상시모집으로 등록해주세요)
		</div>
		<br><br>
		<div class="row" style="border: 1px solid rgba(0, 0, 0, 0.2); padding: 20px 20px 20px 20px;">
			<div class="col-md-4" align="center">스케쥴선택<br>
				<button type="button" id="individual" class="schedule-none" onclick="scheduleChange(this);" >개별일정</button>
				<button type="button" id="repeat" class="schedule-none" onclick="scheduleChange(this)">요일반복</button>
				<!-- <button id="always" onclick="scheduleChange(this)">상시모집</button> -->
				<input type="hidden" id="scheduleType" value="" name="scheduleType">
			</div>
			<div class="col-md-3" align="center">수업소요시간<br>
				<div class="form-inline" style="margin-left: 10px;">
					<div class="form-group">
						<select class="form-control" name="time">
							<option value = "01">1시간</option>
							<option value = "02">2시간</option>
							<option value = "03">3시간</option>
							<option value = "04">4시간</option>
							<option value = "05">5시간</option>
						</select> 
						<select class="form-control" style="margin-left: 10px; width: 91px;" name="time">
							<option value = "00">00분</option>
							<option value = "10">10분</option>
							<option value = "20">20분</option>
							<option value = "30">30분</option>
							<option value = "40">40분</option>
							<option value = "50">50분</option>
						</select>
					</div>
				</div>
			</div>
			<div class="col-md-5" align="center">시작일과 종료일을 입력해주세요<br> 
				<input type="date" name="startDay" id="start"> - <input type="date" name="endDay" id="end">
			</div>
			<div class="col-md-11" style="margin: 20px 0 20px 42px; height: 350px; background-color: #f5f5f5; overflow: auto; " id="scheduleList" >
			스케쥴을 등록해주세요
			</div>
			<div class="col-md-3">
				<button type="button" id="dateTimeSetting" type="button" class="btn1 btn-primary" data-toggle="modal" onclick="doPopUP();" data-target=""	style="margin-left: 30px; width: 250px;">날짜/시간 설정하기</button>
			</div>
		</div>
		<!-- 개별일정 -->
		<div id="individualSetting" class="modal fade bs-example-modal-lg"	tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"	aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="gridSystemModalLabel" style="margin-top: 20px;">스케쥴등록(개별일정)</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<div class="modal-body">
						<div class="container">
							<p style="font-size: 13px;">1일 단위로 강의 시간을 설정할 수 있습니다.</p>
							<div style="border: 1px solid #f5f5f5; padding: 20px;">
								<p style="font-size: 13px;">강의 날짜를 입력해주세요.</p>
								<div style="background-color: #f5f5f5; padding: 20px;">
									<!-- 스케쥴정보입력 -->
									<div class="row">
										<div class="col-md-3" style="font-size: 14px; margin-bottom: 15px;">강의날짜</div>
										<div class="col-md-4" style="font-size: 14px; margin-bottom: 15px;">강의시작시간</div>
										<div class="col-md-3" style="font-size: 14px; margin-bottom: 15px;">참여가능인원</div>
										<div class="col-md-2"></div>
										<div class="col-md-3">
										    <input name="lectureSchedule" type="date">
										</div>
										<div class="col-md-4">
											<div class="form-inline">
												<select name="lectureSchedule" class="form-group"  style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
													<option value="00">오전 00시</option>
													<option value="01">오전 01시</option>
													<option value="02">오전 02시</option>
													<option value="03">오전 03시</option>
													<option value="04">오전 04시</option>
													<option value="05">오전 05시</option>
													<option value="06">오전 06시</option>
													<option value="07">오전 07시</option>
													<option value="08">오전 08시</option>
													<option value="09">오전 09시</option>
													<option value="10">오전 10시</option>
													<option value="11">오전 11시</option>
													<option value="12">오후 12시</option>
													<option value="13">오후 01시</option>
													<option value="14">오후 02시</option>
													<option value="15">오후 03시</option>
													<option value="16">오후 04시</option>
													<option value="17">오후 05시</option>
													<option value="18">오후 06시</option>
													<option value="19">오후 07시</option>
													<option value="20">오후 08시</option>
													<option value="21">오후 09시</option>
													<option value="22">오후 10시</option>
													<option value="23">오후 11시</option>
												</select> : 
												<select name="lectureSchedule" class="form-group" style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;">
													<option value="00">00분</option>
													<option value="10">10분</option>
													<option value="20">20분</option>
													<option value="30">30분</option>
													<option value="40">40분</option>
													<option value="50">50분</option>
												</select>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-inline">
												<input name="lectureSchedule" type="number" style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
												~ <input name="lectureSchedule" type="number" style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
											</div>
										</div>
										<div class="col-md-2">
											<button type="button" onclick="addSchedule();" class="addbtn">추가</button>
										</div>
									</div>
									<!-- /스케쥴정보입력 -->
								</div>
							</div>
							<br>
							<div style="overflow: auto; height: 300px;">
								<table class="table">
									<tbody style="text-align: center;" id="scheduleDetail">
										<tr style="background-color: #f5f5f5;">
											<th>강의날짜</th>
											<th>시작 시간</th>
											<th>참여가능인원</th>
											<th>삭제</th>
										</tr>
										<tr>
											<td colspan="4">등록된 스케쥴이 없습니다.</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btnBack btn-default" data-dismiss="modal">닫기</button>
						<button type="button" class="btn1 btn-primary" onclick="scheduleWrite();" data-dismiss="modal" style="width: 126.8px">스케줄등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /개별일정 -->
		<!-- 요일반복 -->
		<div id="repeatSetting" class="modal fade bs-example-modal-lg"
			tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="gridSystemModalLabel"
							style="margin-top: 20px;">스케쥴 등록(요일반복)</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="container">
							<p style="font-size: 13px;">정기적으로 진행되는 클래스의 경우 요일과 강의 시간을 선택해
								일괄등록 할 수 있습니다.</p>
							<div style="border: 1px solid #f5f5f5; padding: 20px;">
								<p style="font-size: 13px;">요일과 운영 시간을 선택해주세요.(입력한 횟수만큼 지정가능)</p>
								<div style="background-color: #f5f5f5; padding: 20px;">
									<!-- 스케쥴정보입력 -->
									<div class="row">
										<div class="col-md-12">
											<p>강의요일</p>
											<div class="btn-group" data-toggle="buttons">
												<label class="btn btn-default day" style="border: 1px solid; border-radius: 3px;"> 
												<input type="checkbox" name="dayName" value="0" />일</label> 
												<label class="btn btn-default day" style="border: 1px solid; border-radius: 3px;"> 
												<input type="checkbox" name="dayName" value="1" />월</label>
												<label class="btn btn-default day" style="border: 1px solid; border-radius: 3px;"> 
												<input type="checkbox" name="dayName" value="2" />화</label> 
												<label class="btn btn-default day" style="border: 1px solid; border-radius: 3px;"> 
												<input type="checkbox" name="dayName" value="3" />수</label> 
												<label class="btn btn-default day" style="border: 1px solid; border-radius: 3px;"> 
												<input type="checkbox" name="dayName" value="4" />목</label> 
												<label class="btn btn-default day" style="border: 1px solid; border-radius: 3px;"> 
												<input type="checkbox" name="dayName" value="5" />금</label> 
												<label class="btn btn-default day" style="border: 1px solid; border-radius: 3px;"> 
												<input type="checkbox" name="dayName" value="6" />토</label>
											</div>
										</div>
										<div class="col-md-5" style="font-size: 14px; margin: 15px 0 10px 0;">강의시작시간</div>
										<div class="col-md-5" style="font-size: 14px; margin: 15px 0 10px 0;">참여가능인원</div>
										<div class="col-md-2"></div>

										<div class="col-md-5">
											<div class="form-inline">
												<select name="lectureSchedule2" class="form-group"  style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
													<option value="00">오전 00시</option>
													<option value="01">오전 01시</option>
													<option value="02">오전 02시</option>
													<option value="03">오전 03시</option>
													<option value="04">오전 04시</option>
													<option value="05">오전 05시</option>
													<option value="06">오전 06시</option>
													<option value="07">오전 07시</option>
													<option value="08">오전 08시</option>
													<option value="09">오전 09시</option>
													<option value="10">오전 10시</option>
													<option value="11">오전 11시</option>
													<option value="12">오후 12시</option>
													<option value="13">오후 01시</option>
													<option value="14">오후 02시</option>
													<option value="15">오후 03시</option>
													<option value="16">오후 04시</option>
													<option value="17">오후 05시</option>
													<option value="18">오후 06시</option>
													<option value="19">오후 07시</option>
													<option value="20">오후 08시</option>
													<option value="21">오후 09시</option>
													<option value="22">오후 10시</option>
													<option value="23">오후 11시</option>
												</select> : 
												<select name="lectureSchedule2" class="form-group" style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;">
													<option value="00">00분</option>
													<option value="10">10분</option>
													<option value="20">20분</option>
													<option value="30">30분</option>
													<option value="40">40분</option>
													<option value="50">50분</option>
												</select>
											</div>
										</div>
										<div class="col-md-5">
											<div class="form-inline">
												<input name="lectureSchedule2" type="number" style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
												~ <input name="lectureSchedule2" type="number" style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
											</div>
										</div>
										<div class="col-md-2">
											<button onclick="addDayRepeat();" type="button" class="addbtn">추가</button>
										</div>
									</div>
									<!-- /스케쥴정보입력 -->
								</div>
							</div>
							<br>
							<div style="overflow: auto; height: 300px;">
								<table class="table">
									<tbody style="text-align: center;" id="repeatTable">
										<tr style="background-color: #f5f5f5;">
											<th name='b'>강의날짜</th>
											<th>시작 시간</th>
											<th>참여가능인원</th>
											<th>삭제</th>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btnBack btn-default" data-dismiss="modal">닫기</button>
						<button type="button" class="btn1 btn-primary" onclick="scheduleWrite();" data-dismiss="modal" style="width: 126.8px">스케줄등록</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /요일반복 -->

		<br><br><hr><br><br>
		<h6>클래스정가<b> *</b></h6>
		<br>
		<div class="form-group">
			<input class="form-control" style="width: 20%" type="number" placeholder="금액입력(원)"  name="price">
		</div>
		<br><br><hr><br>
		<div></div>
		<button type="button" onclick="movePage(1)" class="btnBack btn-primary">이전</button>
		<button type="button" onclick="movePage(3)" class="btn1 btn-primary">다음</button>
	</div>
</body>

</html>