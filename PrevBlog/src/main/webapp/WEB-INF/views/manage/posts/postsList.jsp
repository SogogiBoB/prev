<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
h3 {
	font-family: "Noto+Sans+KR";
	padding-top: 40px;
}
</style>
</head>
<body>`
	<div class="container-fluid">
		<h3>글관리</h3>
		<div>
			<table class="table table-hover" border="1">
				<thead>
					<tr class="table-light">
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>id</th>
						<th>카테고리명</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="7">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.pid}</td>
							<td><a href="showDetail?pid=${item.pid}">${item.title}</a></td>
							<td><fmt:formatDate value="${item.regdate}" pattern="yyyy년 MM월 dd일 HH:mm"/></td>
							<td>${item.id}</td>
							<td>${item.pcname}</td>
							<td><a href="posts/delete?pid=${item.pid}" class="btn btn-outline-danger btn-sm">삭제</a> <a href="posts/update?pid=${item.pid}" class="btn btn-outline-warning btn-sm">변경</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="./" class="btn btn-sm btn-secondary">이전</a>
		</div>
	</div>
</body>
</html>