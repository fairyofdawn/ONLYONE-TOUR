<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<style>
.container{
	margin-top : 525px;
	
	position: relative;
	left: 30%;
	top: 50%;
	transform:translate(-50%,-50%);
	padding: 10px;
} 

.noticeText{
	position: relative;
	float:left;
	
}

input{
	
	border-top:0px;
	border-left: 0px;
	border-right: 0px;
	
}

.selectBox{
	width: 150px; 
	padding: .3em .3em; 
	border: 1px solid #999;
	font-family: inherit;  
	background: url('./resources/image_service/source/selectArrow.png') no-repeat 95% 50%; 
	border-radius: 2px; 
	-webkit-appearance: none; 
	-moz-appearance: none;
	appearance: none;
}
	

</style>


<body>
	<%@include file="admin/adminInclude/admin_top.jsp" %>

	<%@include file="admin/adminInclude/admin_aside.jsp" %>
	
	
	<div class="container" >
		<c:set var="dto" value="${Cont }" />
		<h4 class="noticeText"> 공지사항</h4>
		
		<form method="post" 
			action="<%=request.getContextPath() %>/admin_notice_modifyOk.do">
			
			<input type="hidden" name="n_num" value="${dto.n_num }">
			<input type="hidden" name="page" value="${Page }">
			
			<table class="table" style="table-layout: fixed">
				<tr>
					<th class="col-md-2">번호</th>
					<td><input name="n_num" value="${dto.n_num }" readonly="readonly" style="border-bottom: 0px"></td>
				</tr>
				
				<tr>
					<th>작성자</th>
					<td><input name="n_name" value="${dto.n_name }" readonly="readonly" style="border-bottom: 0px"></td>
				</tr>
				
				<tr>
					<th>공개여부</th>
					<td>
						<select name="n_oc" class="selectBox">
							<option value="공개">공개</option>
							<option value="비공개">비공개</option>
						</select>
					</td>
				</tr>
				
				
				<tr>
					<th>제목</th>
					<td><input name="n_title" value="${dto.n_title }" ></td>	
				</tr>
				
				<tr>
					<th>내용</th>
					<td><textarea rows="20" cols="100" name="n_cont" >${dto.n_cont }</textarea></td>
				</tr>
				
				<tr>
					<th>작성일</th>
					<td>${dto.n_date }</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<a class="btn float-right ">
						<input type="submit" value="작성완료"  class="btn btn-success btn-block">
						</a>
						<a class="btn float-right ">
						<input type="button" value="목록으로"  class="btn btn-outline-success btn-block"
							onclick="location.href='notice_list.do?page=${Page }'">
					 	</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>