<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
 	<%@include file="../commons/header.jsp" %>

    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>
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

i{
        font-family: "Font Awesome 5 Free" !important;
      }

*{font-family:'Cafe24SsurroundAir' !important;}

.bg-light1 {
  background-color: #f8f9fa !important;
}
a:hover{
  color: #ffc107 !important;
}
.table {
    font-size: 15px;
}

.text-small {
    font-size: 15px !important;
}

.mb-4, .my-4 {
    margin-bottom: 0.5rem!important;
}

p {
    margin-top: 0;
    margin-bottom: 0.5rem;
}

h5, .h5 {
    font-size: 18px;
    margin-bottom: 1.2rem;
}
    </style>
  </head>
  <body>
<!-- 현재 시간  -->
<%Timestamp now = new Timestamp(System.currentTimeMillis());

SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd");

String strDate = formats.format(now); %>
<c:set value="<%=strDate %>" var="cDate"></c:set>
				
    <div class="page-holder">
      <!-- navbar-->
	<%@include file="../commons/header2.jsp" %>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light1">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">환불</h1>
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0">
                    <li class="breadcrumb-item"><a href="mypageScheduledClass.html">돌아가기</a></li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <div class="row">
            <div class="col-lg-8 mb-4 mb-lg-0">
              <!-- CART TABLE-->
              <div class="table-responsive mb-4">
                <table class="table">
                  <thead class="bg-light">
                    <tr>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">신청한 강의</strong></th>
                      <th class="border-0" scope="col">&emsp;&emsp; 인원</th>
                      <th class="border-0" scope="col">&emsp;&emsp; 강사명 </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th class="pl-0 border-0" scope="row">
                        <div class="media align-items-center"><a class="reset-anchor d-block animsition-link" href="detail.html"><img src="${pageContext.servletContext.contextPath }/${ userClassDTO.titlePic}" alt="..." width="70" height="60px" style="border-radius: 5px;"/></a>
                          <div class="media-body ml-3"><strong class="h6"><a class="reset-anchor animsition-link" href="detail.html">${ requestScope.userClassDTO.title }</a></strong></div>
                        </div>
                      </th>
                      <td class="align-middle border-0">
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas"></i></button>
                            <input class="border-0 shadow-0 p-0" type="text" value="${ requestScope.userClassDTO.ppl}"/> 명
                            <button class="inc-btn p-0"><i class="fas"></i></button>
                          </div>
                      </td>
                       <td class="align-middle border-0">
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas"></i></button>
                            <input style="width: 70px;" class="border-0 shadow-0 p-0" type="text" value="${ requestScope.userClassDTO.teName}"/> 
                            <button class="inc-btn p-0"><i class="fas"></i></button>
                          </div>
                      </td>
                  </tbody>
                </table>
                <div class="table-responsive mb-4">
                  <table class="table">
                    <tbody>
                    <c:choose>
					<c:when test="${ requestScope.userClassDTO.clsType eq 'O'}">
                      <tr>
                        <th class="pl-0 border-0" scope="row" style="width: 140px;">
                          &nbsp;&nbsp;&nbsp;&nbsp;신청 강의 날짜
                        </th>
                        <td style="border-top: 0px !important">
                          <input type="text" style="width: 250px;" id="name" class="refunderInfo" value="${ requestScope.userClassDTO.scheduleDate }" disabled>
                        </td>
                      </tr>
                      <tr>
                        <th class="pl-0 border-0" scope="row">
                          &nbsp;&nbsp;&nbsp;&nbsp;신청 강의 시간
                        </th>
                        <td style="border-top: 0px !important">
                          <input type="text" style="width: 250px;" id="phone" class="refunderInfo" value="${ requestScope.userClassDTO.scheduleStart}" disabled>
                        </td>
                      </tr>
					</c:when>     
					<c:when test="${ requestScope.userClassDTO.clsType eq 'R'}">
					   <tr>
                        <th class="pl-0 border-0" scope="row" style="width: 140px;">
                          &nbsp;&nbsp;&nbsp;&nbsp;신청 강의 날짜
                        </th>
                        <td style="border-top: 0px !important">
                          <input type="text" style="width: 250px;" id="name" class="refunderInfo" value="${ requestScope.userClassDTO.startDate} ~ ${ requestScope.userClassDTO.endDate}" disabled>
                        </td>
                      </tr>
                      <tr>
                        <tr>
                        <th class="pl-0 border-0" scope="row">
                          &nbsp;&nbsp;&nbsp;&nbsp;신청 강의 시간
                        </th>
                        <td style="border-top: 0px !important">
                          <input type="text" style="width: 250px;" id="phone" class="refunderInfo" value="${ requestScope.userClassDTO.scheduleStart}" disabled>
                        </td>
                      </tr>
					</c:when>   
                    </c:choose>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- 신청자 정보-->
              <form action="${pageContext.servletContext.contextPath}/user/refundInsert" method="post">
              <table class="table">
                <thead class="bg-light">
                  <tr>
                    <th class="border-0" scope="col"> <strong class="text-small text-uppercase">신청자 정보</strong></th>
                    <th class="border-0" scope="col"> </th>
                    <th class="border-0" scope="col"> </th>
                    <th class="border-0" scope="col"> </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="pl-0 border-0" scope="row" style="width: 140px;">
                      &nbsp;&nbsp;&nbsp;&nbsp;이름
                    </th>
                    <td style="border-top: 0px !important">
                      <input type="text" placeholder="신청자 이름을 입력해 주세요" style="width: 250px;" id="name" class="refunderInfo" value="${ userDTO.userName }" disabled>                      
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;휴대폰번호
                    </th>
                    <td style="border-top: 0px !important">
                      <input type="text" placeholder="휴대폰 번호를 입력해 주세요" style="width: 250px;" id="phone" class="refunderInfo" value="${ userDTO.phone }" disabled>
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;입금 은행
                    </th>
                    <td style="border-top: 0px !important">
                      <select style="width: 200px;" required="required" name="bank">
                        <option>농협은행</option>
                        <option>국민은행</option>
                        <option>기업은행</option>
                        <option>우리은행</option>
                        <option>신한은행</option>
                        <option>카카오뱅크</option>
                      </select>
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;환불 계좌
                    </th>
                    <td style="border-top: 0px !important">
                      <input name="refundAccount" type="text" placeholder="계좌 번호를 입력해 주세요" style="width: 250px;" id="account" class="refunderInfo" required="required">
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;예금주
                    </th>
                    <td style="border-top: 0px !important">
                      <input name="accountHolder" type="text"  style="width: 250px;" id="phone" class="refunderInfo" value="${ userDTO.userName }" disabled>
                    <p style="margin-top: 4px !important; color: gray;">* 예금주는 신청자와 동일해야합니다.</p>
                    </td>
                  </tr>
                </tbody>
              </table>
              <br>
              <!--강의 진행 상태-->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><b>강의 진행 상태</b>
                </div>
                <c:choose>
                	<c:when test="${ requestScope.userClassDTO.clsType eq 'R'}">
                		<c:if test="${ requestScope.userClassDTO.startDate < cDate}">
                		<div style="margin-left: 20px;"> <input type="text" disabled style="border: 1px solid black; border-radius: 5px; width: 150px;" value="강의 진행중" class="refunderInfo"></div>
                		</c:if>
                	</c:when>
                	<c:otherwise>
                		<div style="margin-left: 20px;"> <input type="text" disabled style="border: 1px solid black; border-radius: 5px; width: 150px;" value="강의 진행 전" class="refunderInfo"></div>                	
                	</c:otherwise>
                </c:choose>
			  </div>
              </div>
              <br>
              <!-- 취소 사유 선택 -->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><b>취소 사유 선택</b>
                </div>
                <div style="margin-left: 20px;"></div>
                </div>
              </div>
              <div class="refundBackground"><input id="cancelReason1" onclick="death();" type="radio" value="개인 일정" name="cancelReason" class="refundReasonInput"> 개인 일정</div>
              <br>
              <div class="refundBackground"><input id="cancelReason2" onclick="death();" type="radio" value="작가와의 일정 협의 실패" name="cancelReason" class="refundReasonInput"> 작가와의 일정 협의 실패</div>
              <br>
              <div class="refundBackground"><input id="cancelReason3" onclick="death();" type="radio" value="작가와 연락이 안됨" name="cancelReason" class="refundReasonInput"> 작가와 연락이 안됨</div>
              <br>
              <div class="refundBackground"><input id="cancelReason4" onclick="death();" type="radio" value="다른 클래스 구매 위해" name="cancelReason" class="refundReasonInput"> 다른 클래스 구매 위해</div>
              <br>
              <div class="refundBackground"><input id="cancelReason5" onclick="death();" type="radio" value="작가님의 요청" name="cancelReason" class="refundReasonInput"> 작가님의 요청</div>
              <br>
              <div class="refundBackground"><input type="radio"  value="기타" name="cancelReason" class="refundReasonInput" onclick="phinex();"> 기타</div>
              <br>
              <textarea name="cancelReasonDetail" id="guitar" disabled="disabled"
              style="resize: none; width: 620px; height: 100px;  margin-left: 20px;  margin-top:5px; border-radius: 5px;" placeholder="기타 사유를 작성해 주세요"></textarea>
              <br><br>
              <script>
      	       function death() {
      	    	 $('#guitar').attr("disabled",true);
      	    	 $('#guitar').val("");
				}
              
               function phinex() {
            	  $('#guitar').removeAttr('disabled');       	       
      	       
            	 }
              </script>
              <!-- 약관 동의 -->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><b>환불 약관</b></div>
                </div>
              </div>
              <textarea style="width: 730px; height: 230px; margin-top: 10px; font-size: 12px">
                - **강좌 공통 안내**
                - 모든 상품은 정해진 수강기간 동안 신청하신 강좌를 반복하여 수강할 수 있습니다.
                - 수강기간이 종료 전 연장 상품, 종료된 후 재수강 상품을 구매할 수 있습니다 (일부상품 제외).
                - OS(윈도우,맥,리눅스)에 관계 없이 크롬브라우저에서 인강수강이 가능합니다.
                - 모바일 기기는 고객센터 > FAQ에 명시된 지원 기기일 때 정상 이용 가능합니다.
                - **일반강좌 구매 안내**
                - 일반 강좌(단과 강좌)는 결제일로부터 7일 이후에 자동 시작됩니다. (시작일 선택시 7일 이전 수강 가능)
                - **프리패스 및 패키지 상품 구매 안내 (프리패스, BIG3 등)**
                - 프리패스 및 패키지 상품은 아래 기기정보 수집 동의 시에 구매 가능합니다.
                - 프리패스 상품은 휴강 서비스가 지원되지 않습니다.
                - (자단기 프리패스 및 패키지 상품은 휴강 서비스가 지원되지 않습니다.)
                - **교재 구매 안내**
                - 해외 및 군부대 교재 배송 서비스는 제공되지 않습니다.
                - 프리패스(BIG3 포함) 구매 시 교재비는 별도이며 프리패스 구매 후 구매할 수 있습니다.
                - **캐시 결제 안내**
                - 캐시 결제는 각 상품별로 적용해 결제가 가능합니다.
                - 교재, 배송비, BIG3, 태블릿PC 결합상품,단기탭몰 상품은 캐시 사용이 불가합니다.
                - 단기학교에 따라 캐시 결제는 제한 될 수 있습니다.
                - 학원프리패스, 스펙업프리패스 등 전체 학원 강좌는 한도 5만원까지 캐시사용이 가능합니다.
                - **할인권(쿠폰) 이용 안내**
                - 쿠폰을 지급 받은 단기학교 상품에만 적용이 가능합니다.
                - 쿠폰을 적용한 상품 환불 및 취소 시 쿠폰은 반환되지 않습니다.
                - 쿠폰은 유효기간내에만 이용이 가능합니다.
                - **환불안내**
                - 프리패스 상품은 결제일로부터 7일 이내 2강 이하로 수강했을 경우 전액 환불 신청이 가능합니다.
                - (한 ID 당 전액환불은 동일한 상품에 한하여 1회만 가능합니다.)
                - 단과강좌 상품은 실제 수강한 강좌 수를 공제하여 환불 금액이 책정됩니다.
                - 온라인 교재는 배송 완료 후 10일 이내(사용한 흔적이 없는 경우, 랩핑이 제거되지 않은 상태)에 환불 신청이 가능합니다.
                - 테블릿PC 등 지급기기가 포함된 상품 환불 시 환불 금액은 지급기기 금액과 수강한 강좌의 정가가 차감됩니다.
                - **학원 강좌 구매 안내**
                - 학원강좌 환불사유 발생 시, 수강 이전에는 수강료 전액이 환불되며 수강 이후에는 경과 기간에 따라 부분환불이 가능합니다.
                - **미성년자 고객 고지사항**
                - 전자상거래 등에서의 소비자보호에 관한 법률 제 13조 제 3항에 따라 미성년자 고객의 계약에 대해 안내드립니다.
                - 미성년자의 법정대리인이 본 구매 계약에 대하여 동의를 하지 아니하면 미성년자 본인 또는 법정대리인이 그 계약을 취소할 수 있습니다.
                - 법정대리인의 동의 없이 진행된 계약에 대해 취소를 원하는 경우에는 당사 고객센터 혹은 1:1 게시판으로 연락하시기 바랍니다.
              </textarea>
              <div class="bg-light px-4 py-3">
                <div class="col-md-6 text-md-right" style="margin-left: 350px;">
                  <input type="checkbox" id="checkagree">&nbsp;&nbsp;약관에 동의합니다.
                </div>            
              </div>
          </div>
          
            <!-- ORDER TOTAL-->
            <div class="col-lg-4">
                <div class="card border-0 rounded-0 p-lg-4 bg-light">
                  <div class="card-body">
                    <h5 class="text-uppercase mb-4">총 환불 금액</h5>
                    <ul class="list-unstyled mb-0">
                      <li class="d-flex align-items-center justify-content-between"><strong class="text-uppercase small font-weight-bold">결제 금액</strong>
                      <span class="text-muted small"><fmt:formatNumber value="${ requestScope.userClassDTO.payPrice }" pattern="#,###"/> 원</span></li>
                      <!-- <li class="d-flex align-items-center justify-content-between"><strong class="text-uppercase small font-weight-bold" style="margin-top: 10px;">강의 진행도에 따른 수수료</strong><span class="text-muted small" style="margin-top: 10px;">- 5000 원</span></li> -->
                      <li class="border-bottom my-2"></li>
                      <c:if test="${ requestScope.userClassDTO.clsType eq 'O'}">
                      <li class="d-flex align-items-center justify-content-between mb-4">
                      <strong class="text-uppercase small font-weight-bold">총 환불금액</strong>
                      <span><fmt:formatNumber value="${ requestScope.userClassDTO.payPrice }" pattern="#,###"/> 원</span>
                      <input type="hidden" value="${ requestScope.userClassDTO.payPrice }" name="refundAmount">
                      </li>
                      </c:if>
                      <c:if test="${ requestScope.userClassDTO.clsType eq 'R' && requestScope.userClassDTO.startDate >= cDate }">
                      <li class="d-flex align-items-center justify-content-between mb-4">
                      <strong class="text-uppercase small font-weight-bold">총 환불금액</strong>
                      <span><fmt:formatNumber value="${ requestScope.userClassDTO.payPrice }" pattern="#,###"/> 원</span>
                      <input type="hidden" value="${ requestScope.userClassDTO.payPrice }" name="refundAmount">
                      </li>
                      </c:if>
                      <c:if test="${ requestScope.userClassDTO.clsType eq 'R' && requestScope.userClassDTO.startDate < cDate }">
                      <li class="d-flex align-items-center justify-content-between mb-4">
                      <strong class="text-uppercase small font-weight-bold"></strong>
                      <span><fmt:formatNumber value="${ requestScope.userRefundDTO.refundAmount }" pattern="#,###"/> 원</span>
                      <input type="hidden" value="${ requestScope.userRefundDTO.refundAmount}" name="refundAmount">
                      </li>
                      </c:if>
                      <li>
                          <div class="form-group mb-0">
                          <br>
                            <input type="hidden" value="${ requestScope.userClassDTO.payNo}" name="payNo">
                            <input type="hidden" value="${ requestScope.userClassDTO.payPrice}" name="payPrice">
                            <input type="hidden" value="${ requestScope.userClassDTO.clsType}" name="clsType">
                            <input type="hidden" value="${ requestScope.userClassDTO.aplNo }" name="aplNo">
                            <button class="btn btn-dark btn-sm btn-block" onclick="checkContent();" data-toggle="modal" type="button"><b>환불 신청하기</b></button>
                          </div>
                      </li>
                    </ul>
                  </div>
                </div>
            </div>
          </div>
        </section>
      </div>
</div>
<!-- 결제 팝업 -->

  <div id="pop01" class="overlay">
    <div class="popup">
                <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                  <div class="modal-content">
                    <div class="modal-body p-0">
                      <div class="row align-items-stretch">
                        <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${pageContext.servletContext.contextPath }/${ userClassDTO.titlePic})" 
                        href="${pageContext.servletContext.contextPath }/${ userClassDTO.titlePic}" data-lightbox="productview" title="${ userClassDTO.title}"></a></div>
                        <div class="col-lg-6">
                          <button class="close p-4" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><a href="#none" class="close">x</a></span></button>
                          <div class="p-5 my-md-4">
                            <h2 class="h5"> ${ userClassDTO.title }</h2>
                            <h2 class="h5">강사 : ${ userClassDTO.teName }</h2>
                            <p class="text-small mb-4">
                            <c:if test="${ userClassDTO.clsType eq 'R'}">
                                <p class="text-muted">강의 날짜 : ${ userClassDTO.startDate } ~ ${ userClassDTO.endDate }</p>
                            </c:if>
                            <c:if test="${ userClassDTO.clsType eq 'O'}">
                                <p class="text-muted">강의 날짜 : ${ userClassDTO.scheduleDate }</p>
                            </c:if>
                                <p class="text-muted">강의 시작 시간 : ${ userClassDTO.scheduleStart }</p>
                                <p class="text-muted">강의 시간 : ${ userClassDTO.time }</p>                                
                                <p class="text-muted">신청 인원 : ${ userClassDTO.ppl } 명</p>
                            <c:choose>
                            	<c:when test="${ requestScope.userClassDTO.clsType eq 'R' && requestScope.userClassDTO.startDate < cDate }">
                                <p class="text-muted">환불 금액 : <fmt:formatNumber value="${ requestScope.userRefundDTO.refundAmount }" pattern="#,###"/> 원</span>
                            	</c:when>
                            	<c:otherwise>
                                <p class="text-muted">환불 금액 : <fmt:formatNumber value="${ requestScope.userClassDTO.payPrice }" pattern="#,###"/> 원</p>                            	
                            	</c:otherwise>
                            </c:choose>
                            </p>
                            <hr>
                            <ul style="font-size: 15px;">
								<li style="margin-left: -30px;">환불 신청시 취소 할 수 없습니다. 신중히 결정해 주세요</li>
								<li style="margin-left: -30px;">영업일 기준 1~7일 후 취소 금액 확인 가능합니다.</li>
								<li style="margin-left: -30px;">정규 클래스 취소 시 환불 규정을 상세히 읽어주세요. 강의 진행이 1/2 이상인 경우에 환불금액은 0원이며, 취소 신청 시 취소 해제 불가능합니다.</li>
							</ul>
                            <hr>
                            <div>
								<button onclick="location.href='#none';" class="btn btn-dark" style="background-color: lightgray; border: lightgray; margin-left: 50px;"></a>취소</button>
								<button id = "doPay"type = "submit" class="btn btn-dark" style="margin-left: 50px;" onclick=paymentSuccess();>환불하기</button>
								</form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
    </div>
</div>
            <!-- 결제 스크립트 -->
     <script>
         function checkContent(){
        	 var account = document.getElementById("account").value;
         	 if(account == "" || account == " "){
        		 alert("계좌번호를 입력해 주세요")
        		 return;
        	 }
        	 
             var check = document.getElementById("checkagree").checked;

    		        
     	     if(check == false){
    		 	alert("환불 약관에 동의하셔야 환불 신청 가능합니다.");
    		 	return;
    		 }   
    	     
    	     var checkReason = document.getElementById("guitar").value;
    		 
     	     var checkReason1 = document.getElementById("cancelReason1").checked;
     	     var checkReason2 = document.getElementById("cancelReason2").checked;
     	     var checkReason3 = document.getElementById("cancelReason3").checked;
     	     var checkReason4 = document.getElementById("cancelReason4").checked;
     	     var checkReason5 = document.getElementById("cancelReason5").checked;
     	     
     	     if(checkReason1 == false && checkReason2 == false && checkReason3 == false && checkReason4 == false && checkReason5 == false && checkReason == false && checkReason == ""){
     	    	 
     		 	alert("환불 사유를 선택하거나 작성해주세요");
    		 	return;
    	     }
     	     
             if (confirm('정말 환불 하시겠습니까? ')) {
    			location.href='#pop01';
                 // Yes click
            } else {
                return;
 		    }
    	     
        }
         
 		function paymentSuccess(){
			alert("환불 신청 되었습니다.");
		}


    </script>

    <%@include file="../commons/footer.jsp" %>
	</div>
  </body>
</html>