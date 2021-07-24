<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <div class="modal fade" id="classView" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-body p-0">
              <div class="row align-items-stretch">
                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/class-sport.png)" href="img/class-sport.png" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
                <div class="col-lg-6">
                  <button class="close p-4" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                  <div class="p-5 my-md-4">
                    <ul class="list-inline mb-2">
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                    </ul>
                    <h2 class="h4">스포츠 클래스</h2>
                    <p class="text-muted">42,500 원</p>
                    <p class="text-small mb-4">
                      이런 분들을 위한 클래스예요<br>
                      내몸의 상태 점검이 필요한 분들<br>
                      어깨와 목이 항상 뻐근한 분들<br>
                      고관절, 골반통, 허리통증을 달고 사시는 분<br>
                      체중감량이 필요한 분, 몸에 탄력을 찾고 싶은 분들<br>
                    </p>
                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="detail.html">클래스 보기</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
	  <%@include file="../commons/search.jsp" %>
      <div class="container">
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <!-- SHOP SIDEBAR-->
              <div class="col-lg-3 order-2 order-lg-1">
                <h5 class="text-uppercase mb-4">Category</h5>                
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/all">전체보기</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/sports">스포츠</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/beauty">뷰티</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/art">미술 · 공예 · 공연전시</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/cook">요리 · 베이킹</a></strong></div>
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
                <div class="row">
                  <!-- PRODUCT-->
                <c:if test="${ empty requestScope.cookClassList }">
                <p style="margin-left: 100px; font-size: 30px;">&ouml; 해당 카테고리에 등록된 클래스가 없습니다.</p>
                </c:if>          
                  <c:forEach  var="classList" items="${ requestScope.cookClassList }">
                  <c:set value="${i+1}" var="i"></c:set>
                 
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
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                          </ul>
                           </c:when>
                           <c:when test="${ classList.dicsionStatus eq 'F' }">
                           <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" id="cheerUp${i}">응원하기</a></li>
                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                            </ul>
                           </c:when>
                          </c:choose>
                        </div>
                      </div>
                      <c:choose>
                      <c:when test="${ classList.dicsionStatus eq 'S' }">                      
                        <h6 style="margin-top: 15px;"> 
                         <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
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
				
				
			</script>
                  </c:forEach>

                  
                  
                  
                  </div>
                
                <!-- PAGINATION-->
              </div>
            </div>
          </div>
        </section>
      </div>
      	<%@include file="../commons/footer.jsp" %>
   </div>
  </body>
</html>