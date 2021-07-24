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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon2.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>      
  </head>
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
  <body>
    <!-- header -->
    <div class="page-holder">
      <!-- navbar-->
      <jsp:include page="../commons/header.jsp"/>

      <!-- body -->
      <div class="container py-5">
        <div class="col-lg-7" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <form method="POST" action="${pageContext.servletContext.contextPath }/teacher/setNewPwdPage" onsubmit="return checkAuthentication()">
            <div class="card-body"><br>
              <h4 class="mb-5">비밀번호재설정</h4>
                <div class="form-group row">
                  <label class="col-sm-9 col-form-label" for="tutorId">아이디</label>
                  <div class="col-sm-12">
                    <input class="form-control" id="tutorId" type="text" placeholder="아이디" name="id"> 
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-9 col-form-label" for="tutorPwd">휴대폰번호<small>(회원가입 시 입력한 전화번호 입력하세요.)</small></label>
                  <div class="col-sm-12">
                    <input class="form-control" type="text" placeholder="(-)없이 10자리 또는 11자리 숫자" id="phoneNumber" name="phoneNumber">
                    <small style="color: red;">회원가입 시 입력한 정보(아이디, 휴대폰번호)와 다른경우 인증번호가 발송되지 않습니다.</small>
                  </div>
                </div>
                <br>
                <div class="col-sm-12" align="center" style="padding: 0px 0px 0px 0px;">
                <button style="width:100%; height: 38px;" id="authentication" type="button" class="btn">휴대폰 번호로 인증번호 전송</button>
                </div>
                <br>
                <div class="form-group row" style="display: none;" id="phoneNumberInput">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">인증번호</label>
                  <div class="col-sm-12 form-inline" >
                    <input class="form-control"style="width: 440px;" type="text" placeholder="인증번호를 입력하세요"  id="checkNum">
                    <button style="margin-left: 20px; height: 36px; background-color: #fef0ae; border-radius: 5px; border: 1px;" type="button" id="authenticationCheck" value="0">인증번호확인</button>
                  </div>
                </div><br><br>
                <div class="form-group row">
                  <div class="col-sm-12" align="center" style="padding: 0px 0px 0px 0px;">
                    <button style="width:97%; height: 38px;" type="submit" class="btn btn-primary">비밀번호 재설정하러 가기</button>
                  </div>
                </div>
            </div>
           </form>
          </div>
        </div>
      </div>
      <script>
      //본인인증
        $("#authentication").click(function(){
          let tutorId = document.getElementById("tutorId").value;
          let phoneNumber = document.getElementById("phoneNumber").value;
          if(tutorId.length < 1 || phoneNumber.length <1 ){
            alert(" 정보를 정확히 입력해주세요")
            return;
          }
          $.ajax({
            url: "${ pageContext.servletContext.contextPath }/teacher/certification",
            type:"post",
            data: {
                    type : "pwd",
                    phoneNumber : phoneNumber,
                    id : tutorId
                  }, 
            success:function(data, textStatus, xhr){

              if(data == "no"){
                alert("인증번호 전송에 실패했습니다. 입력한 정보를 확인해주세요."); 
              } else {
                alert("인증번호 전송에 성공했습니다.")
                document.getElementById("phoneNumberInput").style.display=""; 
              }
            },error:function(xhr, status, error){
              console.log(error);
            }
          });
        });
      </script>
      <script>
        $("#authenticationCheck").click(function(){
          let checkNum = document.getElementById("checkNum").value;
          if(checkNum == "" || checkNum.length != 6){
            alert("인증번호 6자리를 입력해주세요.");
            return;
          }
          document.getElementById("authentication").value = Number(document.getElementById("authentication").value)+1;
          let checkCount = document.getElementById("authentication").value;
          $.ajax({
            url : "${ pageContext.servletContext.contextPath }/teacher/messageCertification",
            type : "post",
            data : {
            	     checkNum : checkNum,
            	     checkCount : checkCount
            	    },
            success:function(data, textStatus, xhr){
              switch(data){
                case "초과" : alert("실패횟수 5회 초과. 인증번호를 재요청 해주세요."); break;
                case "불일치" : alert("인증번호와 일치하지 않습니다.\n인증번호를 확인해주세요\n" + checkCount + " / 5회\n(5회초과시 인증번호를 다시 요청해야 합니다.)");break;
                case "일치" : alert("인증번호와 일치합니다");
                              document.getElementById("authenticationCheck").value=1;
                              document.getElementById("authentication").disabled = true;
                              document.getElementById("authenticationCheck").disabled = true;break;
              }
            },error:function(xhr, status, error){
            }
          });
         });
        </script>
      <script>
        function checkAuthentication(){
          if(document.getElementById("authenticationCheck").value != 1){
            alert("휴대폰번호 인증 해주세요");
            return false;
          } else {
            return true;
          }
        }
      </script>
      <!-- footer -->
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
      <script>

      </script>
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>