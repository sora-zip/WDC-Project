<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<%@include file="../commons/header.jsp"%>
    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>

<style>
.text-small {
   font-size: 15px !important;
   width: 860px;
}

small, .small {
   font-size: 15px;
}

.nav-tabs .nav-link {
   font-size: 1rem;
}

.ml-3 {
   padding-top: 5px;
}

.rounded-circle {
   border-radius: 50% !important;
   margin-top: 8px;
   width: 50px;
}

.class-category {
   font-size: 16px;
   font-weight: 600;
   color: black !important;
}

.datetimepicker {
   width: 200px;
   height: 40px;
   text-align: center;
   border: 0 solid black;
   border-bottom: 1px solid black !important;
}

small {
   font-size: 16px !important;
}

h3 {
   font-size: 22px !important;
}

input:focus {
   outline: 2px solid #d50000;
}

input:focus {
   outline: none;
}

.answer {
   background-color: #f1f5f7;
   padding: 0px;
   padding-left: 40px;
   padding-top: 15px;
   margin-top: -5px;
   width: 1020px !important;
   border-radius: 25px;
   height: 100px;
}

/* The Close Button */
.close {
   position: absolute;
   top: 15px;
   right: 35px;
   color: #f1f1f1;
   font-size: 40px;
   font-weight: bold;
   transition: 0.3s;
}

.close:hover, .close:focus {
   color: #bbb;
   text-decoration: none;
   cursor: pointer;
}

#myImg {
   cursor: pointer;
   transition: 0.3s;
   padding: 5px;
   width: 90px;
   height: 90px;
   border-radius: 20px;
}

#myImg:hover {
   opacity: 0.7;
}

/* The Modal (background) */
.modal {
   display: none; /* Hidden by default */
   position: fixed; /* Stay in place */
   z-index: 1; /* Sit on top */
   padding-top: 100px; /* Location of the box */
   left: 0;
   top: 0;
   width: 100% !important; /* Full width */
   height: 100%; /* Full height */
   overflow: auto; /* Enable scroll if needed */
   background-color: rgb(0, 0, 0); /* Fallback color */
   background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
   margin: auto;
   display: block;
   width: 80%;
   max-width: 700px;
}

/* Caption of Modal Image */
#caption {
   margin: auto;
   display: block;
   width: 80%;
   max-width: 700px;
   text-align: center;
   color: #ccc;
   padding: 10px 0;
   height: 150px;
}

/* Add Animation */
.modal-content, #caption {
   -webkit-animation-name: zoom;
   -webkit-animation-duration: 0.6s;
   animation-name: zoom;
   animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
   from {-webkit-transform: scale(0)
}

to {
   -webkit-transform: scale(1)
}

}
@
keyframes zoom {
   from {transform: scale(0)
}

to {
   transform: scale(1)
}

}
.media {
   width: 1000px;
}

.btn {
   text-decoration: none !important;
   width: 90px;
   height: 35px;
}

.p-0 {
   padding: 0 !important;
   padding-bottom: 10px !important;
   margin-left: 60px;
   margin-top: -4px;
}

.m-0 {
   margin: auto !important;
}

i {
   font-family: "Font Awesome 5 Free" !important;
}

* {
   font-family: 'Cafe24SsurroundAir' !important;
}

.feedbackArea {
   width: 700px;
   height: 100px;
   resize: none;
   margin-bottom: 50px;
   margin-left: 110px;
   display: flex;
}

.btn-dark:focus, .btn-dark.focus {
  background-color: #fef0ae !important;
  border: none !important;
  color: black !important;
}

.oneDayPeople{
   border: 0px;
    color:#64bcff;
    width: 120px;
    font-weight: 600;
}
</style>
</head>
<body>
  <!-- 현재 시간  -->
<%Timestamp now = new Timestamp(System.currentTimeMillis());
SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd");
String strDate = formats.format(now); %>

 <c:set value="<%=strDate %>" var="cDate"></c:set>
 <div class="page-holder bg-light">
    <!-- navbar-->
	<%@include file="../commons/header2.jsp" %>
     <%@include file="../commons/search.jsp" %>
     <form action="${ pageContext.servletContext.contextPath }/user/payment" method="post">
      <section class="py-5">
         <div class="container">
            <div class="row mb-5">
               <div class="col-lg-6">
                  <!-- PRODUCT SLIDER-->
                  <div class="row m-sm-0">
                     <div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
                        <div class="owl-thumbs d-flex flex-row flex-sm-column"
                           data-slider-id="1">
                           <c:forEach var="classPic" items="${ requestScope.classPic }">
                           <c:set var="i" value="${i+1}"></c:set>
                              <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0">
                                 <img class="w-100" src="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }" alt="...">
                                 <input type="hidden" name="titlePic${i}" value="${ classPic.titlePic }"/>
                              </div>
                           </c:forEach>
                        </div>
                     </div>
                     <div class="col-sm-10 order-1 order-sm-2">
                        <div class="owl-carousel product-slider" data-slider-id="1">
                           <c:forEach var="classPic" items="${ requestScope.classPic }">
                              <c:set value="${ i+1 }" var="i" ></c:set>
                              <a class="d-block" href="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }"
                                 data-lightbox="product" title="Product item ${i}"> <img
                                 class="img-fluid" src="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }" alt="...">
                              </a> 
                           </c:forEach>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- PRODUCT DETAILS-->
               <div class="col-lg-6">               
                  <!-- 별점 평균 -->
                  <ul class="list-inline mb-2">
                     <c:forEach var="i" begin="1" end="${ requestScope.classStar.avgScore }" step="1">
                        <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                     </c:forEach>
                     <c:if test="${ requestScope.classStar.avgScore % 1 ne 0 }">
                        <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                     </c:if>
                  </ul>
                  <input type="hidden" name="title" value="${ requestScope.classDetail.title }"/>
                  <h1>${ requestScope.classDetail.title }</h1>
                  <p class="text-muted lead"><fmt:formatNumber value="${ requestScope.classDetail.price }" pattern="#,###"/> 원</p>
                  <input type="hidden" name="price" value="${ requestScope.classDetail.price }"/>
                  <ul class="list-unstyled small d-inline-block"
                     style="font-size: 16px; display: flex !important; padding-top: 15px;">
                     <div class="class-icon" style="width: 235px;">
                        <div>
                           <img src="${pageContext.servletContext.contextPath }/resources/user/img/calendar.png" width="20px">&nbsp;&nbsp;
                           <c:if test="${ requestScope.classDetail.clsType == 'R' }">
                              <c:out value="정규" />
                           </c:if>
                           
                           <c:if test="${ requestScope.classDetail.clsType == 'O' }">
                              <c:out value="원데이" />
                           </c:if>
                        </div>
                        <div style="padding-top: 15px">
                           <img src="${pageContext.servletContext.contextPath }/resources/user/img/pin.png" width="22px">&nbsp;&nbsp;${ requestScope.classDetail.address }
                        </div>
                     </div>
                     <div class="class-icon" style="padding-inline: 10px; width: 200px;">
                        <div>
                           <img src="${pageContext.servletContext.contextPath }/resources/user/img/clock.png" width="20px">&nbsp;&nbsp;${ requestScope.classDetail.time } 소요
                        </div>
                        <div style="padding-top: 15px">
                           <img src="${pageContext.servletContext.contextPath }/resources/user/img/users.png" width="20px">&nbsp;&nbsp;
                           <c:if test="${ requestScope.classDetail.clsType == 'R' }">
                              <c:forEach var="schedule" items="${ requestScope.schedule }">
                                 	최대 ${ schedule.maxPeople } 명
                              </c:forEach>
                           </c:if>
                           <c:if test="${ requestScope.classDetail.clsType == 'O' }">
                              	최대   ${ requestScope.oneDayMax } 명
                           </c:if>
                        </div>
                     </div>
                     <div class="class-icon" style="padding-inline: 10px;">
                        <div>
                        <c:if test="${ requestScope.likeYn eq 'Y' }">
                           <li class="list-inline-item m-0 p-0">
                           <a class="btn btn-sm btn-outline-dark" id="like" style="background-color: #fef0ae;"><img src="${pageContext.servletContext.contextPath }/resources/user/img/heart3.png" width="18px">&nbsp;&nbsp;찜</a></li>
                        </c:if>
                        <c:if test="${ requestScope.likeYn ne 'Y' }">
                           <li class="list-inline-item m-0 p-0">
                           <a class="btn btn-sm btn-outline-dark" id="like"><img src="${pageContext.servletContext.contextPath }/resources/user/img/heart.png" width="18px">&nbsp;&nbsp;찜</a></li>
                        </c:if>
                        </div>
                        <div>
                           <li class="list-inline-item m-0 p-0">
                           <a class="btn btn-sm btn-outline-dark" onclick="clip()"><img src="${pageContext.servletContext.contextPath }/resources/user/img/share.png" width="18px">&nbsp;&nbsp;공유</a></li>
                           <script>
		           	            $("#like").click(function(){ //찜 스크립트
		        					if ("${ sessionScope.userNo }" == "") { //로그인 안했을 경우
		        		  				
		        						if (confirm("우리 동네 클래스 회원만 이용 가능합니다. 로그인 하시겠습니까?")) { // 승낙하면 로그인 페이지로 이동 
		        		  					location.href = '${ pageContext.servletContext.contextPath }/user/login'; 
		        		  				} else { 
		        		  					// 거부하면 해당 페이지 새로고침 
		        		  					//location.reload(); 
		        		  				}
		        					} else{ //로그인 한 경우
		        						
		        				        const clsNo = ${ requestScope.classDetail.clsNo };
		        				        
		        				        $.ajax({
		        				            url:"${pageContext.servletContext.contextPath}/user/mypage/likeClass",
		        				            type:"post",
		        				            data:{
		        				         		clsNo : clsNo	
		        				            },
		        				            success:function(data, textStatus, xhr){
		        				            	if(data == '0'){
		        					            	if (confirm("클래스 찜♡ \n찜 목록으로 이동하시겠어요?")) { //승낙하면 찜 목록으로 이동 
		        					    				location.href = '${ pageContext.servletContext.contextPath }/user/mypage/likeClassList'; 
		        					    			} else { 
		        					    				//거부하면 해당 페이지 새로고침 
		        					    				location.reload();
		        					    				//return;
		        					    			} 
		        					            } else if(data == '1'){
		        				         			alert("찜 목록에서 삭제되었습니다.");
		        					  	   			location.reload();
		        				         		}
		        				        	},
		        				            error:function(xhr,status,error){
		        				            	console.log(error);
		        				       		}
		        		        		});  
		        					}
		        				});
                           
                              function clip(){ //url 복사 스크립트
   
                                 var url = '';
                                 var textarea = document.createElement("textarea");
                                 document.body.appendChild(textarea);
                                 url = window.document.location.href;
                                 textarea.value = url;
                                 textarea.select();
                                 document.execCommand("copy");
                                 document.body.removeChild(textarea);
                                 alert("URL이 복사되었습니다.")
                              }
                           </script>
                        </div>
                     </div>
                  </ul>
         
            <c:if test="${ requestScope.classDetail.dicsionStatus eq 'S'}">
			   <c:if test="${ requestScope.classDetail.endDate > cDate }">
               <c:if test="${ requestScope.classDetail.clsType == 'O' }">
                  <div style="background-color: white; width: 500px; height: 220px; border-radius: 50px; padding-top: 22px;">
                     <!-- 날짜, 시간 선택 -->
                     <div style="margin-left: 90px;">
                        <img src="${pageContext.servletContext.contextPath }/resources/user/img/date.png" style="width: 30px;">
                        &nbsp;&nbsp;<input class="datetimepicker" id="datetimepicker" type="text" name="stringScheduleDate" readonly>&nbsp;&nbsp;
                         <input type="text" id="applyCheck" class="oneDayPeople" readonly>
                      </div>
                     <br>
                     <div style="margin-left: 90px; margin-top: -5px;">
                        <img src="${pageContext.servletContext.contextPath }/resources/user/img/group.png" style="width: 30px;">
                        &nbsp;&nbsp;<input type="number" class="datetimepicker" id="checkPpl" name="ppl" max="4" min="1">
                     </div>
                     <br><br>
                     <div style="margin-left: 155px; margin-top: -15px;">
                        <li class="list-inline-item m-0 p-0">
                           <c:if test="${ !empty sessionScope.userNo }">
                              <button class="btn btn-sm btn-outline-dark" id="btnSave" type="submit" style="height: 40px; width: 170px; font-size: 16px;"> 
                                 <input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청하기 
                                 <input type="hidden" name="clsType" value="${ requestScope.classDetail.clsType }"/>
                              </button>                        
                           </c:if>
                           <c:if test="${ empty sessionScope.userNo }">
                              <button class="btn btn-sm btn-outline-dark" id="btnSave" type="button" onclick="noApply();" style="height: 40px; width: 170px; font-size: 16px;"> 
                                 <input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청하기 
                                 <input type="hidden" name="clsType" value="${ requestScope.classDetail.clsType }"/>
                              </button>
                                 
                           </c:if>
                           <script>
                              function noApply() {
                                 alert("우리 동네 클래스 회원만 신청이 가능합니다.");
                                 return false;
                              }
                              
                              $("#btnSave").click(function(){
                                 
                                 if($("#checkPpl").val() > check){
                                          alert("수강 가능 인원을 초과하였습니다.");
                                    return false;
                                 }
                                 
                                 if($("#datetimepicker").val().length == 0){
                                    alert("클래스 일정을 선택해주세요.");
                                    return false;
                                 } 
                                  
                                 var zreoTime = document.getElementById("datetimepicker").value;
                                 
                                  if(zreoTime.substr(11, 5) == "00:00"){
                                    alert("클래스 일정을 다시 선택해주세요.");
                                    return false;
                                 } 
                                  
                                  if($("#checkPpl").val().length == 0){
                                    alert("인원을 입력해주세요.");
                                    return false;
                                 } 
                                  
                              });
                           </script>
                        </li>
                     </div>
                  </div>
                     <script>
                     	var check;   
                     
                        $("#checkPpl").on("mouseenter",function(e){
                           //클래스번호, 스케쥴번호, 날짜, 시간넘기기 
                           //두번째 에이작스
                             var pickDay2 = $("#datetimepicker").val(); //선택한 날짜를 담아줌
                             var dayArray2 = pickDay2.split(' '); //선택한 날짜와 시간을 공백을 기준으로 잘라 배열에 담아줌
   
                             $.ajax({
                                 type: "post",
                                 url:  "peopleCount",
                                 async: false,
                                 data: { date : dayArray2[0],
                                       time : dayArray2[1], 
                                       clsNo : ${ requestScope.classDetail.clsNo }
                                 },
                                 success:function(data, textStatus, xhr){
                                    //$("#applyCheck").val(data); //인원선택칸에 가져온 수강 가능인원 값을 넣어줌
                                    document.getElementById("applyCheck").value = "(" + data + " 명 가능)" ;
                                    
                                    check = data;
                                    
                                    if(data <= 0){
                                       document.getElementById("checkPpl").value = 0;
                                       document.getElementById("checkPpl").setAttribute("readonly","readonly");
                                       document.getElementById("btnSave").setAttribute("type","button");
                                       document.getElementById("btnSave").value = "신청 마감";
                                    }
                                 },
                                 error:function(xhr,status,error){
                                     console.log(error);
                                 }
                               });
                             
                             e.stopPropagation();
                        });
                        
                        let times = new Array();
                        let days = new Array();
                        
                        <c:forEach var="schedule" items="${ requestScope.schedule }">
                          days.push("${schedule.scheduleDate}");
                        </c:forEach>
                        
                        //오늘 날짜에 수업이 있으면 바로 시간을 띄워줌
                        var todayTime = new Array();
                          
                         let dayValues = days;
                         let today = new Date();
                         console.log("날짜: "+ today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate());
                         cToday = today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate();
                         $.ajax({
                             url: "dateTimePicker",
                           type:"post",
                           async: false,
                           data: { date :cToday , clsNo : ${ requestScope.classDetail.clsNo } },
                           success:function(data, textStatus, xhr){
                              
                              let tArr = new Array(); 
                              
                              for(var idx in data){
                                 tArr.push(data[idx].scheduleStart);
                              }
                                
                              console.log("tArr : " + tArr);
                              
                              if(tArr.length > 0){
                                 todayTime = tArr;
                              }else {
                                 todayTime = ["00:00"];
                              }
                              console.log("timeValues : " + todayTime);
                           },
                           error:function(xhr,status,error){
                              console.log(error);
                           }
                         });
                         
                        jQuery('#datetimepicker').datetimepicker({               
                           datepicker : true,
                           timepicker : true,
                           allowTimes : todayTime,
                           allowDates : days,
                           format:'Y-m-d',
                           formatDate:'Y-m-d',
                           minDate: 0,
                           autoClose: false,
                           scrollMonth:false,
                           timepickerScrollbar:false,
                           onChangeDateTime : function(dp, $input) {
                              
                             console.log($input.val()); //인풋에 담긴 값 콘솔에 출력
                              console.log(dp);
                              
                              var pickDay = $input.val(); //선택한 날짜를 담아줌
                              var dayArray = pickDay.split(' '); //선택한 날짜와 시간을 공백을 기준으로 잘라 배열에 담아줌
                              var test1 = this;
                                                         
                              $.ajax({
                                 type: "post",
                                 url: "dateTimePicker",
                                 data: { date : dayArray[0], clsNo : ${ requestScope.classDetail.clsNo } },
                                 success:function(data, textStatus, xhr){
                                    console.log(data);
                                     let tArr = new Array();
                                     let pArr = new Array();
                                     for(var idx in data){
                                        tArr.push(data[idx].scheduleStart);
                                     }
                                     
                                     if(tArr.length > 0){
                                       test1.setOptions({
                                         allowTimes : tArr,
                                         allowDates : days,
                                         format:'Y-m-d H:i',
                                         timepicker : true,
                                         scrollTime : false,
                                         autoClose: false
                                       });
                                    } else {
                                       test1.setOptions({
                                          allowDates : days,
                                          scrollTime : false,
                                         timepicker : false
                                       });
                                    }
                                    
                                 },
                                 error:function(xhr,status,error){
                                     console.log(error);
                                 }
                              });
                           }
                        });
                     </script>
                </c:if>
                
                <c:if test="${ requestScope.classDetail.clsType == 'R' }">
                <c:if test="${ requestScope.classDetail.endDate > cDate }">
                   <div style="background-color: white; width: 500px; height: 220px; border-radius: 50px; padding-top: 22px;">
                     <!-- 날짜, 시간 선택 -->
                     <c:forEach var="schedule" items="${ requestScope.schedule }">
                        <div style="margin-left: 90px;">
                           <img src="${pageContext.servletContext.contextPath }/resources/user/img/date.png" style="width: 30px;">
                           &nbsp;&nbsp;<input class="datetimepicker" id="datetimepicker" type="text" name="stringScheduleDate" value="${ requestScope.classDetail.startDate } ${ schedule.scheduleStart }" readonly>&nbsp;&nbsp; 
                           <b style="color:#64bcff;">(${ requestScope.applyCheck } 명 가능)</b>
                        </div>
                        <br>
                        <div style="margin-left: 90px; margin-top: -5px;">
                           <c:if test="${ requestScope.applyCheck <= 0 }">
                              <img src="${pageContext.servletContext.contextPath }/resources/user/img/group.png" style="width: 30px;">
                              &nbsp;&nbsp;<input type="number" class="datetimepicker" id="applyPeople" name="ppl" value="0" readonly>
                           </c:if>
                           <c:if test="${ requestScope.applyCheck > 0 }">
                              <img src="${pageContext.servletContext.contextPath }/resources/user/img/group.png" style="width: 30px;">
                              &nbsp;&nbsp;<input type="number" class="datetimepicker" id="applyPeople" name="ppl" max="4" min="1">
                           </c:if>
                        </div>
                        <br><br>
                     </c:forEach>
                     <div style="margin-left: 155px; margin-top: -15px;">
                        <li class="list-inline-item m-0 p-0">
                           <c:if test="${ !empty sessionScope.userNo }">
                              <c:if test="${ requestScope.applyCheck <= 0 }">
                                 <button class="btn btn-sm btn-outline-dark" id="noBtnSave" type="button" style="height: 40px; width: 170px; font-size: 16px; background-color: #dee2e6; border: 1px #dee2e6; cursor: default;"> 
                                    <input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청 마감
                                    <input type="hidden" name="clsType" value="${ requestScope.classDetail.clsType }"/>
                                 </button>   
                              </c:if>                     
                              <c:if test="${ requestScope.applyCheck > 0 }">
                                 <button class="btn btn-sm btn-outline-dark" id="btnSave" type="submit" style="height: 40px; width: 170px; font-size: 16px;"> 
                                    <input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청하기
                                    <input type="hidden" name="clsType" value="${ requestScope.classDetail.clsType }"/>
                                 </button>   
                              </c:if>                     
                           </c:if>
                           <c:if test="${ empty sessionScope.userNo }">
                              <c:if test="${ requestScope.applyCheck <= 0 }">
                                 <button class="btn btn-sm btn-outline-dark" id="noBtnSave" type="button" style="height: 40px; width: 170px; font-size: 16px; background-color: #dee2e6; border: 1px #dee2e6; cursor: default;"> 
                                    <input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청 마감
                                    <input type="hidden" name="clsType" value="${ requestScope.classDetail.clsType }"/>
                                 </button>
                              </c:if>      
                              <c:if test="${ requestScope.applyCheck > 0 }">
                                 <button class="btn btn-sm btn-outline-dark" id="noBtnSave" type="button" onclick="noApply();" style="height: 40px; width: 170px; font-size: 16px;"> 
                                    <input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청하기 
                                    <input type="hidden" name="clsType" value="${ requestScope.classDetail.clsType }"/>
                                 </button>
                              </c:if>      
                           </c:if>
                           <script>
                              function noApply() {
                                 alert("우리 동네 클래스 회원만 신청이 가능합니다.");
                              }
                              
                              $("#btnSave").click(function(){
                                  
                                  if($("#applyPeople").val().length == 0){
                                    alert("인원을 입력해주세요.");
                                    return false;
                                 } 
                                  
                                   if($("#applyPeople").val() > ${ requestScope.applyCheck } ){
                                    alert("수강 가능 인원을 초과하였습니다.");
                                    return false;
                                 }
                              });
                           </script>
                        </li>
                     </div>
                  </div>
                </c:if>
               </c:if>
             </c:if>
             </c:if>
            </form>
            	<c:if test="${ requestScope.classDetail.endDate < cDate }">
	            	<button class="btn btn-sm btn-outline-dark" id="noBtnSave" type="button" style="height: 40px; width: 170px; font-size: 16px; margin-left: 115px; background-color: #dee2e6; border: 1px #dee2e6; cursor: default;"> 
						클래스 종료
					</button>
	            </c:if>
          
               <c:if test="${ requestScope.classDetail.dicsionStatus eq 'F'}">
                  <div style="background-color: white; width: 500px; height: 216px; border-radius: 50px; text-align: center; padding-top: 22px;">
                    	 클래스가 오픈되도록 응원해주세요.<br><br>
                     <div style="margin-top: -8px;">응원한 클래스가 오픈되면 <b style="color: #64bcff; font-size: 20px;">할인 쿠폰</b>까지!<br><br></div>
                     <div style="margin-top: 10px; margin-left: 17px;"><b>현재 응원수 : ${ requestScope.cheerCount } 개</b><br><br></div>
                     <img src="${pageContext.servletContext.contextPath }/resources/user/img/cheer.png" style="width: 100px; margin-left: -95px; margin-top: -55px;">
                     <li class="list-inline-item m-0 p-0">
                        <c:if test="${ !empty sessionScope.userNo }">
                           <button class="btn btn-sm btn-outline-dark" id="cheerUp" type="button" style="height: 40px; width: 170px; font-size: 16px; margin-top: -35px; margin-left: 10px;">클래스 응원하기 
                              <input type="hidden" name="clsNo"  id="clsNo" value="${ requestScope.classDetail.clsNo }"/>               
                                 <input type="hidden" name="clsType" value="${ requestScope.classDetail.clsType }"/>                           
                           </button>
                       </c:if>
                       <c:if test="${ empty sessionScope.userNo }">
                           <button class="btn btn-sm btn-outline-dark" onclick="noApply();" type="button" style="height: 40px; width: 170px; font-size: 16px; margin-top: -35px; margin-left: 10px;">클래스 응원하기 </button>
	                       <script>
	                          function noApply() {
	                         		alert("우리 동네 클래스 회원만 응원이 가능합니다.");
	                      	}
	                       </script>
                       </c:if>
                	 </li>
              	  </div>
               </c:if>
              </div>
            </div>
            <!-- DETAILS TABS-->
            <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
               <li class="nav-item"><a class="nav-link active"
                  id="description-tab" data-toggle="tab" href="#description"
                  role="tab" aria-controls="description" aria-selected="true">상세보기</a></li>
               <li class="nav-item"><a class="nav-link" id="reviews-tab"
                  data-toggle="tab" href="#reviews" role="tab"
                  aria-controls="reviews" aria-selected="false">리뷰</a></li>
               <li class="nav-item"><a class="nav-link" id="reviews-tab"
                  data-toggle="tab" href="#questions" role="tab"
                  aria-controls="reviews" aria-selected="false">문의</a></li>
            </ul>

            <!-- 상세보기 탭 -->
            <div class="tab-content mb-5" id="myTabContent">
               <div class="tab-pane fade show active" id="description"
                  role="tabpanel" aria-labelledby="description-tab">
                  <div class="p-4 p-lg-5 bg-white" style="text-align: center;">
                     <ul class="list-unstyled small d-inline-block"
                        style="width: 900px;">
                        <div style="text-align: left">
                           <div style="width: 550px; height: 70px; margin-top: 20px;">
                              <h3>※ 상세 정보</h3>
                           </div>
                           <pre style="font-size: 16px;">${ requestScope.classDetail.intro }</pre>
                           <br>
                           <hr>
                           <br>
                           <!-- 완성작 사진 -->
                           <h3 style="padding-bottom: 20px;">※ 클래스 완성작</h3>
                           - ${ requestScope.classDetail.cExpl }<br><br>
                           <div style="width: 550px; display: flex; margin: auto; text-align: center; justify-content: space-between; font-size: 16px;">
                              <c:forEach var="classPiece" items="${ requestScope.classPiece }">
                                 <div>
                                    <img src="${ pageContext.servletContext.contextPath }/resources/upload/${ classPiece.piecePic }" width="250px" height="250px">
                                    <br><br>${ classPiece.pieceTitle }
                                 </div>
                              </c:forEach>
                           </div>
                           <br><br><br>
                           <hr>
                           <!-- 커리큘럼 -->
                           <div>
                              <br>
                              <h3>※ 커리큘럼</h3>
                              <br>
                              <br>
                              <c:forEach var="curriculum" items="${ requestScope.curriculum }">
                                 <div style="display: flex;">
                                    <img src="${pageContext.servletContext.contextPath }/resources/user/img/gradation10.png" width="25px" height="25px">
                                    <div style="font-size: large;">${ curriculum.curriStep }단계 : ${ curriculum.curriTitle }</div>
                                 </div>
                                 <div style="margin-left: 30px;">
                                    <small>${ curriculum.curriContent }</small>
                                 </div>
                                 <br><br>
                              </c:forEach>
                           </div>
                           <br>
                           <hr>
                           <br>
                           <!-- 추가 제공사항 및 유의사항 -->
                           <div style="font-size: 16px;">
                           <h3>※ 추가 제공사항 및 유의사항</h3>
                              <br>
                              ${ requestScope.classDetail.addSup }
                           </div>
                           <br><br><br>
                           <hr>
                           <br>
                           <h3>※ 편의사항</h3>
                           <br>
                           <div style="display: flex; width: 550px;">
                           <img src="${pageContext.servletContext.contextPath }/resources/user/img/stayhome.png" alt="home"
                                 width="23px" height="23px;">
                              <div style="font-size: 16px;">&nbsp;&nbsp;&nbsp;
                                 ${ requestScope.classDetail.addInfo }</div>
                           </div>
                           <br>
                           <div style="display: flex; width: 550px;">
                              <img src="${pageContext.servletContext.contextPath }/resources/user/img/wifi.png" alt="home" 
                              width="23px" height="23px">
                              <div style="font-size: 16px;">&nbsp;&nbsp;&nbsp;
                               	  와이파이 가능합니다.
                              </div>
                           </div>
                           <br>
                           <!-- 지도 보기 -->
                           <div id="map" style="width:100%;height:400px;"></div>
                           <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4f9c32f3d7241ef20de4f8c2703db2c7&libraries=services"></script>
                           <script>
                           var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                               mapOption = {
                                   center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                                   level: 3 // 지도의 확대 레벨
                               };  
                           
                           // 지도를 생성합니다    
                           var map = new kakao.maps.Map(mapContainer, mapOption); 
                           
                           // 주소-좌표 변환 객체를 생성합니다
                           var geocoder = new kakao.maps.services.Geocoder();
                           
                           //주소 저장
                           var classAdress = '${ requestScope.classDetail.address }';
                           // 주소로 좌표를 검색합니다
                           geocoder.addressSearch(classAdress, function(result, status) {
                           
                               // 정상적으로 검색이 완료됐으면 
                                if (status === kakao.maps.services.Status.OK) {
                                 
                                   var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                           
                                   // 결과값으로 받은 위치를 마커로 표시합니다
                                   var marker = new kakao.maps.Marker({
                                       map: map,
                                       position: coords
                                   });
                           
                                   // 인포윈도우로 장소에 대한 설명을 표시합니다
                                   var infowindow = new kakao.maps.InfoWindow({
                                       content: '<div style="width:150px;text-align:center;padding:6px 0;">우리 동네 클래스</div>'
                                   });
                                   infowindow.open(map, marker);
                           
                                   // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                   map.setCenter(coords);
                               } 
                           });    
                           </script>
                        </div>
                     </ul>
                  </div>
               </div>

               <!-- 리뷰 탭 -->
               <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                  <div class="p-4 p-lg-5 bg-white">
                     <div class="row">
                        <div class="col-lg-8">
                           <!-- <div style="display:flex; text-align: center; justify-content: space-evenly; margin: auto;">
                                        <div style="font-size: 18px;">클래스 후기<br><div style="font-size: 22px;">3</div></div>
                                        <div>클래스 후기<br>3</div>
                                   </div> 
                              -->
                        <!-- 리뷰 -->
                        <c:if test="${ !empty requestScope.review }">
                           <c:forEach var="review" items="${ requestScope.review }">
                              <div style="padding-bottom: 15px;">
                                 <div class="media mb-3">
                                    <img id="myImg" class="btn-img" src="${ pageContext.servletContext.contextPath }/resources/upload/${ review.reviewPic }">
                                    <div id="myModal" class="modal media mb-3">
                                       <span class="close">&times;</span> 
                                       <img class="modal-content" id="img01" src="${ pageContext.servletContext.contextPath }/resources/upload/${ review.reviewPic }">
                                       <div id="caption"></div>
                                    </div>
                                    <div class="media-body ml-3">
                                       <h6 class="mb-0 text-uppercase">${ review.userName }</h6>
                                       <p class="small text-muted mb-0 text-uppercase">${ review.reviewEnrollDate }</p>
                                       <!-- 별점 -->
                                       <ul class="list-inline mb-1 text-xs">
                                          <c:forEach var="i" begin="1" end="${ review.reviewScore }" step="1">
                                             <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                                          </c:forEach>
                                       </ul>
                                       <p class="text-small mb-0 text-muted">${ review.reviewContent }</p>
                                    </div>
                                 </div>
                                 <c:if test="${ !empty review.answer.teName }">
                                    <!-- 답변 -->
                                    <div class="media mb-3 answer">
                                       <c:if test="${ review.answer.tePic ne null }">
                                       	<img class="rounded-circle" src="${ pageContext.servletContext.contextPath }/resources/upload/${ review.answer.tePic }" alt="" width="50" height="50">
                                       </c:if>
                                       <c:if test="${ review.answer.tePic eq null }">
                                       	<img class="rounded-circle" src="${ pageContext.servletContext.contextPath }/resources/user/img/user.png" alt="" width="50" height="50">
                                       </c:if>
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 text-uppercase">${ review.answer.teName }</h6>
                                          <p class="small text-muted mb-0 text-uppercase">${ review.answer.ansDate }</p>
                                          <p class="text-small mb-0 text-muted" style="margin-top: 7px;">${ review.answer.ansContent }</p>
                                          <br>
                                       </div>
                                    </div>
                                 </c:if>
                              </div>
                           </c:forEach>
                        </c:if>
                        <c:if test="${ empty requestScope.review }">
                           <div style="margin-left: 390px; color: #6c757dde; padding: 40px;">등록된 리뷰가 없습니다.</div>
                        </c:if>
                     </div>
                  </div>
               </div>
            </div>

               <!-- 문의 탭 -->
               <div class="tab-pane fade" id="questions" role="tabpanel" aria-labelledby="reviews-tab">
                  <div class="p-4 p-lg-5 bg-white">
                     <c:if test="${ !empty sessionScope.userNo }">
                        <button onclick="inquiryWrite1();" type="button" class="btn btn-dark" style="margin-left: 88%; width: 112px; font-size: 15px;">문의 작성</button>
                     </c:if>
                     <c:if test="${ empty sessionScope.userNo }">
                        <button onclick="noWrite();" type="button" class="btn btn-dark" style="margin-left: 88%; width: 112px; font-size: 15px;">문의 작성</button>
                     </c:if>
                     <div id="inquiryWrite" style="width: 200px; height: 180px; display: none; margin-left: -100px;">
                        <form action="${ pageContext.servletContext.contextPath }/user/inquiry/${ requestScope.classDetail.clsNo }" method="post">
                           <textarea class="feedbackArea" name="queContent" style="font-size: 15px; border-color: lightgray" placeholder="문의 사항을 작성해 주세요."></textarea>
                           <button class="btn btn-dark" type="submit" style="display: flex; margin-top: -85px; margin-left: 820px; font-size: 15px; width: 80px;">작성</button>
                        </form>
                     </div>

                     <!-- 문의 작성 눌렀을 시-->
                     <script>
                        function inquiryWrite1() {
                           if (document.getElementById("inquiryWrite").style.display == "none") {
                              document.getElementById("inquiryWrite").style.display = "block";
                           } else if (document
                                 .getElementById("inquiryWrite").style.display == "block") {
                              document.getElementById("inquiryWrite").style.display = "none";
                           }
                        }
                        
                        function noWrite() {
                           alert("우리 동네 클래스 회원만 문의 작성이 가능합니다.");
                        }
                     </script>

                     <div class="row">
                        <div class="col-lg-8">
                           <!-- 문의 -->
                           <c:if test="${ !empty requestScope.qna }">
                              <c:forEach var="qna" items="${ requestScope.qna }">
                                 <div style="padding-bottom: 15px;">
                                    <div class="media mb-3">
                                       <div class="media-body ml-3">
                                          <h6 class="mb-0 text-uppercase">${ qna.userName }</h6>
                                          <div class="small text-muted mb-0 text-uppercase">${ qna.queDate }</div>
                                          <p class="text-small mb-0 text-muted">${ qna.queContent }</p>
                                       </div>
                                    </div>
                                    <c:if test="${ !empty qna.answer.answerContent }">
                                       <!-- 답변 -->
                                       <div class="media mb-3 answer">
                                          <img class="rounded-circle" src="${ pageContext.servletContext.contextPath }/resources/upload/${ qna.answer.tePic }"  width="50" height="50">
                                          <div class="media-body ml-3">
                                             <h6 class="mb-0 text-uppercase">${ qna.answer.teName }</h6>
                                             <p class="small text-muted mb-0 text-uppercase">${ qna.answer.answerTime }</p>
                                             <p class="text-small mb-0 text-muted">${ qna.answer.answerContent }</p>
                                             <br>
                                          </div>
                                       </div>
                                    </c:if>
                                 </div>
                              </c:forEach>
                           </c:if>
                           <c:if test="${ empty requestScope.qna }">
                              <div style="margin-left: 390px; color: #6c757dde; padding: 40px;">등록된 문의가 없습니다.</div>
                           </c:if>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
         <script>
            $("#cheerUp").click(function(){
                 
                 if (confirm('응원 하시겠습니까? ')){
                 // Yes click
                 const clsNo = document.getElementById('clsNo').value;
                  $.ajax({
                        url:"${pageContext.servletContext.contextPath}/user/cheerUp",
                        type:"post",
                        data:{
                          clsNo : clsNo         
                        },
                        success:function(data, textStatus, xhr){
                           if(data == '0'){
                              alert("이미 응원하신 클래스 입니다.");
                           }else if(data == '1'){
                              alert("응원에 성공 했습니다.\n해당 클래스가 오픈될 수 있게 응원해주세요!!")
                              location.reload();
                           }else if(data == '2'){
                              alert("오늘 이미 응원하셨습니다.\n응원권은 하루에 하나씩 충전됩니다. 신중히 응원해 주세요.")
                           }
                        },
                        error:function(xhr,status,error){
                           console.log(error);
                        }
                    });  
                      
                 } else {
                  return;
                 } 
                 
                  return;
                 });
            
         </script>
            
      <br>
      <br>
      <br>

      <%@include file="../commons/footer.jsp"%>

   </div>
</body>
</html>