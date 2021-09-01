<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
						<th>내용</th>
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
							<td>${item.title}</td>
							<td>${item.content}</td>
							<td><fmt:formatDate value="${item.regdate}" pattern="yyyy년 MM월 dd일 HH:mm"/></td>
							<td>${item.id}</td>
							<td>${item.pcname}</td>
							<td><a href="posts/delete?pid=${item.pid}" class="btn btn-outline-danger btn-sm">삭제</a> <a href="posts/update?pid=${item.pid}" class="btn btn-outline-danger btn-sm">변경</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="posts/add">등록</a>
		</div>
		<div>
			<a href="./">처음으로</a>
		</div>
	</div>
</body>
</html>