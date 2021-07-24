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
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>    
  <style>
    body {
      font-size: 15px;
    }
    
    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    .col-form-label{
      text-align: right;
    }
    
  </style>
  </head>
  <body>
    <!-- header -->
    <div class="page-holder">
    <jsp:include page="../commons/header.jsp" />

      <!-- body -->
      <form method="post" action="${pageContext.servletContext.contextPath }/teacher/signUp" onsubmit="return signUpCheck();">
      <div class="container py-5">
        <div class="col-lg-10" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h1 class="mb-5" style="text-align: center; padding-bottom: 20px;">회원가입</h1>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorId">아이디</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorId" type="text" placeholder="아이디를 입력하세요." name="teacherId" required="required">
                    <small id="idMent" style="color: red;" value="0";>아이디는 4자이상 15자이하의 영문과 숫자만 입력가능합니다.</small>
                  </div>
                  <div class="col-sm-2">
                    <button class="btn btn-sm btn-primary" type="button" id="doubleCheck" value="0" style="width:109px">중복확인</button>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPwd">비밀번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPwd" type="password" placeholder="비밀번호를 입력하세요." name="teacherPwd" required="required">
                    <small id="pwdMent" style="color: red;" value="0";>최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.</small>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPwd2">비밀번호 재입력</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPwd2" type="password" placeholder="비밀번호를 다시 입력해주세요." required="required">
                    <small id="pwdMent2" style="color: red;" value="0"></small>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorType">회원 형태</label>
                  <div class="col-sm-8" style="display: flex;">
                    <div class="custom-control custom-radio" id="tutorTypeIndi">
                      <input class="custom-control-input" id="entrepreneur" type="radio" name="teacherType" value="INDI" checked="checked" onclick="typeSelect(this);" required="required">
                      <label class="custom-control-label" for="entrepreneur">개인 사업자</label>
                    </div>
                    <div class="custom-control custom-radio" id="tutorTypeFree" style="margin-left: 30px;">
                      <input class="custom-control-input" id="freelancer" type="radio" name="teacherType" value="FREE" onclick="typeSelect(this);" required="required">
                      <label class="custom-control-label" for="freelancer">프리랜서(개인)</label>
                    </div>
                  </div>
                </div>
                <!--사업자 등록번호와 주민등록번호가 같은 input으로 다른 column에 들어갈 수 없을 것 같으니 별도로 생성 -->
                <div class="form-group row" id="companyNum">
                  <label class="col-sm-2 col-form-label" for="entrepreneurNo">사업자 등록번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="entrepreneurNo" type="text" placeholder="000-00-00000 형태로 입력하세요" name="teacherIdNo" >
                    <small id="entrepreneurNoMent" style="color: red; display: none;" value="0">.</small>
                  </div>
                </div>
                <div class="form-group row" id="residentNum" style="display: none;">
                  <label class="col-sm-2 col-form-label" for="RegistrationNo">주민등록번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="RegistrationNo" type="text" placeholder="000000-0000000 형태로 입력하세요." name="teacherIdNo" >
                    <small id="RegistrationNoNoMent" style="color: red; display: none;" value="0">.</small>
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorName">이름</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorName" type="text" placeholder="이름을 입력해주세요." name="teacherName" required="required">
                    <small id="nameMent" style="color: red; display: none;" value="0"></small>
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPhone">휴대폰 번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPhone" type="text" placeholder="특수문자(-) 없이 10자리 또는 11자리를 입력해주세요." name="teacherPhone" required="required">
                    <small id="phoneMent" style="color: red; display: none;" value="0"></small>
                  </div>
                  <div class="col-sm-2">
                    <button class="btn btn-sm btn-primary" type="button" id="authentication" value="0">인증번호 요청</button>
                  </div>
                </div>
                <div class="form-group row" style="display: none" id="phoneNumberInput">
                  <label class="col-sm-2 col-form-label" for="verNo">인증번호</label>
                  <div class="col-sm-8">
                    <input class="form-control"  type="password" placeholder="인증번호 6자리를 입력하세요." id="checkNum">
                  </div>
                  <div class="col-sm-2">
                  <button class="btn btn-sm btn-primary" type="button" id="authenticationCheck" value="0">인증번호 확인</button>
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">은행명</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="bank" type="text" placeholder="은행 이름을 입력해주세요. (예: KB국민은행)" name="teacherAccountBANK" required="required">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">예금주명</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="holder" type="text" placeholder="계좌에 등록된 예금주명을 입력해주세요." name="teacherAccountName" required="required">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">계좌번호 입력</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="accomoNo" type="text" placeholder="특수문자(-) 없이 력해주세요." name="teacherAccountNo" required="required">
                    <small id="accountMent" style="color: red; display: none;" value="0"></small>
                  </div>
                </div><br>
                
                <div class="form-group row">                                   
                  <div class="col-sm-2">회원 약관</div>
                  <div class="col-sm-10">
                    <div class="custom-control custom-checkbox">
                      <input class="custom-control-input" id="serviceTerms" type="checkbox">
                      <label class="custom-control-label" for="serviceTerms"><a href="#">[필수] 서비스 이용약관</a></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="custom-control-input" id="privacyTerms" type="checkbox">
                      <label class="custom-control-label" for="privacyTerms"><a href="#">[필수] 개인정보 처리약관</a></label>
                    </div>
                  </div>
                </div>

                <br><br><br>
                <div class="form-group row">
                  <div class="col-sm-3" style="margin: auto;">
                    <button class="btn btn-lg btn-primary" type="submit" >회원가입</button>
                  </div>
                </div><br>
            </div>
          </div>
        </div>
      </div>
      </form>
      <!-- 타입에 따른 화면 다르게 보이게하기 -->
      <script>
        function typeSelect(p){
          let indi = document.getElementById("companyNum").style;
          let free = document.getElementById("residentNum").style;
          let indiName = document.getElementById("entrepreneurNo");
          let freeName = document.getElementById("RegistrationNo");
          console.log(p.id);
          switch(p.id){
            case 'entrepreneur' : indi.display = ""; free.display = "none"; indiName.name="teacherIdNo"; freeName.name="";  break;
            case 'freelancer' : indi.display = "none"; free.display = ""; indiName.name=""; freeName.name="teacherIdNo";  break;
          }
        }
      </script>
      <!-- /타입에 따른 화면 다르게 보이게하기 -->
      <!-- 아이디중복확인 -->
      <script>
          $("#doubleCheck").click(function(){
            let checkId = document.getElementById("tutorId").value;
            if(checkId.length == 0 || checkId == null){
              alert("아이디를 입력하세요.");
              return;
            }
            $.ajax({
              url:"${pageContext.servletContext.contextPath }/teacher/idDoubleCheck/"+checkId,
              type: "POST",
              success:function(data, status, xhr){
                if(data == 1){
                  alert("이미 존재하는 아이디입니다.");
                  document.getElementById("doubleCheck").value = "0";
                } else {
                  alert("사용가능한 아이디입니다.");
                  document.getElementById("doubleCheck").value = "1";
                }
              }
            });
          });
      </script>
      <script>
          $(document).ready(function(){
            //아이디 유효성검사
            $("#tutorId").keyup(function(){
              var regId = /^(?=.{4,15}$)[A-Za-z0-9+]*$/
              if(regId.test(document.getElementById("tutorId").value)){
                // document.getElementById("idMent").style.color="green";
                document.getElementById("idMent").innerHTML="";
                document.getElementById("idMent").display="none";
                document.getElementById("idMent").value="1";
              } else {
                document.getElementById("idMent").value="0";
                document.getElementById("idMent").display="";
                // document.getElementById("idMent").style.color="red";
                document.getElementById("idMent").innerHTML="아이디는 4자이상 15자이하의 영문과 숫자만 입력가능합니다.";
              }
              if(document.getElementById("tutorId").value == ""){
                document.getElementById("idMent").style.color="red";
                document.getElementById("idMent").display="";
                document.getElementById("idMent").value="0";
              }
            });
           //비밀번호 유효성검사
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

             //사업자번호 유효성검사
             $("#entrepreneurNo").keyup(function(){
                var regIDNo = /^(?=.{12,12}$)(\d{3,3})+[-]+(\d{2,2})+[-]+(\d{5,5})/
                
                if(regIDNo.test(document.getElementById("entrepreneurNo").value)){
                  document.getElementById("entrepreneurNoMent").value = 1;
                  document.getElementById("entrepreneurNoMent").innerHTML = ""; 
                } else {
                  document.getElementById("entrepreneurNoMent").value = 0;
                  document.getElementById("entrepreneurNoMent").style.display = "";
                  document.getElementById("entrepreneurNoMent").innerHTML = "000-00-00000 형태로 입력하세요";  // 
                }
                
                if(document.getElementById("entrepreneurNo").value==""){
                  document.getElementById("entrepreneurNoMent").value = 0;
                  document.getElementById("entrepreneurNoMent").style.display = "none";
                }
             });

             //주민번호 유효성검사
             $("#RegistrationNo").keyup(function(){
                var regIDNo = /^(?=.{14,14}$)(\d{6,6})+[-]+(\d{7,7})/
                
                if(regIDNo.test(document.getElementById("RegistrationNo").value)){
                  document.getElementById("RegistrationNoNoMent").value = 1;
                  document.getElementById("RegistrationNoNoMent").innerHTML = ""; 
                } else {
                  document.getElementById("RegistrationNoNoMent").value = 0;
                  document.getElementById("RegistrationNoNoMent").style.display = "";
                  document.getElementById("RegistrationNoNoMent").innerHTML = "000000-0000000 형태로 입력하세요";  // 
                }
                
                if(document.getElementById("RegistrationNo").value==""){
                  document.getElementById("RegistrationNoNoMent").value = 0;
                  document.getElementById("RegistrationNoNoMent").style.display = "none";
                }
             });
             //휴대폰번호 유효성검사
             $("#tutorPhone").keyup(function(){
                var regPhone = /^[0-9]{10,11}$/
                if(regPhone.test(document.getElementById("tutorPhone").value)){
                  document.getElementById("phoneMent").value = 1;
                  document.getElementById("phoneMent").innerHTML = ""; 
                  document.getElementById("phoneMent").display = "none"; 
                } else {
                  document.getElementById("phoneMent").value = 0;
                  document.getElementById("phoneMent").style.display = "";
                  document.getElementById("phoneMent").innerHTML = "특수문자(-) 없이 10자리 또는 11자리를 입력해주세요.";
                }
                
                if(document.getElementById("tutorPhone").value==""){
                  document.getElementById("phoneMent").value = 0;
                  document.getElementById("phoneMent").style.display = "none";
                }
             });


          });   
          </script>
          <script>
          //본인인증
          $("#authentication").click(function(){
            let phoneNumber = document.getElementById("tutorPhone").value;
            let inputCorrectCheck = document.getElementById("phoneMent").value;
            if(inputCorrectCheck == 0 || inputCorrectCheck == null){
              alert("휴대폰번호를 정확히 입력해주세요")
              return;
            }
            $.ajax({
              url: "${ pageContext.servletContext.contextPath }/teacher/certification",
              type:"post",
              data: {
                      phoneNumber : phoneNumber,
                      type : "regist"
                    }, 
              success:function(data, textStatus, xhr){
                alert(data);
              },error:function(xhr, status, error){
                console.log(error);
              }
            });
            document.getElementById("phoneNumberInput").style.display="";
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
            function signUpCheck(){
              if(document.getElementById("idMent").value != 1){
                alert("아이디를 형식에 맞춰 입력해주세요");
                return false;
              }
              if(document.getElementById("doubleCheck").value != 1){
                alert("아이디 중복검사를 해주세요")
                return false;
              }
              if(document.getElementById("pwdMent").value != 1){
                alert("비밀번호 형식에 맞춰 입력해주세요")
                return false;
              }
              if(document.getElementById("pwdMent2").value != 1){
                alert("비밀번호 일치여부를 확인해주세요");
                return false;
              }
              
              if(document.getElementById("entrepreneurNoMent").value != 1 && document.getElementById("RegistrationNoNoMent").value != 1){
                alert("사업자등록번호 또는 주민등록번호를 확인해주세요");
                return false;
              }
              if(document.getElementById("phoneMent").value != 1){
                alert("휴대폰번호를 확인해주세요");
                return false;
              }
             if(document.getElementById("authenticationCheck").value != 1){
                alert("휴대폰인증을 해주세요");
                return false;
              }

            }
          </script>

      		
<!-- footer -->
   <%--  <jsp:include page="../commons/footer.jsp"/> --%>
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