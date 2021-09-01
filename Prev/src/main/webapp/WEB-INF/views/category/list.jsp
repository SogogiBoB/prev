<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<h3>카테고리</h3>
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
							<td>${item.cid}</td>
							<td>${item.cname}</td>
							<td><a href="delete?cid=${item.cid}" class="btn btn-outline-danger btn-sm">삭제</a> <a href="update?cid=${item.cid}" class="btn btn-outline-danger btn-sm">변경</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="add">등록</a>
		</div>
		<div>
			<a href="../">처음으로</a>
		</div>
	</div>
</body>
</html>