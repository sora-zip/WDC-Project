<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    		#navbar-brand {
    			width: 180px;
    		}
    		
    		ul {
    			 padding: 20px 0px 0px 1260px;
    			 margin-left: 82%
    		}
    		
    		#navbarDropdown {
    			 height: 35px; 
    		}
    		
    		#logoutIcon1 {
    			 width: 30px; 
    			 height: 26px;
    		}
    	</style>
    </head>
<body>
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
       <!-- Navbar Brand-->
       <a class="navbar-brand ps-3" id="navbar-brand" href="${ pageContext.servletContext.contextPath }/user/admin">우리동네 클래스</a>
       <!-- Sidebar Toggle-->
       <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
       <!-- Navbar-->
       <ul>
           <button class="sb-nav-link-icon" id="navbarDropdown" onclick="logoutCheck()" type="button">
               <img src="${ pageContext.servletContext.contextPath }/resources/admin/img/log-in.png" id="logoutIcon1">
           </button>
       </ul>
		      <script>
                  function logoutCheck(){
                	  if(confirm("로그아웃 하시겠습니까?")){
                		  location.href = "${pageContext.servletContext.contextPath }/admin/logout";
                	  } else {
                		  location.href = "#";
                	  }
                  }
              </script>       
   </nav>
</body>
</html>