<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

      <!-- 검색 -->
      <div class="container h-100">
      <form action="${ pageContext.servletContext.contextPath }/user/category/all" method="get">
        <div class="d-flex justify-content-center h-100">
          <div class="searchbar">
            <input class="search_input" type="text" name="searchContent" id="searchContent" placeholder="우리 동네 클래스를 검색해보세요!" style="margin-top: 0px !important;">
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