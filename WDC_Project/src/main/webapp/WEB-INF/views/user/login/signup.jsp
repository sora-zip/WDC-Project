<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

    <style>
      .class-link {
        color: black;
      } 

      .class-link:hover {
        color:black;
      }


    
      .justify-content-lg-end {
        justify-content: normal !important;
      }

      .form-control-lg {
        width: 450px;
      }

      .list-inline-item {
        margin-left: 50px;
      }

      .currentPage{
        font-weight: 600;
        font-size: 26px;

      }
      .form-control{
        border-radius: 5px;
      }

      .form-control {
        display: inline-block;
      }

      *{  margin: 0; padding: 0; }
      ul{list-style: none;}
      .accordion-box{
        width: 100%; max-width: 600px;
        margin:  0 auto;
      }
      p.title{
        width: 100%;  
        line-height: 60px; 
        background: #fef0ae; 
        color: black; 
        box-sizing: border-box;
        padding: 0 10px;
      }
      .con{
        padding: 20px; 
        display:none;
      }

      .tr-hover:hover{
        background-color: #f8f9fa !important;
      }

      td{
        vertical-align: unset !important;
      }

      i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}
    
    .sign-up{
    	display: flex;
	    justify-content: space-around;
	    width: 400px;
	    margin-left: 26%;
    }
    </style>
  </head>
  <body>
    <div class="page-holder">
      <!-- navbar-->
      <header class="header bg-white">
        <div class="container px-0 px-lg-3">
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${ pageContext.servletContext.contextPath }/"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
                  <div class="dropdown-menu mt-3" aria-labelledby="pagesDropdown">
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/all">전체보기</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/sports">스포츠</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/beauty">뷰티</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/art">미술 · 공예 · 공연전시</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/cook">요리 · 베이킹</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/computer">컴퓨터 · IT</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/language">언어 · 스피치</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/revenu">재태크 · 창업</a>
                  </div>
                </li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/notice"> <i class="fas mr-1 text-gray"></i>고객센터</a></li>
              </ul>
              <ul class="navbar-nav ml-auto">
	              <c:if test="${ empty sessionScope.userNo }">               
	                <li class="nav-item"><a class="nav-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
	                <li class="nav-item"><a class="nav-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
	              </c:if>
	              <c:if test="${ !empty sessionScope.userNo }">               
	                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/likeClassList"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
	                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
	              </c:if>
	              <c:if test="${ sessionScope.userNo ne null }">
	              	<li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/logout">로그아웃</a></li>
	              </c:if>
	              <c:if test="${ sessionScope.userNo eq null }">
	              	<li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/login">로그인</a></li>
	              </c:if>
              </ul>
            </div>
          </nav>
        </div>
      </header>
      
      <div class="container py-5">
        <div class="col-lg-10" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h1 class="mb-5" style="text-align: center; padding-bottom: 20px; font-size: 1.9rem;">Sign Up</h1>
     			<form method="post" action="${pageContext.servletContext.contextPath }/user/mypage/signUpInsert" onsubmit="return signUpCheck();">
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorId">아이디</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorId" type="text" placeholder="아이디를 입력하세요." name="userId" required="required">
                    <small id="idMent" style="color: red;" value="0";>아이디는 4자이상 15자이하의 영문과 숫자만 입력가능합니다.</small>
                  </div>
                  <div class="col-sm-2">
                    <button style="margin-left: -15px;" class="btn btn-sm btn-primary" type="button"id="doubleCheck" value="0">중복확인</button>
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPwd">비밀번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPwd" type="password" placeholder="비밀번호를 입력하세요." name="userPwd" required="required">
                    <small id="pwdMent" style="color: red;" value="0";>최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.</small>            
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPwd2">비밀번호 확인</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPwd2" type="password" placeholder="비밀번호를 다시 입력해주세요." required="required">
                    <small id="pwdMent2" style="color: red;" value="0"></small>      
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorName">이름</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorName" type="text" placeholder="이름을 입력해주세요." name="userName">
                    <small id="nameMent" style="color: red; display: none;" value="0"></small>                    
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorName">생년월일</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorDate" type="date" name="birthDate">
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPhone">휴대폰 번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPhone" type="text" placeholder="특수문자(-) 없이 11자리를 입력해주세요." name="phone" required="required">
                    <small id="phoneMent" style="color: red; display: none;" value="0"></small>
                  </div>
<!--                   <div class="col-sm-2">
                    <button style="margin-left: -15px;" class="btn btn-sm btn-primary" type="button" onclick="request_verNo()">인증번호 요청</button>
                  </div> -->
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">인증번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="verNo" type="text" placeholder="7인증번호를 입력하세요.">
                  </div>
                </div><br>
                <div class="form-group row">                                   
                  <div class="col-sm-2">회원 약관</div>
                  <div class="col-sm-10">
                    <div class="custom-control custom-checkbox">
                      <input style="padding-top: 5px;" class="custom-control-input" id="serviceTerms" type="checkbox">
                      <label class="custom-control-label" for="serviceTerms"><a href="#">[필수] 서비스 이용약관</a></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="custom-control-input" id="privacyTerms" type="checkbox">
                      <label class="custom-control-label" for="privacyTerms"><a href="#">[필수] 개인정보 처리약관</a></label>
                    </div>
                  </div>
                </div>
                <br><br>
                <div class="sign-btn sign-up">
                  <button class="btn btn-primary" type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/user/login'">취소</button>
                  <button class="btn btn-primary" type="submit">회원가입</button>
                </div>
              </form>
                <br><br>
            </div>
          </div>
        </div>
      </div>
      <br><br><br><br>
       <script>
          $("#doubleCheck").click(function(){
            let checkId = document.getElementById("tutorId").value;
            if(checkId.length == 0 || checkId == null){
              alert("아이디를 입력하세요.");
              return;
            }
            $.ajax({
              url:"${pageContext.servletContext.contextPath }/user/mypage/idDoubleCheck/"+checkId,
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

             //휴대폰번호 유효성검사
             $("#tutorPhone").keyup(function(){
                // var regPhone = /^(?=.{12,13}$)(\d{3,3})+[-]+(\d{3,4})+[-]+(\d{4,4})/
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
<!--           <script>
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
          </script> -->
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
              
              if(document.getElementById("phoneMent").value != 1){
                alert("휴대폰번호를 확인해주세요");
                return false;
              }

            }
            </script>

      
      	<%@include file="../commons/footer.jsp" %>
 </div>
      
  </body>
</html>