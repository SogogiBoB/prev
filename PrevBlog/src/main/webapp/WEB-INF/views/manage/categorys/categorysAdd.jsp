<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
a {
text-decoration : none;
color: black;
}
*{
/* 	margin: 0;
	padding: 0; */
	font-family: "Noto+Sans+KR";
}
.cate{
	width: 300px;
	margin:100px auto 0 auto;
}
.pcateName{
	
}
h3{
	margin: 100px 0 50px ;
	font-weight: normal;
	font-size: 24px;
	text-align: center; 
}
.back{
	vertical-align: top;
	width:300px;
	margin:0 auto ;
}
.selectcate{
	padding-bottom: 10px;
}
.pcname{
	padding-bottom: 10px;
}
</style>
</head>
<body>

	<div class="cate">
	<h3>개인 카테고리 등록</h3>
		<form method="post">
			<div class="selectcate" >
				<select  name="cid" >
					<option value="" selected="selected">카테고리 선택</option>
					<c:forEach var="item" items="${list}">
						<option value="${item.cid}">${item.cname}</option>
					</c:forEach>
				</select>
			</div>
			<div class="pcname">
				<input type="text" name="pcname" placeholder="개인 카테고리명">
			</div>
			<button class="btn btn-primary btn-sm">등록</button>
		</form>
	</div>
	<div class="back">
		<a href="../../">처음으로</a>
	</div>
</body>
</html>