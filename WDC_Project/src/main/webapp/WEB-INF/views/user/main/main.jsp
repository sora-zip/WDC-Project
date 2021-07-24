<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<%@include file="../commons/header.jsp" %>
	
    <style>
      .w-100 {
        width: 255px;
        height: 230px;
      }

      /* .reset-anchor{
        overflow:hidden;
        white-space:nowrap;
        text-overflow:ellipsis; 
        width: 200px;
      } */

      .pb-5, .py-5 {
        padding-bottom: 0rem!important;
      }

      h5, .h5 {
        font-size: 1.3rem;
      }

      .btn-outline-dark:hover {
        color: black;
        background-color: #fef0ae !important;
        border-color: #fef0ae !important;
      }

      fieldset {
        position: relative;
        display: inline-block;
        padding: 0 0 0 40px;
        background: #fff;
        border: none;
        border-radius: 5px;
      }

      input, button {
        position: relative;
        width: 500px;
        height: 50px;
        padding: 0;
        display: inline-block;
        float: left;
      }

      input {
        color: #666;
        z-index: 2;
        border: 0 none;
      }
      input:focus {
        outline: 0 none;
      }
      input:focus + button {
        -webkit-transform: translate(0, 0);
            -ms-transform: translate(0, 0);
                transform: translate(0, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
      }
      input:focus + button .fa {
        -webkit-transform: translate(0px, 0);
            -ms-transform: translate(0px, 0);
                transform: translate(0px, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
        color: #fff;
      }

      .modal-btn {
        z-index: 1;
        width: 50px;
        border: 0 none;
        background: #ceb980;
        cursor: pointer;
        border-radius: 0 5px 5px 0;  
        -webkit-transform: translate(-50px, 0);
            -ms-transform: translate(-50px, 0);
                transform: translate(-50px, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
      }
      
      .hover-btn:hover{
        color: #ffc107;
      }
      
      i{
		font-family: "Font Awesome 5 Free" !important;
	   }
		
	  *{font-family:'Cafe24SsurroundAir' !important;}
	  
	  a:hover{
	  	color: #ffc107 !important;
	  }
	  
	   h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    margin-bottom: 0.5rem;
    font-family: inherit;
    font-weight: 900 !important;
    line-height: 1.2;
    color: inherit;
}
    </style>
  </head>
  <body>
    <div class="page-holder">
    <%@include file="../commons/header2.jsp" %>
 	  <!-- 검색 -->
      <div class="container h-100">
      <form action="${ pageContext.servletContext.contextPath }/user/category/all" method="get">
        <div class="d-flex justify-content-center h-100">
          <div class="searchbar">
            <input class="search_input" type="text" name="searchContent" id="searchContent" placeholder="우리 동네 클래스를 검색해보세요!" style="margin-top: -5px !important;">
            <button type="submit" id="searchContent" class="search_icon" style="text-decoration:none; border: 0px;"><i class="fas fa-search"></i></button>
          </div>
        </div>
      </form>
      </div>
      <br>
		<script>
			$("#searchClass").click(function(){
				if($("#searchContent").val().length < 1 ){
					alert("검색할 클래스를 입력해주세요.");
					return false;
				}
			})
		</script>
		
      <!-- HERO SECTION-->
      <div class="container">
      <%-- TIG 배너 이미지
      <section class="hero pb-3 bg-cover bg-center d-flex align-items-center" style="background: url(${pageContext.servletContext.contextPath }/resources/user/img/TIGmainPic.jpg)">
      --%>
      <section class="hero pb-3 bg-cover bg-center d-flex align-items-center" style="background: url(${pageContext.servletContext.contextPath }/resources/user/img/cpbanner.png)"> 
          <div class="container py-5">
            <div class="row px-4 px-lg-5">
            <%-- TIG 배너 이미지 사용시 문구 위치 변경
              <div class="col-lg-6" style="margin-bottom: 400px;">
              --%>
              <div class="col-lg-6">
                <p class="text-muted small text-uppercase mb-2">WDC 2021 EVENT</p>
                <h1 class="h2 text-uppercase mb-3">응원한 클래스가 개설되면<br>파격 할인 쿠폰 제공!!</h1>
                 <form action="${ pageContext.servletContext.contextPath }/user/category/all" method="get">
<!--                 <a class="btn btn-dark" href="shop.html">Browse collections</a>
 -->                  <input name="searchCheckBox" value="scheduledToOpen" type="hidden">
                  <a class="btn btn-dark"><button style="width: 225px; height: 35px;" class="btn btn-darkt" id="customCheck3btn" type="submit" >응원클래스 목록보러가기</button></a>
                  </form>
              </div>
            </div>
          </div>
        </section>

        <!-- 신규 클래스 -->
        <section class="py-5">
          <header>
            <p class="small text-muted small text-uppercase mb-1">오늘 오픈했어요!</p>
            <h2 class="h5 text-uppercase mb-4">따끈따끈 신규 클래스</h2>
          </header>
          <div class="row">
            <!-- PRODUCT-->
            <c:set value="0" var="i"></c:set>
            <c:forEach  var="newClassList" items="${ requestScope.newClassList }">
            <c:set value="${ i+1 }" var="i"></c:set>
              <!-- Modal -->
		      <div class="modal fade" id="classView${i}" tabindex="-1" role="dialog" aria-hidden="true">
		        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		          <div class="modal-content">
		            <div class="modal-body p-0">
		              <div class="row align-items-stretch">
		                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${ pageContext.servletContext.contextPath }/${ newClassList.titlePic })" href="${ pageContext.servletContext.contextPath }/${ newClassList.titlePic }" data-lightbox="productview" title="Red digital smartwatch"></a></div>
 		                <div class="col-lg-6">
		                  <button class="close p-4 modal-btn" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                  <div class="p-5 my-md-4">
		                  	<c:if test="${ newClassList.clsType eq 'O' }"><b>[ 원데이클래스 ]</b></c:if>
                    		<c:if test="${ newClassList.clsType eq 'R' }"><b>[ 정규클래스 ]</b></c:if>
		                    <h2 class="h4">${ newClassList.title }</h2>
		                    <p class="text-muted"><fmt:formatNumber value="${ newClassList.price }" pattern="#,###"/> 원</p>
		                    <p class="text-small mb-4">${ newClassList.simpleIntro }</p>
		                    <br><br>
		                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ newClassList.clsNo }">클래스 보기</a></div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <div class="badge text-white badge-info">New</div><a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ newClassList.clsNo }"><img class="img-fluid w-100" src="${ pageContext.servletContext.contextPath }/${ newClassList.titlePic }" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline" style="font-family: Libre Franklin !important;">
                      <input type="hidden" value="${ newClassList.clsNo }" id="clsNo${i}">
                      <c:if test="${ newClassList.likeStatus eq 'Y' }">
                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" style="background-color:#fef0ae">
                      	<i class="fas fa-heart" style="color:#ff5e5e;"></i></a></li>
                      </c:if>
                      <c:if test="${ newClassList.likeStatus ne 'Y' }">
                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" href="#">
                      	<i class="far fa-heart icon1"></i></a></li>
                      </c:if>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" data-toggle="modal" data-target="#classView${i}"><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ newClassList.clsNo }">
                	<c:if test="${ newClassList.clsType eq 'O' }">[원데이] ${ newClassList.title }</c:if>
                    <c:if test="${ newClassList.clsType eq 'R' }">[정규] ${ newClassList.title }</c:if></a></h6>
                <p class="small text-muted"><fmt:formatNumber value="${ newClassList.price }" pattern="#,###"/> 원</p>
              </div>
            </div>
            <script>
	            $("#like" + ${i}).click(function(){
					if ("${ sessionScope.userNo }" == "") { //로그인 안했을 경우
		  				
						if (confirm("우리 동네 클래스 회원만 이용 가능합니다. 로그인 하시겠습니까?")) { // 승낙하면 로그인 페이지로 이동 
		  					location.href = '${ pageContext.servletContext.contextPath }/user/login'; 
		  				} else { 
		  					//거부하면 해당 페이지 새로고침 
		  					//location.reload(); 
		  				}
					} else{ //로그인 한 경우
						
				        const clsNo = document.getElementById('clsNo' + ${i}).value;
				        
				        $.ajax({
				            url:"${pageContext.servletContext.contextPath}/user/mypage/likeClass",
				            type:"post",
				            data:{
				         		clsNo : clsNo	
				            },
				            success:function(data, textStatus, xhr){
				            	if(data == '0'){
					            	if (confirm("클래스 찜♡\n찜 목록으로 이동하시겠어요?")) { //승낙하면 찜 목록으로 이동 
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
	        </script>
            </c:forEach>
           </div>
          </section>

          <!-- 찜 많은 클래스  -->
          <section class="py-5">
            <header>
              <p class="small text-muted small text-uppercase mb-1">가장 많은 관심을 받은 클래스는 ?!</p>
              <h2 class="h5 text-uppercase mb-4">우동클 인기 클래스</h2>
            </header>
            <div class="row">
            <!-- PRODUCT-->
            <c:set value="4" var="i"></c:set>
            <c:forEach  var="topClassList" items="${ requestScope.topClassList }">
            <c:set value="${ i+1 }" var="i"></c:set>
             <!-- Modal -->
		      <div class="modal fade" id="classView${i}" tabindex="-1" role="dialog" aria-hidden="true">
		        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		          <div class="modal-content">
		            <div class="modal-body p-0">
		              <div class="row align-items-stretch">
		                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${ pageContext.servletContext.contextPath }/${ topClassList.titlePic })" href="${ pageContext.servletContext.contextPath }/${ topClassList.titlePic }" data-lightbox="productview" title="Red digital smartwatch"></a></div>
		                <div class="col-lg-6">
		                  <button class="close p-4 modal-btn" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                  <div class="p-5 my-md-4">
		                  	<c:if test="${ topClassList.clsType eq 'O' }"><b>[ 원데이클래스 ]</b></c:if>
                    		<c:if test="${ topClassList.clsType eq 'R' }"><b>[ 정규클래스 ]</b></c:if>
		                    <h2 class="h4">${ topClassList.title }</h2>
		                    <p class="text-muted"><fmt:formatNumber value="${ topClassList.price }" pattern="#,###"/> 원</p>
		                    <p class="text-small mb-4">${ topClassList.simpleIntro }</p>
		                    <br><br>
		                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ topClassList.clsNo }">클래스 보기</a></div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ topClassList.clsNo }"><img class="img-fluid w-100" src="${ pageContext.servletContext.contextPath }/${ topClassList.titlePic }" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline" style="font-family: Libre Franklin !important;">
                      <input type="hidden" value="${ topClassList.clsNo }" id="clsNo${i}">
                      <c:if test="${ topClassList.likeStatus eq 'Y' }">
                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" style="background-color:#fef0ae"><i class="fas fa-heart" style="color:#ff5e5e;"></i></a></li>
                      </c:if>
                      <c:if test="${ topClassList.likeStatus ne 'Y' }">
                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" href="#"><i class="far fa-heart icon1"></i></a></li>
                      </c:if>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" data-toggle="modal" data-target=#classView${i}><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ topClassList.clsNo }">
                	<c:if test="${ topClassList.clsType eq 'O' }">[원데이] ${ topClassList.title }</c:if>
                    <c:if test="${ topClassList.clsType eq 'R' }">[정규] ${ topClassList.title }</c:if></a></h6>
                <p class="small text-muted"><fmt:formatNumber value="${ topClassList.price }" pattern="#,###"/> 원</p>
              </div>
            </div>
            <script>
	            $("#like" + ${i}).click(function(){
					if ("${ sessionScope.userNo }" == "") { //로그인 안했을 경우
		  				
						if (confirm("우리 동네 클래스 회원만 이용 가능합니다. 로그인 하시겠습니까?")) { // 승낙하면 로그인 페이지로 이동 
		  					location.href = '${ pageContext.servletContext.contextPath }/user/login'; 
		  				} else { 
		  					// 거부하면 해당 페이지 새로고침 
		  					//location.reload(); 
		  				}
					} else{ //로그인 한 경우
						
				        const clsNo = document.getElementById('clsNo' + ${i}).value;
				        
				        $.ajax({
				            url:"${pageContext.servletContext.contextPath}/user/mypage/likeClass",
				            type:"post",
				            data:{
				         		clsNo : clsNo	
				            },
				            success:function(data, textStatus, xhr){
				            	if(data == '0'){
					            	if (confirm("클래스 찜♡\n찜 목록으로 이동하시겠어요?")) { //승낙하면 찜 목록으로 이동 
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
	        </script>
            </c:forEach>
           </div>
          </section>

          <!-- 오픈 예정 클래스  -->
          <section class="py-5">
            <header>
              <p class="small text-muted small text-uppercase mb-1">새로운 클래스가 열려요!</p>
              <h2 class="h5 text-uppercase mb-4">오픈 예정 클래스</h2>
            </header>
            <div class="row">
            <!-- PRODUCT-->
            <c:set value="8" var="i"></c:set>
            <c:forEach  var="cheerClassList" items="${ requestScope.cheerClassList }">
            <c:set value="${ i+1 }" var="i"></c:set>
             <!-- Modal -->
		      <div class="modal fade" id="classView${i}" tabindex="-1" role="dialog" aria-hidden="true">
		        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		          <div class="modal-content">
		            <div class="modal-body p-0">
		              <div class="row align-items-stretch">
		                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${ pageContext.servletContext.contextPath }/${ cheerClassList.titlePic })" href="${ pageContext.servletContext.contextPath }/${ cheerClassList.titlePic }" data-lightbox="productview" title="Red digital smartwatch"></a></div>
		                <div class="col-lg-6">
		                  <button class="close p-4 modal-btn" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                  <div class="p-5 my-md-4">
		                    <c:if test="${ cheerClassList.clsType eq 'O' }"><b>[ 원데이클래스 ]</b></c:if>
                    		<c:if test="${ cheerClassList.clsType eq 'R' }"><b>[ 정규클래스 ]</b></c:if>
		                    <h2 class="h4">${ cheerClassList.title }</h2>
		                    <p class="text-muted"><fmt:formatNumber value="${ cheerClassList.price }" pattern="#,###"/> 원</p>
		                    <p class="text-small mb-4">${ cheerClassList.simpleIntro }</p>
		                    <br><br>
		                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ cheerClassList.clsNo }">클래스 보기</a></div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>      
			<div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
              <c:if test="${cheerClassList.dDay ne '-' && cheerClassList.dDay ne '.'}">
               <div class="badge text-white badge-danger">D - ${cheerClassList.dDay} </div>
              </c:if>
              <c:if test="${cheerClassList.dDay eq '-' || cheerClassList.dDay eq '.'}">
               <div class="badge text-white badge-danger">D - DAY </div>
              </c:if>
                <div class="position-relative mb-3">
                  <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ cheerClassList.clsNo }"><img class="img-fluid w-100" src="${ pageContext.servletContext.contextPath }/${ cheerClassList.titlePic }" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline" style="font-family: Libre Franklin !important;">
                      <input type="hidden" value="${ cheerClassList.clsNo }" id="clsNo${i}">
                      <c:if test="${ cheerClassList.likeStatus eq 'Y' }">
                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" style="background-color:#fef0ae"><i class="fas fa-heart" style="color:#ff5e5e;"></i></a></li>
                      </c:if>
                      <c:if test="${ cheerClassList.likeStatus ne 'Y' }">
                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" href="#"><i class="far fa-heart icon1"></i></a></li>
                      </c:if>
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="cheerUp${i}">응원하기</a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" data-toggle="modal" data-target=#classView${i}><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ cheerClassList.clsNo }">
                	<c:if test="${ cheerClassList.clsType eq 'O' }">[오픈예정][원데이] ${ cheerClassList.title }</c:if>
                    <c:if test="${ cheerClassList.clsType eq 'R' }">[오픈예정][정규] ${ cheerClassList.title }</c:if></a></h6>
                <p class="small text-muted"><fmt:formatNumber value="${ cheerClassList.price }" pattern="#,###"/> 원</p>
              </div>
            </div>
            <script>
	            $("#like" + ${i}).click(function(){
					if ("${ sessionScope.userNo }" == "") { //로그인 안했을 경우
		  				
						if (confirm("우리 동네 클래스 회원만 이용 가능합니다. 로그인 하시겠습니까?")) { // 승낙하면 로그인 페이지로 이동 
		  					location.href = '${ pageContext.servletContext.contextPath }/user/login'; 
		  				} else { 
		  					// 거부하면 해당 페이지 새로고침 
		  					//location.reload(); 
		  				}
					} else{ //로그인 한 경우
						
				        const clsNo = document.getElementById('clsNo' + ${i}).value;
				        
				        $.ajax({
				            url:"${pageContext.servletContext.contextPath}/user/mypage/likeClass",
				            type:"post",
				            data:{
				         		clsNo : clsNo	
				            },
				            success:function(data, textStatus, xhr){
				            	if(data == '0'){
					            	if (confirm("클래스 찜♡\n찜 목록으로 이동하시겠어요?")) { //승낙하면 찜 목록으로 이동 
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
	        </script>
	        <script>
			$("#cheerUp" + ${i}).click(function(){
				
 				if ("${ sessionScope.userNo }" == "") { //로그인 안했을 경우
	  				
					if (confirm("우리 동네 클래스 회원만 이용 가능합니다. 로그인 하시겠습니까?")) { // 승낙하면 로그인 페이지로 이동 
	  					location.href = '${ pageContext.servletContext.contextPath }/user/login'; 
	  				} else { 
	  					// 거부하면 해당 페이지 새로고침 
	  					//location.reload(); 
	  				}
				}else{ 
					
			        if (confirm('응원 하시겠습니까? ')){
			             // Yes click
				        const clsNo = document.getElementById('clsNo' + ${i}).value;
			             
	 			        $.ajax({
				               url:"${pageContext.servletContext.contextPath}/user/cheerUp",
				               type:"post",
				               data:{
				            	  clsNo : clsNo			
				               },
				               success:function(data, textStatus, xhr){
				            	   if(data == '0'){
				            		   alert("이미 응원하신 클래스 입니다");
				            	   }else if(data == '1'){
				            		   alert("응원에 성공 했습니다.\n 해당 클래스가 오픈될 수 있게 응원해주새요!!")
								  	   location.reload();
				            	   }else if(data == '2'){
				            		   alert("오늘 이미 응원하셨습니다 \n 응원권은 하루에 하나씩 충전됩니다. 신중히 응원해 주세요")
				            	   }
				               },
				               error:function(xhr,status,error){
				                  console.log(error);
				               }
				        	});  
				             
				        } else {
							return;
				        } 
				 }

			    }); 
			</script>
           </c:forEach>
          </div>
         </section>
         <br><br>
      
      </div>
      <br><br><br>

      <%@include file="../commons/footer.jsp" %>

    </div>
  </body>
</html>