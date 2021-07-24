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

      .card-body{
        height: 400px;
        margin-left: 100px;

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

      .btn-left{
        display: flex;
        margin: auto;
        width: 700px;
      }

      .overlay {
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0, 0, 0, 0.7);
        transition: opacity 500ms;
        visibility: hidden;
        opacity: 0;
        z-index: 900;
      }

      .overlay:target {
        visibility: visible;
        opacity: 1;
      }

      .popup {
        position: fixed;
        width: 60%;
        padding: 10px;
        max-width: 500px;
        border-radius: 10px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: rgba(255, 255, 255, .9);
        /* "delay" the visibility transition */
        -webkit-transition: opacity .5s, visibility 0s linear .5s;
        transition: opacity .5s, visibility 0s linear .5s;
        z-index: 1;
        height: 410px;
      }

      .popup:target {
        visibility: visible;
        opacity: 1;
        /* cancel visibility transition delay */
        -webkit-transition-delay: 0s;
        transition-delay: 0s;
      }

      .popup-close {
        position: absolute;
        padding: 10px;
        max-width: 500px;
        border-radius: 10px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: rgba(255, 255, 255, .9);
      }

      .popup .close {
        position: absolute;
        right: 5px;
        top: 5px;
        padding: 5px;
        color: #000;
        transition: color .3s;
        font-size: 2em;
        line-height: .6em;
        font-weight: bold;
      }

      .popup .close:hover {
        color: #6eceda;
      }

      .withdrawbtn{
        margin-left: 200px;
        margin-top: 10px;
      }
      i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}
    </style>
  </head>
  <body>
    <div class="page-holder">
      <!-- navbar-->
	<%@include file="../commons/header2.jsp" %>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">My Page</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>
        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain">내 정보</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/complateClassList">참여 완료 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/coupon">내 쿠폰</a></strong></div>
              </div>
              <!-- BILLING ADDRESS-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="col-lg-6">
                  <ul class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
                    <li class="list-inline-item">
                      <div class="col-lg-8 form-group">
                        <label class="text-small text-uppercase" for="firstName">이름 </label>
                        <input class="form-control form-control-lg" id="firstName" type="text" value="${ requestScope.userInfoDTO.userName }" disabled>
                      </div>
                      <div class="col-lg-8 form-group">
                        <label class="text-small" for="email">아이디</label>
                        <input class="form-control form-control-lg" id="email" type="email" value="${ requestScope.userInfoDTO.userId }" disabled  >
                      </div>
                      <div class="col-lg-8 form-group">
                        <label class="text-small text-uppercase" for="phone">휴대폰 번호</label>
                        <input class="form-control form-control-lg" id="phone" type="tel"  value="${ requestScope.userInfoDTO.phone }" disabled>
                      </div>
                      <div class="col-lg-8 form-group">
                          <label class="text-small text-uppercase" for="company">변경할 휴대폰  번호</label>
                          <div class="btn-left">
                            <input class="form-control form-control-lg" name="changePhone" id="changePhone" type="text" placeholder="변경할 전화번호를 입력해주세요.">
                            &nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-dark" id="changePhoneBtn" style="float: right;">변경</button>
                          </div>
                          <small id="phoneMent" style="color: red; display: none;" value="0"></small>
                      </div>
	                  <form action="${ pageContext.servletContext.contextPath }/user/mypage/changePwd" method="post">
	                      <div class="col-lg-8 form-group">
	                        <label class="text-small text-uppercase" for="address">비밀번호 변경</label>
	                        <input class="form-control form-control-lg" name="changePwd" id="changePwd" type="password" placeholder="변경할 비밀번호를 입력해주세요.">
		                    <small id="pwdMent" style="color: red;" value="0"></small>
	                      </div>
	                      <div class="col-lg-8 form-group">
	                          <label class="text-small text-uppercase" for="address">비밀번호 확인</label>
	                          <div class="btn-left">
	                            <input class="form-control form-control-lg" name="checkPwd" id="checkPwd" type="password" placeholder="입력한 비밀번호를 한번 더 입력해주세요.">
	                            &nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-dark" id="changePwdBtn" style="float: right;">변경</button>
	                          </div>
	                      	  <small id="pwdMent2" style="color: red;" value="0"></small>
	                      </div>
                      </form>
                      <br><br><br>
                      <button type="submit" class="btn btn-dark" style="margin-left:195px; background-color:#e9ecef; border-color: #e9ecef;"  onclick="location.href='#pop01'">탈퇴하기</button>
                      <!-- 회원탈퇴 팝업창 -->
                      <div id="pop01" class="overlay">
                        <div class="popup">
                          <a href="#none" class="close">&times;</a>
                            <p style="font-size: 20px; color: red; padding-bottom: 10px;">회원탈퇴</p>
              
                            <div class="cont-step cont-step_02" id="contStep02" style="display: block;">
                              <div class="cont-step_preface">
                                <h3>탈퇴 하시겠습니까? </h3>
                              </div>
                              <!-- 탈퇴이유 -->
                              <ul class="reason-list" style="text-align: left;">

                                  <input id="reasonCheckbox" type="checkbox" name="radios" value="OTHER">
                                  <label for="reasonCheckbox">안내문구를 확인했습니다.</label>
                                  <div class="reason-innder-box reason-innder-box6"  style="margin-bottom: 10px;">
                                  <textarea class="inner-textarea" id="reasonTextarea6" name="innerTextarea" style="resize: none; height: 150px; width: 400px; white-space:pre-line;;" 
                                  readonly="readonly">약관 : 탈퇴 시 잔여 강의 금액 환불 불가. 
 									잔여 강의가 존재 시 환불 신청 후 환불 완료 확인 하시고 탈퇴 해 주세요.</textarea>
                                  </div>
                                </ul>
                              <div class="password-wrap">
                                <div class="button-wrap">
                                <button class="btn_submit disabled withdrawbtn btn-dark" onclick=withdraw();>탈퇴하기</button>
                                </div>
                              </div>
                            </div>
                            <script>
                            function withdraw(){
                            	
                                const check = document.getElementById("reasonCheckbox").checked;
                            	
                            	if(check == false){
                              		alert("약관에 동의 하셔야 탈퇴 가능 합니다.")
                              		return;
                              		
                            	}else if(check == true){
                              		alert("탈퇴 되었습니다.")
                            		location.href='${ pageContext.servletContext.contextPath }/user/mypage/userWithdraw';

                            	}
                            }
                          </script>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <br>
      <script>
	  	  //휴대폰번호 유효성검사
	      $("#changePhone").keyup(function(){
	         //var regPhone = /^(?=.{12,13}$)(\d{3,3})+[-]+(\d{3,4})+[-]+(\d{4,4})/
	         var regPhone = /^[0-9]{10,11}$/
	        
	         if(regPhone.test(document.getElementById("changePhone").value)){
	           document.getElementById("phoneMent").value = 1;
	           document.getElementById("phoneMent").innerHTML = ""; 
	           document.getElementById("phoneMent").display = "none"; 
	         } else {
	           document.getElementById("phoneMent").value = 0;
	           document.getElementById("phoneMent").style.display = "";
	           document.getElementById("phoneMent").innerHTML = "특수문자(-) 없이 10자리 또는 11자리를 입력해주세요.";
	         }
	         
	         if(document.getElementById("changePhone").value==""){
	           document.getElementById("phoneMent").value = 0;
	           document.getElementById("phoneMent").style.display = "none";
	         }
	      });
	  	  
          $("#changePhoneBtn").click(function(){
		        var phoneNum = document.getElementById('changePhone').value;
		        
		        $.ajax({
		            url:"${ pageContext.servletContext.contextPath }/user/mypage/changePhone",
		            type:"post",
		            data:{
		            	phoneNum : phoneNum	
		            },
		            success:function(data, textStatus, xhr){
		            	if(data == '1'){
		            		alert("입력하신 번호는 이미 등록된 번호입니다.");
			            } else{
			            	alert("휴대폰 번호가 변경되었습니다.");
			            }
			  	   		location.reload();
		        	},
		            error:function(xhr,status,error){
		            	console.log(error);
		       		}
      			});  
		  });
          
          //비밀번호 유효성검사
          $("#changePwd").keyup(function(){
             var regPwd =/(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;
             
             if(regPwd.test(document.getElementById("changePwd").value)){
               document.getElementById("pwdMent").innerHTML="";
               document.getElementById("pwdMent").value="1";
               document.getElementById("pwdMent").display="none";
              } else{
                document.getElementById("pwdMent").innerHTML="최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.";
                document.getElementById("pwdMent").value="0";
                document.getElementById("pwdMent").display="";
              }
              
              if(document.getElementById("changePwd").value ==""){
                
                document.getElementById("pwdMent").innerHTML="최소 8자, 영문, 숫자, 특수문자 각각 하나 이상 포함되어 있어야 합니다.";
                document.getElementById("pwdMent").value="0";
                document.getElementById("pwdMent").display="";
                pwdMent2.innerHTML ="";
             }
  
           });

           //비밀번호 일치검사
           $("#checkPwd").keyup(function(){
              var pwd1 = document.getElementById("changePwd").value;
              var pwd2 = document.getElementById("checkPwd").value;
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
           
           $("#changePwdBtn").click(function(){
               
      	   	  if(document.getElementById("pwdMent").value != 1){
              	alert("비밀번호 형식에 맞춰 입력해주세요")
              	return false;
              }
              if(document.getElementById("pwdMent2").value != 1){
                alert("비밀번호 일치여부를 확인해주세요");
                return false;
              }
                 
		        var newPwd = document.getElementById('checkPwd').value;
		        
		        $.ajax({
		            url:"${ pageContext.servletContext.contextPath }/user/mypage/changePwd",
		            type:"post",
		            data:{
		            	newPwd : newPwd	
		            },
		            success:function(data, textStatus, xhr){
		            	if(data == '1'){
		            		alert("현재 비밀번호와 일치합니다.");
			            } else{
			            	alert("비밀번호가 변경되었습니다.");
			            }
			  	   		location.reload();
		        	},
		            error:function(xhr,status,error){
		            	console.log(error);
		       		}
      			});  
 		  });
        </script>
      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>