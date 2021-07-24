<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    		  <h6 class="text-uppercase mb-4">Price range</h6>
    		
               <div class="price-range pt-4 mb-5" style="margin-top: -12%;">
                 <form action="${ pageContext.servletContext.contextPath }/user/category/all" method="get">
                 <input placeholder="최소가격" name="minPrice">
                 <br>
                 ~
                 <br>
                 <input placeholder="최대가격" name="maxPrice">
                 <button type="submit" class="btn btn-dark" style="margin-top: 10px;" >검색</button>
				 </form>
                </div>
                <br>
                <h6 class="text-uppercase mb-3">Show Only</h6>
                
                <div class="custom-control custom-checkbox mb-1">
                  <input class="custom-control-input" id="customCheck1" type="checkbox" style="display: none;">
                  
 			 	  <form action="${ pageContext.servletContext.contextPath }/user/category/all" method="get">
                  <input name="searchCheckBox" value="proceeding" type="hidden">
                  <button class="custom-control-input" id="customCheck1btn" type="submit" ></button>
                  <script>
                  	$('#customCheck1btn').click(function(){
                  		$('#customCheck1').attr("checked", true);
                  	});
                  </script> 
                  </form>
                  <label class="custom-control-label text-small" for="customCheck1btn">진행 중인 클래스</label>
                </div>
                
                <div class="custom-control custom-checkbox mb-1">
                  <input class="custom-control-input" id="customCheck2" type="checkbox" style="display: none;">
 			 	  <form action="${ pageContext.servletContext.contextPath }/user/category/all" method="get">
                  <input name="searchCheckBox" value="scheduledToOpen" type="hidden">
                  <button class="custom-control-input" id="customCheck2btn" type="submit" ></button>
                  <script>
                  	$('#customCheck2btn').click(function(){
                  		$('#customCheck2').attr("checked", true);
                  	});
                  </script> 
                  </form>
                  <label class="custom-control-label text-small" for="customCheck2btn">오픈 예정 클래스</label>
                </div>
                
                <div class="custom-control custom-checkbox mb-1">
                  <input class="custom-control-input" id="customCheck3" type="checkbox" style="display: none;">
 			 	  <form action="${ pageContext.servletContext.contextPath }/user/category/all" method="get">
                  <input name="searchCheckBox" value="endClass" type="hidden">
                  <button class="custom-control-input" id="customCheck3btn" type="submit" ></button>
                  <script>
                  	$('#customCheck3btn').click(function(){
                  		$('#customCheck3').attr("checked", true);
                  	});
                  </script> 
                  </form>
                  <label class="custom-control-label text-small" for="customCheck3btn">마감된 클래스</label>
                </div>
              </div>