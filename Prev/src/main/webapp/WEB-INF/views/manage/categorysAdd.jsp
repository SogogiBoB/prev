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
		<form method="post">
			<div>
				<select name="cid" >
					<option value="" selected="selected">카테고리</option>
					<c:forEach var="item" items="${list}">
						<option value="${item.cid}">${item.cname}</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<label>개인 카테고리명</label>
				<input type="text" name="pcname" placeholder="개인 카테고리명">
			</div>

			<button>등록</button>
		</form>
	</div>
	<div>
		<a href="../../">처음으로</a>
	</div>
</body>
</html>