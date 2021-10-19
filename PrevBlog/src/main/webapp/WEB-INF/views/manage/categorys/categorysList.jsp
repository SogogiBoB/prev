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
h3{
	margin: 100px 0 50px ;
	font-weight: normal;
	font-size: 36px;
	text-align: center; 
}
.table-box{
	width: 400px;
	margin: 0 auto;
	
}
.bodyfoot{
	
	width:400px;
	margin: 10px auto;
	
}
.bodyfoot-a{
	text-align: right;
}
</style>
</head>
<body>
	<div>
		<h3>개인 카테고리 관리</h3>
		<div>
			<table class="table table-striped table-box" border="1">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">카테고리명</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="4">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.pcid}</td>
							<td>${item.pcname}</td>
							<td><a href="manageCategorys/delete?pcid=${item.pcid}" class="btn btn-secondary btn-sm">삭제</a> <a href="manageCategorys/update?pcid=${item.pcid}" class="btn btn-outline-danger btn-sm">변경</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<div class="bodyfoot">
					<a  class="bodyfoot-a btn btn-primary btn-sm" href="manageCategorys/add">등록</a>
					<a  class="bodyfoot-a btn btn-link btn-sm" href="./">이전</a>
				</div>	
		</div>
		
	</div>
</body>
</html>