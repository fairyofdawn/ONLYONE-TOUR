<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	<meta charset="UTF-8">
	<title>온리원투어</title>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/travel_list.css">

	<style type="text/css">
   	  html, body {
        position: relative;
        height: 80%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }
	
	.input {
		width: 80%;
		height: 50px;
		margin: 10px;
		padding: 10px;
		border: 0;
		border-radius: 5px;
		background-color: #eee;
	}
	
	.redbtn {
		width: 15%;
		height: 50px;
	    border-radius: 8px 0 8px 8px;
	    background: #ee006b;
	    color: #fff !important;
	    border: none;
	}
	</style>
	
	<!-- bootstrap css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
	
</head>
<body>
	<c:set var="hotelList" value="${List }" />
	<c:set var="keyword" value="${Keyword }" />

	<jsp:include page="include/top.jsp" />

	<div class="container">
		
	    <div class="row" style="height: 100%; width: 100%;">
	        <div class="col-xs-12">
	        	
	        </div>
	    </div>
	    <br><br><br><br>

	    
	    <div class="row">
	    	<h5><b>'${keyword }' 검색 결과</b>&nbsp;&nbsp;&nbsp;</h5>
	    	
	    	<br><br>
	        <c:if test="${!empty hotelList }">
				<c:forEach items="${hotelList }" var="dto">
			        <div class="col-md-3" style="height: 350px;">
			        	<a href="<%=request.getContextPath() %>/hotel_cont.do?num=${dto.getHotel_num()}">
			        		<img src="<%=request.getContextPath() %>/resources/image_hotel/${dto.getHotel_image() }"
										width="300" height="200" style="margin-bottom: 10px;">
							<br>
							<span style="font-size: 16px;"><b>${dto.getHotel_hname()}...</b></span>
							<br>
							<span style="font-size: 13px;">${dto.getHotel_ename()}...</span>
							<br>
							<span style="font-size: 20px;"><b><fmt:formatNumber value="${dto.getHotel_price1() }" /></b></span>
							<span style="font-size: 16px;">원~</span>
						</a>
			        </div>
			    </c:forEach>
			</c:if>
			
			<c:if test="${empty hotelList }">
				<br>
				<span style="font-size: 25px; text-align: center;">검색 결과가 없습니다.</span>
			</c:if>
	        <br>
	        
	    </div>
	</div>
	<br>
	
	<jsp:include page="include/footer.jsp" />
	

</body>
</html>