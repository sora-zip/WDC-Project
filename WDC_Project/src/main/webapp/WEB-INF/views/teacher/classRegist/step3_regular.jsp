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
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <style>
    .thumbnail-file-area input[type=file] {
      display: none;
    }
    .table-bordered th{
      text-align: center;
    }

  </style>

</head>

<body>
    <div class="container" style="width: 90%; margin :0 auto; display: none;" id="regular">
        <!-- 정규클래스등록1-->
        <div class="row">
            <div class="col-md-2 step" >클래스 기본정보</div>
            <div class="col-md-2 step" >클래스 소개</div>
            <div class="col-md-3 nowStep" >클래스 일정 및 가격</div>
            <div class="col-md-2 step">클래스 부가정보</div>
            <div class="col-md-3 step">클래스 등록 및 약관동의</div>
        </div>
        <br><br><br>
        <h6>스케쥴 등록</h6>
        <div style="font-size: 15px; opacity: .7">
          - 개별일정 : 반복되지 않는 일정을 개별로 등록할 경우<br>
          - 요일반복 : 특정 기간 매주 같은 요일의 일정을 등록할 경우<br>
          - 상시모집 : 날짜를 지정하지 않고 상시로 모집하는 경우<br>
          - 정규모집 : 원데이가 아닌 주, 월 단위 정규 과정을 모집하는 경우<br>
          (정규모집의 경우 정규모집 또는 상시모집으로 등록해주세요)
        </div>
        <br><br>
        <div class="row" style="border: 1px solid rgba(0, 0, 0, 0.2); padding: 20px 20px 20px 20px;">
          <div class="col-md-1"></div>
          <div class="col-md-2">스케쥴선택<br>
            <div class="btn1" align="center" style="padding-top: 7px">정규모집</div>
          </div>
          <div class="col-md-3" >
            수업소요시간<br>
            <div class="form-inline">
              <div class="form-group">
                <select class="form-control" name="time">
					<option value = "01">1시간</option>
					<option value = "02">2시간</option>
					<option value = "03">3시간</option>
					<option value = "04">4시간</option>
					<option value = "05">5시간</option>
                </select>
                <select class="form-control" name="time">
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
          <div class="col-md-6">
            시작일과 종료일을 입력해주세요<br>
            <input type="date" name="startDay" id="regularStart"> - 
            <input type="date" name="endDay" id="regularEnd">
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-10" style="margin: 20px 0 20px 0px ; height: 350px; background-color: #f5f5f5;" id="regularList">스케쥴을 등록해주세요.
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-1"></div>
          <div class="col-md-3">
            <button id="dateTimeSetting"type="button" class="btn1 btn-primary" data-toggle="modal" data-target="#regularCourse" style="width: 250px;">날짜/시간 설정하기</button>
          </div>
        </div>
        <!-- 클래스스케쥴 팝업창 -->
        <div id="regularCourse"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="gridSystemModalLabel">스케쥴등록</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <div class="container">
                    <h6>정규과정</h6><br>
                    <p style="font-size: 15px;">정규모집은 시작일 기준으로 사용자에게 안내됩니다.</p>
                    <div style="border: 1px solid #f5f5f5; padding: 20px;">
                      <div style="background-color: #f5f5f5; padding: 20px; height: 90px;">
                        <!-- 스케쥴정보입력 -->
                        <div class="row">
                          <div class="col-md-4" style="font-size: 14px;">강의시작시간</div>
                          <div class="col-md-3" style="font-size: 14px;">참여가능인원</div>
                          <div class="col-md-3" style="font-size: 14px;">예정횟수</div>
                          <div class="col-md-2"></div>

                          <div class="col-md-4">
                              <div class="form-inline">
                                <select class="form-group" name="regularInputInfo" style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
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
                                </select>
                                 : 
                                <select class="form-group" name="regularInputInfo" style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;" >
                                    <option value="00">00분</option>
	    							<option value="10">10분</option>
	    							<option value="20">20분</option>
	    							<option value="30">30분</option>
	    							<option value="40">40분</option>
	    							<option value="50">50분</option>
                                </select>
                              </div>
                          </div>
                          <div class="col-md-3" align="center">
                            <div class="form-inline">
                              <input name="regularInputInfo" type="number" style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                              ~
                              <input name="regularInputInfo" type="number" style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
    
                            </div>
                          </div>
                          <div class="col-md-3 form-group" style="display: flex;">
                            <input type="number" name="regularInputInfo" class="form-inline" style="width: 50px; padding-left: 10px; margin-right: 10px; font-size: 14px;">
                            <div>회</div>
                          </div>
                          <div class="col-md-2"><button type="button" onclick="regularScheduleAdd();"class="addbtn">추가</button></div>
                        </div>
                        <br>
                        <!-- /스케쥴정보입력 -->       
                      </div>
                      <p style="margin-top: 15px;" >정규모집은 시작일 기준으로 사용자에게 안내되며, 한개의 스케쥴만 등록이 가능합니다.</p>
                    </div>
                    <div style="height: 200px;">
                      <table class="table">
                        <tbody style="text-align: center;" id="regularTable">
                          <tr style="background-color: #f5f5f5;">
                            <th style="width:35%;">강의날짜</th>
                            <th style="width:15%;">시작 시간</th>
                            <th style="width:25%;">참여가능인원</th>
                            <th style="width:15%;">예정횟수</th>
                            <th style="width:10%;">삭제</th>
                          </tr>
                          <tr>
                            <td colspan="5">등록된 스케쥴이 없습니다</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="row">
                      <div class="col-md-10"></div>
                    </div>
                </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btnBack btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn1 btn-primary" data-dismiss="modal" onclick="regularRegist();" style="width:120px;">스케줄등록</button>
              </div>
            </div>
          </div>
        </div>
        <!-- /클래스스케쥴 팝업창 -->        
        <br><br><hr><br><br>
        <h6>클래스정가<b> *</b></h6>
        <br>
            <div class="form-group">
              <input class="form-control" style="width:20%" type="number" placeholder="금액입력(원)" name="price">
            </div>
            
            <br><br><hr><br>
   
            

            <div>

            </div>
            <button type="button" onclick="movePage(1)" class="btnBack btn-primary">이전</button>
            <button type="button" onclick="movePage(3)" class="btn1 btn-primary">다음</button>
      </div>
    <br>
    <br>
    <!-- //정규클래스등록1-->
</body>

</html>