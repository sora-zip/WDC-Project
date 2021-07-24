<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
 	<%@include file="../commons/header.jsp" %>

    <style>
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

    .h4{
      text-align: center;
      font-size: 2em;
    }

    .payAgree{
      background-color: #6eceda;
      color: white;
      border-style: none;
      box-shadow: 0 3px 0 #0e8c73;
      border-radius: 10px;
      padding: 5px;
    }
    
    .imgSelect:hover{
    background: #fef0ae;
    }
    .imgSelect:active{
    background: #fbde48;
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
        <section class="py-5 bg-light1">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">신고</h1>
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0" style="background: #fef0ae">
                    <li class="breadcrumb-item"><a href="${ pageContext.servletContext.contextPath }/user/mypage/complateClassList">돌아가기</a></li>
                    
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <div class="row">
            <div class="col-lg-8 mb-4 mb-lg-0" style="margin-left: 17%;">
             <form action="${ pageContext.servletContext.contextPath }/user/reportInsert"  method="post" encType="multipart/form-data">
              <!-- CART TABLE-->
              <div class="table-responsive mb-4">
                <table class="table">
                  <thead class="bg-light">
                    <tr>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">강의 이름</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase" style="margin-left: 15px;">강사 명</strong></th>
<!--                       <th class="border-0" scope="col"> <strong class="text-small text-uppercase">신청 인원</strong></th>
 -->                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th class="pl-0 border-0" scope="row">
                        <div class="media align-items-center">
                        <a class="reset-anchor d-block animsition-link" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ requestScope.userClassDTO.clsNo }">
                        <img src="${pageContext.servletContext.contextPath }/${userClassDTO.titlePic}" alt="..." width="70" height="60px" 
                        style="border-radius: 5px;"/></a>
                          <div class="media-body ml-3"><strong class="h6"><a class="reset-anchor animsition-link" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ requestScope.userClassDTO.clsNo }">${ requestScope.userClassDTO.title }</a></strong></div>
                        </div>
                      </th>
                      <td class="align-middle border-0">
                        <div class="quantity">
                          <p style="width: 50px; margin-top: 15px;">${ requestScope.userClassDTO.teName } </p>                         
                        </div>
                    </td>

<%--                       <td class="align-middle border-0">
                          <div class="quantity">
                            <p style="margin-top: 15px; font-size: 17px;">${ requestScope.userClassDTO.ppl } 명</p>
                          </div>
                      </td> --%>

                    </tr>
                </tbody>
            </table>
            	<hr>
                <li>&nbsp;&nbsp;&nbsp;강의 날짜  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <c:if test="${ requestScope.userClassDTO.clsType eq 'O' }">
                <input type="text" style="margin-bottom: 10px; margin-top: 10px; width: 260px !important;" id="name" class="refunderInfo" value="${ requestScope.userClassDTO.scheduleDate }" disabled></li>
                </c:if>
                <c:if test="${ requestScope.userClassDTO.clsType eq 'R' }">
                <input type="text" style="margin-bottom: 10px; margin-top: 10px; width: 260px !important;" id="name" class="refunderInfo" value="${ requestScope.userClassDTO.startDate } ~ ${ requestScope.userClassDTO.endDate }" disabled></li>
                </c:if>
                
                <hr>
                <li>&nbsp;&nbsp;&nbsp;수업 시작 시간 &nbsp;&nbsp;&nbsp;
                <input type="text" style="width: 260px !important;" id="phone" class="refunderInfo" value="${ requestScope.userClassDTO.scheduleStart }" disabled> </li>
                
                <hr>
                <li>&nbsp;&nbsp;&nbsp;수업 소요 시간 &nbsp;&nbsp;&nbsp;
                <input type="text" style="width: 260px !important;" id="phone" class="refunderInfo" value="${ requestScope.userClassDTO.time }" disabled> </li>
                <hr>
              </div>
              <!-- 신청자 정보-->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left">
                      <i class="fas mr-2" style="display: flex;">
                        <h5 style="width: 200px; margin-top: 7px;">신고 제목 : 
                        </h5>
                        <input name="reportTitle"  style="width: 500px; display: flex;" placeholder="신고 제목을 입력해 주세요"> 
                      </i>
                    </div>
                </div>
            </div>
            <textarea name="reportReason" style="resize: none; width: 725px; height: 220px; margin-top: 10px; border-radius: 5px; margin-left: 3px; padding: 15px;" placeholder="신고 내용을 작성 해 주세요"></textarea>
			<br>
             <label class="imgSelect" for="input-file" style="margin-left: 170px; height: 40px; text-align: center; padding-top: 8px; width: 110px; border-radius: 5px; margin-top: 10px;">
              <input name="singleFile" id="input-file" type="file" style="margin-top: 10px; display: none;" onchange="LoadImg(this);">
                          첨부파일 선택
            </label>
            <br>  
            <br>
            <br>
            <br><br>
            <button style="margin-left: 40%; margin-top: -5px;" onclick=writeComplate(); class="btn btn-dark submitbtn" type="submit">신고 작성하기 </button>
            <input type="hidden" name="reportToNo" value="${ requestScope.userClassDTO.teNo}">
            <br>
			</form>      	
            <div class="content-img-area1"  style="margin-left: 4px; margin-top: -180px">
				<img id="LoadImg" width="150" height="120" style="margin-bottom: 50px;">
			</div>
            <input type="hidden" name="reportToNo" value="${ requestScope.userClassDTO.teNo}">
            </div>
			<br>
          </div>
        </section>
      </div>
	</div>
	<br><br>
<script>
    function writeComplate(){
        alert("신고 작성되었습니다.")
    }
</script>
<script>
	function LoadImg(value){
		if(value.files && value.files[0]){
			var reader = new FileReader();
			reader.onload = function (e){
				$('#LoadImg').attr('src',e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
		}
	}

</script>

      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>