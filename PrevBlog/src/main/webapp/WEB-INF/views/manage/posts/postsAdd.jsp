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
		<form method="post">
			<div>
				<select name="pcid" >
					<option value="" selected="selected">카테고리</option>
					<c:forEach var="item" items="${postsAdd}">
						<option value="${item.pcid}">${item.pcname}</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<label>제목</label>
				<input type="text" name="title" placeholder="제목을 입력해주세요">
			</div>
			<div>
				<label>내용</label>
				<textarea rows="15" name="content" cols="80" placeholder="내용을 입력해주세요" ></textarea>
			</div>

			<button>등록</button>
		</form>
	</div>
	<div>
		<a href="../../">처음으로</a>
	</div>
</body>
</html>