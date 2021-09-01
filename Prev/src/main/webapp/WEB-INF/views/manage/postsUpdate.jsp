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
				<select name="pcid" >
					<option value="" selected="selected">카테고리</option>
					<c:forEach var="tem" items="${pcateList}">
						<option value="${tem.pcid}" ${tem.pcid==item.pcid?'selected':''}>${tem.pcname}</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<label>제목</label>
				<input type="text" name="title" value="${item.title}">
			</div>
			<div>
				<label>내용</label>
				<textarea rows="15" name="content" cols="80">${item.content}</textarea>
			</div>
			<button>등록</button>
		</form>
	</div>
	<div>
		<a href="../../">처음으로</a>
	</div>
</body>
</html>
