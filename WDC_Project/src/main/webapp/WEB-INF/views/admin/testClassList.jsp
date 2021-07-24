<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <style>

        	.category {
        		margin-top: 0.5%;
                width: 13.9%;
                border-radius: 5px;
                background: #fef0ae;
                border: none;
                height: 30px;
            }

            .category:hover {
                background: rgb(112, 112, 112);
            }    
    </style>
    </head>
          <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if> 
    <body class="sb-nav-fixed">
        
        <!-- header -->
		<%@ include file="commons/header.jsp" %>
		
        <div id="layoutSidenav">
        
        	<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                클래스 관리
                            </div>
                             <div class="sideMenu">
                            	<input type="button" id="total" class="category" value="전체" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=total'">
                            	<input type="button" id="one" class="category" value="1차 심사 진행중" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=one'">
                            	<input type="button" id="t" class="category" value="2차 심사 진행중" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/seconddecision?currentMenu=class&pc=t'">
                            	<input type="button" id="accept" class="category" value="승인된 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=accept'">
                            	<input type="button" id="reject" class="category" value="거절된 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=reject'">
                            	<input type="button" id="lackOfCheering" class="category" value="응원 미달 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=lackOfCheering'">
                            	<input type="button" id="complate" class="category" value="완료 클래스" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=complate'">
      						</div>
                            <div class="card-body">
                            <ul class="nav nav-tabs" style=" margin-left: 0px; ">

							  <li class="nav-item">
							    <a class="nav-link " data-toggle="tab" href="${ pageContext.servletContext.contextPath }/admin/seconddecision?currentMenu=class&pc=t" id="tab1">전체</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link active" data-toggle="tab" href="${ pageContext.servletContext.contextPath }/admin/seconddecision?currentMenu=class&pc=p" id="tab2">승인 가능한 클래스</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" data-toggle="tab" href="${ pageContext.servletContext.contextPath }/admin/seconddecision?currentMenu=class&pc=l" id="tab3">응원 미달 클래스</a>
							  </li>
							</ul>
							<br>
							<form action="${ pageContext.servletContext.contextPath }/admin/acceptSecondDecision" method="POST">
							<div class="tab-content">
 								<table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>체크박스</th>
                                            <th>클래스 제목</th>
                                            <th>강사 이름</th>
                                            <th>1차 심사통과 날짜</th>
                                            <th>클래스 종류</th>
                                            <th>응원 갯수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     				<c:forEach items="${classList}" var="classList">
				                            <tr>
				                                <td><input type="checkbox" name="cheeringInfo" onclick="check(this)" value="${classList.clsNo}/${classList.cheeringUserNo}"/></td>
				                                <td>${classList.title}</td>
				                                <td>${classList.teName}</td>
				                                <td>${classList.firstDecision}</td>
				                                <td><c:choose>
                                        	<c:when test="${classList.categoryNo  eq '1'}">스포츠</c:when>
                                        	<c:when test="${classList.categoryNo  eq '2'}">요리/베이킹</c:when>
                                        	<c:when test="${classList.categoryNo  eq '3'}">미술/공예/공연전시</c:when>
                                        	<c:when test="${classList.categoryNo  eq '4'}">뷰티</c:when>
                                        	<c:when test="${classList.categoryNo  eq '5'}">컴퓨터/IT</c:when>
                                        	<c:when test="${classList.categoryNo  eq '6'}">언어/스피치</c:when>
                                        	<c:otherwise>재테크/창업</c:otherwise>
                                        </c:choose></td>
				                                <td>${classList.cheeringCnt}</td>
				                            </tr>
				                        </c:forEach>
                                    </tbody>
                                </table>

							</div>
							<div align="center">
								<c:choose>
									<c:when test="${t eq 't'}">
									</c:when>
									<c:when test="${t eq 'p'}">
										<!-- <input type="button" class="btn btn-primary" value="전체선택" id="allcheck" onclick="check(this)"/> -->
										<button type="button" class="btn btn-primary" value="0" id="allcheck" onclick="changeValue(this)">전체 선택</button>
										<button class="btn btn-primary" type="submit" value="1" name="submit">승인</button>
									</c:when>
									<c:otherwise>
<!-- 										<input type="button" class="btn btn-danger" value="전체선택" id="allcheck" onclick="check(this)"/> -->
										<button type="button" class="btn btn-danger" value="0" id="allcheck" onclick="changeValue(this)">전체 선택</button>
										<button class="btn btn-danger" type="submit" value="2" name="submit">거절</button>
									</c:otherwise>
								</c:choose>
							</div>
							</form>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script>
         	 window.onload = function(){
         		 
         		 const t = "${t}";
         		var tab1 = document.getElementById("tab1");
         		var tab2 = document.getElementById("tab2");
         		var tab3 = document.getElementById("tab3");
				
         		 console.log(tab1.className);
         		 console.log(tab2.className);
         		 console.log(tab3.className);
         		switch(t){
         		case 't' : tab1.className = 'nav-link active'; tab2.className = 'nav-link'; tab3.className = 'nav-link'; break;
         		case 'p' : tab2.className = 'nav-link active'; tab1.className = 'nav-link'; tab3.className = 'nav-link'; break;
         		case 'l' : tab3.className = 'nav-link active'; tab1.className = 'nav-link'; tab2.className = 'nav-link'; break;
         		}
         	 }
         	 
         	 function changeValue(p){
         		 
         		 var allcheck = document.getElementById('allcheck');
         		 var list = document.getElementsByName('cheeringInfo');
         		 
         		 
         		 if(p.id == "allcheck"){
         			 
         			 if(allcheck.value == 0){
         				for(var i = 0; i < list.length; i++) {
							list[i].checked = true;
         				}
						allcheck.value = 1;
         				 
         			 } else {
						for(var i = 0; i < list.length; i++) {
							list[i].checked = false;
						}
						allcheck.value = 0;
         			 }
         		 } else {
					var cnt = 0;
					for(var i = 0; i < list.length; i++) {
						if(list[i].checked) {
							cnt++;
						}
					}
/* 						if(cnt == list.length) {
							allcheck.checked = true;
						} else {
							allcheck.checked = false;
						} */
				}
         	 }
         	 
         	 
         	 
			
         	/*  function check(p){
         		 var allcheck = document.getElementById('allcheck');
         		 var list = document.getElementsByName('cheeringInfo');
				console.log(allcheck);
				console.log(list);

				if(p.id == "allcheck"){
						
					if(allcheck.checked){
						for(var i = 0; i < list.length; i++) {
							list[i].checked = true;
						}
					} else {
						for(var i = 0; i < list.length; i++) {
							list[i].checked = false;
						}
					}

				} else {
					var cnt = 0;
					for(var i = 0; i < list.length; i++) {
						if(list[i].checked) {
							cnt++;
						}
					}
						if(cnt == list.length) {
							allcheck.checked = true;
						} else {
							allcheck.checked = false;
						}
				}
         	 } */
        </script>
        <script>
    		function drawColor(){
    			var documentUrl = document.URL; 
    			var NdocumentUrl = new URL(documentUrl);  
    			var currentTab = NdocumentUrl .searchParams.get("pc");  //url에 있는 name이란 파라미터값을 가지고옴
    			
    			console.log(currentTab);
    			const currentTabBar = document.getElementById(currentTab);
    			currentTabBar.style.background = '#ffe163';
    			currentTabBar.style.fontWeight = 'bolder';
    		}
    	</script>
    	<script>drawColor();</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>