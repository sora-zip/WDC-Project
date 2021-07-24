<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>우리 동네 클래스 - 강사 | W.D.C</title>
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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <style>
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
  
  <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
  <body>
    <!-- header -->
    <div class="page-holder">
      <!-- navbar-->
      <jsp:include page="../commons/header.jsp"/>

      <!-- body -->
      <div class="container py-5">
        <div class="col-lg-7" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h4 class="mb-5">비밀번호 변경하기<br>
                <p style="margin-top: 10px; font-size: 13px; color:rgba(0, 0, 0, 0.5);">새로운 비밀번호를 입력하세요</p>
              </h4>
              <form method="POST" action="${pageContext.servletContext.contextPath }/teacher/settingNewPwd" onsubmit="return checkPwd();">
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorId">비밀번호</label>
                  <div class="col-sm-12">
                    <input class="form-control" id="tutorPwd" type="password" placeholder="비밀번호를 입력하세요." name="teacherPwd" required="required">
                    <small id="pwdMent" style="color: red;" value="0";>최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.</small>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorPwd2">비밀번호확인</label>
                  <div class="col-sm-12">
                    <input class="form-control" id="tutorPwd2" type="password" placeholder="비밀번호를 다시 입력해주세요." required="required">
                    <small id="pwdMent2" style="color: red;" value="0"></small>
                  </div>
                </div>
                <br>
                <div class="col-sm-12" align="center" style="padding: 0px 0px 0px 0px;">
                  <button type="submit" style="width:100%; height: 38px;" class="btn">변경완료</button>
                  <input type="hidden" value="${ teacherNo }" name="teacherNo">
                </div>
                <br>
              </form>
            </div>
          </div>
        </div>
      </div>
      <script>
        $(document).ready(function(){
          $("#tutorPwd").keyup(function(){
               var regPwd =/(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;
               if(regPwd.test(document.getElementById("tutorPwd").value)){
                 document.getElementById("pwdMent").innerHTML="";
                 document.getElementById("pwdMent").value="1";
                 document.getElementById("pwdMent").display="none";
                } else{
                  document.getElementById("pwdMent").innerHTML="최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.";
                  document.getElementById("pwdMent").value="0";
                  document.getElementById("pwdMent").display="";
                }
                
                if(document.getElementById("tutorPwd").value ==""){
                  
                  document.getElementById("pwdMent").innerHTML="최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.";
                  document.getElementById("pwdMent").value="0";
                  document.getElementById("pwdMent").display="";
                  pwdMent2.innerHTML ="";
               }
    
             }); 
         //비밀번호 일치검사
          $("#tutorPwd2").keyup(function(){
            var pwd1 = document.getElementById("tutorPwd").value;
              var pwd2 = document.getElementById("tutorPwd2").value;
              var pwdMent2 = document.getElementById("pwdMent2");
              if(pwd1 == ""){
                pwdMent2.innerHTML ="";
                pwdMent2.value = 0;
              }
              if(pwd1 != pwd2){
                pwdMent2.innerHTML ="입력한 비밀번호와 일치하지 않습니다.";
                pwdMent2.style.color ="red";
                pwdMent2.value = 0;
              }
             
              if(pwd1 == pwd2){
                pwdMent2.innerHTML ="입력한 비밀번호와 일치합니다.";
                pwdMent2.style.color ="green";
                pwdMent2.value = 1;
              }
             
              if(pwd2==""){
                pwdMent2.innerHTML ="입력한 비밀번호와 일치하지 않습니다.";
                pwdMent2.style.color ="red";
                pwdMent2.value = 0;
              }
            });         
          });
      </script>
      <script>
        function checkPwd(){
          
          if(document.getElementById("pwdMent").value != 1){
            alert("비밀번호는 최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.");
            return false;
          }

          if(document.getElementById("pwdMent2").value != 1){
            alert("입력한 두 비밀번호가 일치하지 않습니다");
            return false;
          }
          
        }
      </script>
      <!-- /아이디찾기 -->
      <!-- footer -->
<jsp:include page="../commons/footer.jsp"/>
      <!-- JavaScript files-->
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>

      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>