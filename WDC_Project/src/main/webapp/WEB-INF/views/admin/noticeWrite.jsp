<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>우리동네 클래스</title>
        <!-- Favicon-->
    	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <!-- include libraries(jQuery, bootstrap) -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <!-- summernote-lite -->
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/summernote/summernote-lite.js"></script>
		<script src="${ pageContext.servletContext.contextPath }/resources/admin/js/summernote/lang/summernote-ko-KR.js"></script>
		<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/admin/css/summernote/summernote-lite.css">
	    <style>
	    	.container-fluid{
	        	margin-top: 30px;
	        }
	        	
	        .card-header {
	        	font-size: x-large;
	        }
	    
	        th {
	            text-align: center !important;
	            border: 1px solid lightgrey !important;
	            width: 150px;
	            vertical-align: middle !important;
	            background: #fef0ae !important;
	        }
	    
	        td {
	            border: 1px solid lightgrey !important;
	        }
	        
	        .radioBtnType {
	        	margin-left: 17%; 
	        	margin-right: 10px;
	        }
	        
	        .radioBtnCondition {
	        	margin-left: 28%; 
	        	margin-right: 10px;
	        }
	        
	        #titleArea {
	        	width: 1225px;
	        	border: none;
	        }
	        
	        #contextArea {
	        	background: #fef0ae !important;
	        	text-align: center !important;
	        	font-weight: bolder;
    			font-size: large;
	        }
	        
	        .noticeBtnArea {
	        	margin-left: 84%;
	        }
	        
	        .noticeBtn {
	        	width: 100px; 
	        	background: #fef0ae; 
	        	border: 1px solid lightgrey;
	        }
	
	        .noticeBtn:hover {
	            background: rgb(112, 112, 112);
	        }
	    </style>
    </head>
    <body class="sb-nav-fixed">
    
    	<!-- header -->
		<%@ include file="commons/header.jsp" %>
    
        <div id="layoutSidenav">
        
        	<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>
        
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <div class="card mb-4">

                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>공지사항 작성
                            </div>

							<form id="area" method="POST" action="/wdc/admin/noticeWrite">
	                            <div class="card-body">
	                                <table class="table">
		                                    <tbody>
		                                        <tr>
		                                            <th>공개&nbsp;&nbsp;대상</th>
		                                            <td>
		                                                <input type="radio" name="noticeType" value="A" class="radioBtnType"checked>전체 회원용
		                                                <input type="radio" name="noticeType" value="T" class="radioBtnType">강사 회원용
		                                                <input type="radio" name="noticeType" value="C" class="radioBtnType">일반 회원용
		                                            </td>
		                                        </tr>
		                                        <tr>
		                                            <th>상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;태</th>
		                                            <td>
		                                                <input type="radio" name="importantYN" value="N" class="radioBtnCondition"checked>보통
		                                                <input type="radio" name="importantYN" value="Y" class="radioBtnCondition">중요
		                                            </td>
		                                        </tr>
		                                        <tr>
		                                            <th>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
		                                            <td>
		                                                <input type="text" name="noticeTitle" id="titleArea" placeholder="공지사항의 제목을 입력하세요." required>
		                                            </td>
		                                        </tr>
		                                        <tr>
		                                            <td id="contextArea" colspan="2">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</td>
		                                        </tr>
		                                        <tr>
		                                        	<td colspan="2">
		  												<textarea id="summernote" name="noticeContent" required ></textarea>
		                                            </td>
		                                        </tr>
		                                    </tbody>
	                                    
	                                </table>     
	                
	                                <div class="noticeBtnArea">
	                                    <input type="submit" id="btnNotice" class="noticeBtn" value="등록하기">
	                                    <input type="button" class="noticeBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeManagement?currentMenu=notice'" value="리스트보기">
	                                </div>
	
	                            </div>
							</form>
                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
        <script>
            $('#summernote').summernote({
              placeholder: '공지사항을 입력하세요.',
              lang: "ko-KR",
              height: 350,
            });
          </script>  
    </body>
</html>

