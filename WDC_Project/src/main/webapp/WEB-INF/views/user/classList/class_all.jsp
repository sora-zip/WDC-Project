<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

  <style>
    .w-100 {
        width: 255px;
        height: 230px;
    }

    .class-link {
      color:black;
    }

    .class-link:hover {
      color:black;
    }

    .btn-outline-dark:hover {
        color: black;
        background-color: #fef0ae !important;
        border-color: #fef0ae !important;
    }
    
/*     .bottom_badge{
        position: absolute;
        top: 15rem;
        right: 4.7rem;
        z-index: 999;
        font-size: 7px;
      }
    .bottom_badgeCheer{
        position: absolute;
        top: 15rem;
        right: 5.5rem;
        z-index: 999;
        font-size: 12.5px;
        background-color: #f8f9fa;
        color: black !important;
        height: 26px;
      } */
    
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
      <!-- Modal -->
      
	  <%@include file="../commons/search.jsp" %>

      <div class="container">
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <!-- SHOP SIDEBAR-->
              <div class="col-lg-3 order-2 order-lg-1">
                <h5 class="text-uppercase mb-4">Category</h5>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/all">전체보기</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/sports">스포츠</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/beauty">뷰티</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/art">미술 · 공예 · 공연전시</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/cook">요리 · 베이킹</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/computer">컴퓨터 · IT</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/language">언어 · 스피치</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/revenu">재태크 · 창업</a></strong></div>
                <br><br>
                
	 			<%@include file="../commons/searchCondition.jsp" %>
	
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row mb-3 align-items-center">
                  <div class="col-lg-6 mb-2 mb-lg-0">
                    <!-- <p class="text-small text-muted mb-0">Showing 1–12 of 53 results</p> -->
                  </div>
                  
                  <div class="col-lg-6">
                    <ul class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
                      <li class="list-inline-item">
                        <select class="selectpicker ml-auto" name="sorting" data-width="200" data-style="bs-select-form-control" data-title="정렬기준">
                          <option value="popularity">최신등록순</option>
                          <option value="popularity">인기순</option>
                          <option value="low-high">높은가격순</option>
                          <option value="high-low">낮은가격순</option>
                        </select>
                      </li>
                    </ul>
                  </div>
                </div>
                <div>
                <c:if test="${ !empty requestScope.searchContent }">
	                <c:if test="${ empty requestScope.allClassList }">
	               	<div style="font-size: 18px;">' ${ requestScope.searchContent} ' 검색 결과</div>
	               	<br><br><br><br><br><br>
	                <div style="margin-left: 235px; font-size: 18px; color: #6c757dcc;">&ouml; 해당 키워드에 대한 검색결과가  없습니다.<div>
	                <br><br><br><br>
                	</c:if>
                </c:if>
	            </div>
	            <c:if test="${ !empty requestScope.allClassList }">
             		<c:if test="${ !empty requestScope.searchContent }">
	                <div style="font-size: 18px;">' ${ requestScope.searchContent} ' 검색 결과</div>
	               	<br><br>
	               	</c:if>
                <div class="row">
                  <!-- PRODUCT-->
                  <c:forEach  var="classList" items="${ requestScope.allClassList }">
                  <c:set value="${i+1}" var="i"></c:set>
                  <!-- modal -->
	               <div class="modal fade" id="classPreview${i}" tabindex="-1" role="dialog" aria-hidden="true">
			        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
			          <div class="modal-content">
			            <div class="modal-body p-0">
			              <div class="row align-items-stretch">
			                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${ pageContext.servletContext.contextPath }/${ classList.titlePic })" href="${ pageContext.servletContext.contextPath }/${ classList.titlePic }" data-lightbox="productview" title="Red digital smartwatch"></a></div>
	 		                <div class="col-lg-6">
			                  <button class="close p-4 modal-btn" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			                  <div class="p-5 my-md-4">
			                  	<c:if test="${ classList.clsType eq 'O' }"><b>[ 원데이클래스 ]</b></c:if>
	                    		<c:if test="${ classList.clsType eq 'R' }"><b>[ 정규클래스 ]</b></c:if>
			                    <h2 class="h4">${ classList.title }</h2>
			                    <p class="text-muted"><fmt:formatNumber value="${ classList.price }" pattern="#,###"/> 원</p>
			                    <p class="text-small mb-4">${ classList.simpleIntro }</p>
			                    <br><br>
			                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">클래스 보기</a></div>
			                  </div>
			                </div>
			              </div>
			            </div>
			          </div>
			        </div>
			      </div>
                  <div class="col-lg-4 col-sm-6">
                    <div class="product text-center">
                     <c:choose>
                     <c:when test="${ classList.dicsionStatus eq 'F' }">
		              <c:if test="${classList.dDay ne '-' && cheerClassList.dDay ne '.'}">
		               <div class="badge text-white badge-danger">D - ${classList.dDay} </div>
		              </c:if>
		              <c:if test="${classList.dDay eq '-' || classList.dDay eq '.'}">
		               <div class="badge text-white badge-danger">D - DAY </div>
		              </c:if>
                     </c:when>
                     </c:choose>
                      <div class="mb-3 position-relative">
                        <div class="badge text-white badge-"></div>
                        <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
                        
                        <input type="hidden" value="${ classList.clsNo }" id="clsNo${i}">
                        <img class="img-fluid w-100" src="${pageContext.servletContext.contextPath }/${classList.titlePic}" alt="...">
                        </a>
                        <div class="product-overlay">
                          <c:choose>
                           <c:when test="${ classList.dicsionStatus eq 'S' }">
                          <ul class="mb-0 list-inline">
                          <c:if test="${ classList.likeStatus eq 'Y' }">
	                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" style="background-color:#fef0ae"><i class="fas fa-heart"  id="like${i}" style="color:#ff5e5e;"></i></a></li>
	                      </c:if>
	                      <c:if test="${ classList.likeStatus ne 'Y' }">
	                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i  id="like${i}" class="far fa-heart icon1"></i></a></li>
	                      </c:if>
                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview${i}" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                          </ul>
                           </c:when>
                           <c:when test="${ classList.dicsionStatus eq 'F' }">
                           <ul class="mb-0 list-inline">
                           <c:if test="${ classList.likeStatus eq 'Y' }">
	                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" style="background-color:#fef0ae"><i class="fas fa-heart" style="color:#ff5e5e;"></i></a></li>
	                       </c:if>
	                       <c:if test="${ classList.likeStatus ne 'Y' }">
	                      	<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="like${i}" href="#"><i class="far fa-heart icon1"></i></a></li>
	                       </c:if>
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="cheerUp${i}">응원하기</a></li>
                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview${i}" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                            </ul>
                           </c:when>
                          </c:choose>
                        </div>
                      </div>
                      <c:choose>
                      <c:when test="${ classList.dicsionStatus eq 'S' }">                      
                        <h6 style="margin-top: 15px;"> 
                        <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }" style="margin-top: -20px;">
                        <c:if test="${ classList.clsType eq 'O' }">
                        [원데이] ${classList.title}
                        </c:if>
                        <c:if test="${ classList.clsType eq 'R' }">
                        [정규] ${classList.title}
                        </c:if>
                        </a>
                        </h6>
                      </c:when>
                      <c:when test="${ classList.dicsionStatus eq 'F' }">
                        <h6 style="margin-top: 15px;">
                         <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
                        <c:if test="${ classList.clsType eq 'O' }">
                        [오픈예정][원데이] ${classList.title}
                        </c:if>
                        <c:if test="${ classList.clsType eq 'R' }">
                        [오픈예정][정규] ${classList.title}
                        </c:if>
                        </a>
                        </h6>
                      </c:when>
                      </c:choose>
                      <p class="small text-muted"><fmt:formatNumber value="${classList.price}" pattern="#,###"/> 원</p>
                    </div>
                  </div>
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
				
					//찜 스크립트
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
                
                <!-- PAGINATION-->
                <nav aria-label="Page navigation example">
                  <ul class="pagination justify-content-center justify-content-lg-end">
                    <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                  </ul>
                </nav>
                </c:if>
              </div>
            </div>
          </div>
        </section>
      </div>
      	<%@include file="../commons/footer.jsp" %>

    </div>
  </body>
</html>