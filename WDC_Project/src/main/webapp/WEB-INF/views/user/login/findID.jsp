<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>
  </head>
  <style>
    .modal{
      vertical-align: middle;
      margin-top: 13%;
    }

    .modal-sm{
      max-width: 500px !important;
    }

    i{
      font-family: "Font Awesome 5 Free" !important;
    }

  *{font-family:'Cafe24SsurroundAir' !important;}
  </style>
    <body>
    <!-- header -->
    <div class="page-holder">
      <!-- navbar-->
	<%@include file="../commons/header2.jsp" %>
      <br><br>
      <!-- body -->
      <div class="container py-5">
        <div class="col-lg-7" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h4 class="mb-5" style="text-align: center;">아이디찾기</h4>
              <form>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorId">이름</label>
                  <div class="col-sm-12">
                    <input class="form-control" style="width: 420px;" id="tutorId" type="text" placeholder="이름">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">휴대폰번호</label>
                  <div class="col-sm-12 form-inline" style="flex-wrap: nowrap; justify-content: space-between;">
                    <input class="form-control" style="width: 420px;" type="text"  id="phoneNumber" placeholder="(-)없이 10자리 또는 11자리 숫자">
                    <button class="btn btn-primary" id="authentication">인증번호 전송</button>
                    <br>
                  </div>
                  &nbsp;&nbsp;&nbsp; <small style="color: red;">회원가입 시 입력한 정보(이름, 휴대폰번호)와 다른경우 인증번호가 발송되지 않습니다.</small>
                </div>
                <div class="form-group row"   style="display: none;" id="phoneNumberInput">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">인증번호</label>
                  <div class="col-sm-12 form-inline" style="flex-wrap: nowrap; justify-content: space-between;">
                    <input class="form-control"style="width: 420px;" type="text" placeholder="인증번호를 입력하세요" id="checkNum">
                    <button class="btn btn-primary" id="authenticationCheck">인증번호 확인</button>
                  </div>
                </div><br><br>
                <div class="form-group row">
                  <div class="col-sm-12" text-align="center" style="padding: 0px 0px 0px 0px;">
                    <button id="findIdModal" style="width: 95%; height: 38px; margin-left: 14px;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#idFind">아이디 찾기</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <br><br><br>
      <!-- 아이디찾기팝업 -->
      <div id="idFind"class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title" id="gridSystemModalLabel">아이디찾기 결과</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="container">
                <div class="form-group">
                  <h6>내 아이디</h6><br>
                  <input type="text" class="form-control"  readonly id="myId">
                </div>
              </div>
            </div>
            <div class="modal-footer" style="display: block;" align="center">
              <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 200px; border: 1px solid rgba(0, 0, 0, 0.25);">닫기</button>
              <button type="button" class="btn btn-primary" style="width: 200px;" onclick="location.href='${pageContext.servletContext.contextPath }/teacher'">로그인하러가기</button>
              <button type="button" class="btn btn-primary" style="width: 200px;" onclick="location.href='${pageContext.servletContext.contextPath }/teacher/findPWD'">비밀번호찾기</button>
            </div>
          </div>
        </div>
      </div>  
       <script>
      //본인인증
        $("#authentication").click(function(){
          let tutorName = document.getElementById("tutorId").value;
          let phoneNumber = document.getElementById("phoneNumber").value;
          if(tutorName.length < 1 || phoneNumber.length <1 ){
            alert(" 정보를 정확히 입력해주세요")
            return;
          }
          $.ajax({
            url: "${ pageContext.servletContext.contextPath }/user/mypage/certification",
            type:"post",
            data: {
                    type : "id",
                    phoneNumber : phoneNumber,
                    name : tutorName
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
            url : "${ pageContext.servletContext.contextPath }/user/mypage/messageCertification",
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
            $("#findIdModal").click(function(){
              let phoneNumber = document.getElementById("phoneNumber").value;
              let tutorName = document.getElementById("tutorId").value;
              // if(document.getElementById("authenticationCheck").value != 1){
              //   alert("휴대폰 인증을 해주세요"); 
              //   return;
              // }
              if(phoneNumber.length < 1 || tutorName.length < 1){
                return;
              }
              $.ajax({
                url: "${ pageContext.servletContext.contextPath }/user/mypage/idFind",
                type:"post",
                data: {
                        type : "id",
                        phoneNumber : phoneNumber,
                        name : tutorName
                      }, 
                success:function(data, textStatus, xhr){
                  document.getElementById("myId").value = data;
                  document.getElementById("idFind").ariaHidden =false
                },error:function(xhr, status, error){
                  console.log(error);
                }
              });
            });            
          </script>
      <%@include file="../commons/footer.jsp" %>
 	</div>
  </body>
</html>