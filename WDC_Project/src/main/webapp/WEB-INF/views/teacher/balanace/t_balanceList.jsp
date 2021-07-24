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
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
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
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

  <style>
  	html {

		position: relative;
		margin: 0;
		background: white;
	}
		
    body {
      font-size: 15px;
    }

    a {
      color: black;
    }
    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae;
      border-color: #fef0ae;
    }
  </style>

</head>
<body>
  <div class="page-holder">
    <!-- navbar-->
    <jsp:include page="../commons/header.jsp"/>

    <div class="container">
      <!-- sidebar -->
      <jsp:include page="../commons/sidebar.jsp"/>
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left;">
        <form>
          <div class="col-sm-12" id="content-formatting" style="float: left;">
            <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
              <h3>정산/세금계산서 관리</h3>
            </div>
            <div class="row" style="margin-left: 40px;">
              <div class='col-sm-12'><h5>정산기간 검색</h5>
              </div><br>
              <div class='col-sm-3'>
                <div class="form-group">
                  <input type="date" id="startDate" class="form-control">
                </div>
              </div>
              <div class='col-sm-3'>
                <div class="form-group">
                  <input type="date" id="EndDate" class="form-control">
                </div>
              </div>
              <div class='col-sm-6'>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary">검색</button>
                  <button type="reset" class="btn btn-primary">초기화</button>                  
                </div>
              </div>
            </div>
            
            <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 50px; padding-bottom: 310px;">
              <table class="table table-hover" style="text-align: center;">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>정산 기간</th>
                    <th>정산 금액</th>
                    <th>계좌 정보</th>
                    <th>상세 내역</th>
                    <th>세금계산서</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>2021.05.01 ~ 2021.05.31</td>
                    <td>1,500,000원</td>
                    <td>국민은행 526501-01-******</td>
                    <td><a href="t_balanceDetail.html">보기</a></td>
                    <td><a href="#">보기</a></td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>2021.04.01 ~ 2021.04.30</td>
                    <td>900,000원</td>
                    <td>국민은행 526501-01-******</td>
                    <td><a href="#">보기</a></td>
                    <td><a href="#">보기</a></td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>2021.03.01 ~ 2021.03.31</td>
                    <td>2,100,000원</td>
                    <td>국민은행 526501-01-******</td>
                    <td><a href="#">보기</a></td>
                    <td><a href="#">보기</a></td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>2021.02.01 ~ 2021.02.28</td>
                    <td>1,000,000원</td>
                    <td>신한은행 110-346-******</td>
                    <td><a href="#">보기</a></td>
                    <td><a href="#">보기</a></td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td>2021.01.01 ~ 2021.01.31</td>
                    <td>50,000원</td>
                    <td>신한은행 110-346-600500</td>
                    <td><a href="#">보기</a></td>
                    <td><a href="#">보기</a></td>
                  </tr>
                </tbody>
              </table>
              <nav aria-label="...">
                <ul class="pagination" style="justify-content: center;">
                  <li class="page-item"><span class="page-link"><</span></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item"><a class="page-link" href="#">></a></li>
                </ul>
              </nav>
            </div>

          </div>
        </form>
      </div>
    </div>  
  
          
    <!-- JavaScript files-->
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
  </div>
  
  <jsp:include page="../commons/footer.jsp"/>
</body>
<html>