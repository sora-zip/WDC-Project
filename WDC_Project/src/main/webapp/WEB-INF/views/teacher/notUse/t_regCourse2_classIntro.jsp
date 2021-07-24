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
  <div class="page-holder">
    <!-- navbar-->
    <header class="header bg-white" style="padding-top: 80px; padding-bottom: 30px;">
      <div class="container px-0 px-lg-3">
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
          <div class="col-md-2 nowStep" >클래스 소개</div>
          <div class="col-md-3 step" >클래스 일정 및 가격</div>
          <div class="col-md-2 step">클래스 부가정보</div>
          <div class="col-md-3 step">클래스 등록 및 약관동의</div>
        </div>
        <br><br><br>
        <h6>클래스 소개 입력</h6>
        <div style="font-size: 15px; opacity: .7">
          - 클래스 소개를 자세히 작성해주세요.(이력 및 경력 사항은 프로필에 작성)<br>
          - 예시) 클래스 만의 <strong>특징, 장점, 효과, 배울 수 있는 내용, 제공되는 재료, 준비물 여부, 선택 가능한 색, 맛, 향, 데코 종류의 간단한 예시, 계절 및 수급상황에 따라
            달라지는 여부, 레시피제공 여부 등 수업의 전반적인 소개를 자세히 작성해주세요.</strong><br>
          - 상시모집의 경우 클래스당 수업인원, 가능한 시간, 휴무 등도 작성해주세요.<br>
          - 개인정보 및 SNS는 게시할 수 없습니다.
        </div>
        <div class="row">
          <div class="col-md-12" align="right" style="font-size: small;">0/1000</div>
        </div>
        <div class="form-group">
          <textarea class="form-control" rows="10"></textarea>
        </div>
        <br><br><hr><br><br>
        <h6>클래스 완성작 등록<b> *</b></h6>
            <div style="font-size: 15px; opacity: .7">
              - 클래스의 완성작 사진을 올려주세요.<br>
              - 제일 왼쪽부터 등록해주세요.<br>
              - 클래스 완성작은 최대 2개 까지 등록 가능 합니다.
            </div>
            <br>
            <div class="row">
              <div class="col-md-3" >
                <input type="text" placeholder="완성작제목" style="width: 70%;">
                <br><br>
                <div class="content-img-area1" id="contentImgArea1" style="width: 70%;">
                  <img id="contentImg1" style="width: 100%;" height="120">
                </div>
              </div>
              <div class="col-md-3">
                <input type="text" placeholder="완성작제목" style="width: 70%;">
                <br><br>
                <div class="content-img-area2" id="contentImgArea2" style="width: 70%;">
                  <img id="contentImg2" style="width: 100%;" height="120">
                </div>
              </div>
              <div class="thumbnail-file-area">
                <input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)">
                <input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this,2)">
              </div>
              <!-- <div class="col-md-3">
                <input type="text" placeholder="완성작제목" style="width: 70%;">
                <br><br>
                <div class="content-img-area3" id="contentImgArea3" style="width: 70%;">
                  <img id="contentImg3" style="width: 100%;" height="120">
                </div>
              </div> -->
              <!-- <div class="col-md-3">
                <input type="text" placeholder="완성작제목" style="width: 70%;">
                <br><br>
                <div class="content-img-area4" id="contentImgArea4" style="width: 70%;">
                  <img id="contentImg4" style="width: 100%;" height="120">
                </div>
              </div> -->
            </div>
            <br><br>
            <h6>클래스 완성작 설명<b>*</b></h6>
            <div style="font-size: 15px; opacity: .7">
              - 완성작의 대략적인 사이즈, 개수, 용량, 포장방법 등을 적어주세요.<br>
              ex) 100g 짜리 2개완성, 40*32 사이즈, 9온즈, 전용박스에 포장, opp봉투에 포장 등<br>
            </div>
            <br>
            <div class="form-group">
              <textarea class="form-control" rows="5"></textarea>
            </div>
            <br><br><hr><br><br>

            <h6>커리큘럼 상세등록<b>*</b></h6>
            <!-- /커리큘럼추가 -->
            <div class="row" style="border : 1px solid rgba(0, 0, 0, 0.2)">
              <div class="col-md-3" style="text-align: center;">
                <br>
                <p style="text-align: left;">사진등록</p>
                <div class="content-img-area3" id="contentImgArea3" style="width: 70%;">
                  <img id="contentImg3" style="width: 100%;" height="140" >
                </div>
                <div class="thumbnail-file-area">
                  <input type="file" id="thumbnailImg3" name="thumbnailImg3" onchange="loadImg(this,3)">
                </div>
              </div>
              <div class="col-md-9" style="text-align: center; vertical-align: middle;">
                <div style="font-size: 14px; text-align: left; opacity: .7; margin-top: 95px;">
                  - 커리큘럼은 수업 과정을 작성하는 부분입니다.<br>
                  - 단계별 수업 관련 사진을 2개 이상 등록해주세요.<br>
                  - 가로형 사진을 권장합니다.<br>
                  - 사진 용량은 사진 한 장당 10MB까지 등록이 가능합니다.<br>
                </div>
              </div>

              <div class="col-md-3" style="margin-top: 20px;">
                <div style="font-size: 15px; margin-bottom: 10px;"> <br> </div>
                <div class="form-group">
                  <select class="form-control">
                    <option>단계</option>
                  </select>
                </div>
              </div>
              <div class="col-md-9" style="margin-top: 20px;">
                <div style="font-size: 15px; margin-bottom: 10px;">
                  - 수업 순서의 제목을 입력해주세요. ex) 재료소개, 도안 고르기 등
                </div>
                <div class="form-group">
                  <input type="text" class="form-control">
                </div>
              </div>
              
              <div class="col-md-12">
                <p>세부내용</p>
              </div>
              <div class="col-md-12"style="font-size: 15px; margin-bottom: 10px; opacity: .7">
                - 세부내용을 입력해주세요. <br>
                - ex) 재료소개, 도안 고르기 등
              </div>
              <div class="col-md-12">
                <textarea class="form-control" rows="5"></textarea>
              </div>
              <div class="col-md-12" align="center">
                <button style="margin: 15px 0 15px 0;"> +입력</button>
              </div>
            </div>
            <br>
            <!-- /커리큘럼추가 -->
            <!-- 커리큘럼목록 -->
            <table class="table table-bordered">
              <tbody>
                <tr>
                  <th>순서</th>
                  <th>사진</th>
                  <th>제목</th>
                  <th style="width: 60%;">내용</th>
                  <th>  </th>
                </tr>
                <tr>
                  <td></td>
                  <td> </td>
                  <td>둘회</td>
                  <td>쌀불리기</td>
                  <td>수정삭제</td>
                </tr>
                <tr>
                  <td></td>
                  <td> </td>
                  <td>첫회</td>
                  <td>쌀씻기</td>
                  <td>수정삭제</td>
                </tr>
              </tbody>
            </table>
            <!-- /커리큘럼목록 -->
            <br>
            <hr><br>
            <div>
            </div>
            <button onclick="location.href='t_regCourse1_basicInfo.html'">이전</button>
            <button onclick="location.href='t_regCourse3_scheduleAndPrice.html'">다음></button>
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