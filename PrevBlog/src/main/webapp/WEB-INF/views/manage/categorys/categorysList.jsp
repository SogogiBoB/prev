<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<h3>개인 카테고리 관리</h3>
		<div>
			<table class="table table-hover" border="1">
				<thead>
					<tr class="table-light">
						<th>번호</th>
						<th>카테고리명</th>
						<th>관리</th>
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
							<td><a href="manageCategorys/delete?pcid=${item.pcid}" class="btn btn-outline-danger btn-sm">삭제</a> <a href="manageCategorys/update?pcid=${item.pcid}" class="btn btn-outline-danger btn-sm">변경</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="manageCategorys/add">등록</a>
		</div>
		<div>
			<a href="./">이전</a>
		</div>
	</div>
</body>
</html>