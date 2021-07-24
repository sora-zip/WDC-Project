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
	    <style>
	    	.container-fluid {
	    		 margin-top: 30px;
	    	}
	    	
	    	.card-header {
	    		 font-size: x-large;
	    	}
	    	
	        th {
	            text-align: center !important;
	            border: 1px solid lightgrey !important;
	            width: 200px;
	            vertical-align: middle;
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
	        
	        #noticeContext {
	        	 height: 300px; 
	        	 overflow: auto;
	        }
	        
	        .submitBtn {
	        	 margin-left: 84%;
	        }
	        
	        .Btn {
	        	width: 100px; 
	        	background: #fef0ae; 
	        	border: 1px solid lightgrey;
	        }
	
	        .Btn:hover {
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
                                <i class="fas fa-table me-1"></i>공지사항 상세
                            </div>

                            <div class="card-body">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>공개&nbsp;&nbsp;대상</th>
                                            <td id="noticetype">
                                                <input type="radio" class="radioBtnType" id="A" onclick="return(false);">전체 회원용
                                                <input type="radio" class="radioBtnType" id="T" onclick="return(false);">강사 회원용
                                                <input type="radio" class="radioBtnType" id="C" onclick="return(false);">수강생 회원용
                                            </td>
                                        </tr>
                                        <tr>
	                                        <th>상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;태</th>
	                                        <td id="importantYN">
                                                <input type="radio" class="radioBtnCondition" id="N" onclick="return(false);">보통
                                                <input type="radio" class="radioBtnCondition" id="Y" onclick="return(false);">중요
	                                        </td>
	                                    </tr>
                                        <tr>
                                            <th>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
                                            <td>${ noticeDetail.noticeTitle }</td>
                                        </tr>
                                        <tr>
                                            <th>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
                                            <td id="noticeContext">${ noticeDetail.noticeContent }</td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="submitBtn">
                                    <input type="submit" class="Btn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeReWrite?currentMenu=notice&no=${ noticeDetail.noticeNo }'" value="수정하기">
                                	<input type="submit" class="Btn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeManagement?currentMenu=notice'" value="리스트보기">
                                </div>
                            </div>

                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script type="text/javascript">
       		const type = '${noticeDetail.noticeType}';
       		const important = '${noticeDetail.importantYN}';
       		
       		console.log("type : " + type);
       		console.log("important : " + important);
       		
       		if(type == 'A') {
       			const typeRadio = document.getElementById('A');
       			typeRadio.checked = true;
       		} else if(type == 'T'){
       			const typeRadio = document.getElementById('T');
       			typeRadio.checked = true;
       		} else if(type == 'C') {
       			const typeRadio = document.getElementById('C');
       			typeRadio.checked = true;
       		}
       		
       		if(important == 'N') {
       			const importantRadio = document.getElementById('N');
       			importantRadio.checked = true;
       		} else if(important == 'Y') {
       			const importantRadio = document.getElementById('Y');
       			importantRadio.checked = true;
       		}
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>

