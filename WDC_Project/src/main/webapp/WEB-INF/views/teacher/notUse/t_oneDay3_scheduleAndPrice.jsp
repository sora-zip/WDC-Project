<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

    .table-bordered th {
      text-align: center;
    }


    .btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
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
    transition: color 0.1s linear 0s,background-color 0.1s linear 0s,opacity 0.2s linear 0s !important;
    padding: 6px 10px;
    border-radius: 7px;
    }
    label.btn-default.active {
    border-color: #fef0ae;
    background-color: #fef0ae;
    }
    input[name="dayName"]{
      display: none;
    }

  </style>

</head>

<body>
  <div class="page-holder">
    <!-- navbar-->
    <header class="header bg-white" style="padding-top: 80px; padding-bottom: 30px;">
      <div class="container px-0 px-lg-3" id="test3">
        <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.html"><span
              class="font-weight-bold text-uppercase text-dark">
              <h1>우리동네 클래스</h1>
            </span></a>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
              </li>
              <li class="nav-item">
              </li>
              <li class="nav-item"><a class="nav-link" href="#">
                  <h3>강사 페이지</h3>
                </a>
              </li>
              <li class="nav-item dropdown">
              </li>
            </ul>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item"></li>
              <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>회원가입</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>로그인</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </header>

    <div class="hello" style="width: 90%; margin: 10% 10% 10% 10%; display: flex;">
      <!-- SIDEBAR-->
      <div class="col-lg-2 order-1 order-lg-0" style="float: left; width: 15%;">
        <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black;">
            <h2>홈</h1>
          </a></h5>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">클래스 관리</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">클래스 관리</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">매출/정산</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">정산내역 관리</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">세금계산서 관리</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">문의하기</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
          <li class="mb-2"><a class="reset-anchor" href="#">관리자 문의</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">문의내역 관리</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">자주 묻는 질문</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
      </div>
      <!-- /SIDEBAR -->

      <!-- 본문 -->
      <div class="container" style="width: 80%; margin-left: 10px;">
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
          <div class="col-md-4" align="center">
            스케쥴선택<br>
            <button id="individual" onclick="scheduleChange(this);">개별일정</button>
            <button id="repeat" onclick="scheduleChange(this)">요일반복</button>
            <button id="always" onclick="scheduleChange(this)">상시모집</button>
            <input type="hidden" id="scheduleType" value="">
          </div>
          <div class="col-md-3" align="center">
            수업소요시간<br>
            <div class="form-inline" style="margin-left: 10px;">
              <div class="form-group">
                <select class="form-control">
                  <option>1시간</option>
                  <option>2시간</option>
                  <option>3시간</option>
                  <option>4시간</option>
                </select>
                <select class="form-control" style="margin-left: 10px; width: 91px;">
                  <option>10분</option>
                  <option>20분</option>
                  <option>30분</option>
                  <option>40분</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-md-5" align="center">
            시작일과 종료일을 입력해주세요<br>
            <input type="date"> - 
            <input type="date">
          </div>
          <div class="col-md-11" style="margin: 20px 0 20px 42px ; height: 350px; background-color: #f5f5f5;">여기 입력이 될거야
          </div>
          <div class="col-md-3">
                <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">날짜/시간 설정하기</button> -->
                <button id="dateTimeSetting"type="button" class="btn btn-primary" data-toggle="modal" onclick="doPopUP();"data-target="" style="margin-left: 30px;">날짜/시간 설정하기</button>
          </div>
        </div>
        <!-- 개별일정 -->
        <div id="individualSetting"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
                          <input type="date">
                        </div>
                        <div class="col-md-4">
                          <div class="form-inline">
                            <select class="form-group"
                              style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
                              <option>오전 00시</option>
                              <option>오전 01시</option>
                              <option>오전 02시</option>
                              <option>오전 03시</option>
                              <option>오전 04시</option>
                              <option>오전 05시</option>
                              <option>오전 06시</option>
                            </select>
                            :
                            <select class="form-group"
                              style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;">
                              <option>10분</option>
                              <option>20분</option>
                              <option>30분</option>
                              <option>40분</option>
                              <option>50분</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-3">
                          <div class="form-inline">
                            <input type="number"
                              style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                            ~
                            <input type="number"
                              style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                          </div>
                        </div>
                        <div class="col-md-2"><button>추가</button></div>
                      </div>
                      <!-- /스케쥴정보입력 -->
                    </div>
                  </div>
                  <br>
                  <div style="overflow:auto; height: 300px;">
                    <table class="table">
                      <tbody style="text-align: center;">
                        <tr style="background-color: #f5f5f5;">
                          <th>강의날짜</th>
                          <th>참여가능인원</th>
                          <th>삭제</th>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">스케줄등록</button>
              </div>
            </div>
          </div>
        </div>   
        <!-- /개별일정 -->
        <!-- 요일반복 -->
        <div id="repeatSetting"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="gridSystemModalLabel" style="margin-top: 20px;">스케쥴 등록(요일반복)</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <p style="font-size: 13px;">정기적으로 진행되는 클래스의 경우 요일과 강의 시간을 선택해 일괄등록 할 수 있습니다.</p>
                  <div style="border: 1px solid #f5f5f5; padding: 20px;">
                    <p style="font-size: 13px;">요일과 운영 시간을 선택해주세요.(입력한 횟수만큼 지정가능)</p>
                    <div style="background-color: #f5f5f5; padding: 20px;">
                      <!-- 스케쥴정보입력 -->
                      <div class="row">
                        <div class="col-md-12">
                          <p>강의요일</p>
                          <div class="btn-group" data-toggle="buttons" >
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="0"/> 일
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="1"/> 월
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="2"/> 화
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="3"/> 수
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="4"/> 목
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="5"/> 금
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="6"/> 토
                            </label>
                          </div>                          
                        </div>
                        <div class="col-md-5" style="font-size: 14px; margin: 15px 0 10px 0;">강의시작시간</div>
                        <div class="col-md-5" style="font-size: 14px; margin: 15px 0 10px 0;">참여가능인원</div>
                        <div class="col-md-2"></div>

                        <div class="col-md-5">
                          <div class="form-inline">
                            <select class="form-group"
                              style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
                              <option>오전 00시</option>
                              <option>오전 01시</option>
                              <option>오전 02시</option>
                              <option>오전 03시</option>
                              <option>오전 04시</option>
                              <option>오전 05시</option>
                              <option>오전 06시</option>
                            </select>
                            :
                            <select class="form-group"
                              style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;">
                              <option>10분</option>
                              <option>20분</option>
                              <option>30분</option>
                              <option>40분</option>
                              <option>50분</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-5">
                          <div class="form-inline">
                            <input type="number"
                              style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                            ~
                            <input type="number"
                              style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                          </div>
                        </div>
                        <div class="col-md-2"><button>추가</button></div>
                      </div>
                      <!-- /스케쥴정보입력 -->
                    </div>
                  </div>
                  <br>
                  <div style="overflow:auto; height: 300px;">
                    <table class="table">
                      <tbody style="text-align: center;">
                        <tr style="background-color: #f5f5f5;">
                          <th>강의날짜</th>
                          <th>참여가능인원</th>
                          <th>삭제</th>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                          <td>최소 1명 ~ 최대 4명</td>
                          <td><button>삭제</button></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">스케줄등록</button>
              </div>
            </div>
          </div>
        </div> 
        <!-- /요일반복 -->                

        <br><br><hr><br><br>
        <h6>클래스정가<b> *</b></h6>
        <br>
            <div class="form-group">
              <input class="form-control" style="width:20%";type="number" placeholder="금액입력(원)">
            </div>
            <br><br><hr><br>
            <div>
            </div>
            <button onclick="location.href='t_oneDay2_classIntro.html'">이전</button>
            <button onclick="location.href='t_oneDay4_optionalInfo.html'">다음</button>
      </div>
    </div>
    <br>
    <br>
    <!-- //정규클래스등록1-->
  </div>
  <!-- //본문 -->

  <footer class="bg-dark text-white">
    <div class="container py-4">
      <div class="row py-5">
        <div class="col-md-1 mb-3 mb-md-0">
          <h5 class="text-uppercase mb-3">
            <p> </p>
          </h5>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              공지사항</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              서비스 약관</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              개인정보<br>처리약관</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              자주 묻는<br>질문</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              문의하기</a></h3>
        </div>
        <div class="col-md-1 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3">
            <p> </p>
          </h3>
        </div>
      </div>
      <div class="border-top pt-4" style="border-color: #1d1d1d !important">
        <div class="row">
          <div class="col-lg-6">
            <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
          </div>
          <div class="col-lg-6 text-lg-right">
            <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor"
                href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- JavaScript files-->
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/t_WDC.js"></script>
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>


  <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </div>
</body>

</html>