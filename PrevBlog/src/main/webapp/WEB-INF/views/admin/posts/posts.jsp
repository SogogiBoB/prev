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
<style>
a {
text-decoration : none;
color: black;
}
</style>
</head>
<body>
	<div>
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
					<c:if test="${posts.size() < 1}">
						<tr>
							<td colspan="6">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${posts}">
						<tr>
							<td>${item.pid}</td>
							<td><a href="showDetail?pid=${item.pid}">${item.title}</a></td>
							<td><fmt:formatDate value="${item.regdate}" pattern="yyyy년 MM월 dd일 HH:mm"/></td>
							<td>${item.id}</td>
							<td>${item.pcname}</td>
							<td><a href="pDelete?pid=${item.pid}" class="btn btn-outline-danger btn-sm">삭제</a> <a href="pUpdate?pid=${item.pid}" class="btn btn-outline-danger btn-sm">변경</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="./">이전</a>
		</div>
	</div>
</body>
</html>