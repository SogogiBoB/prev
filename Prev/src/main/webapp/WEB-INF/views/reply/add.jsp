<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
a {
text-decoration : none;
color: black;
}
</style>
<title></title>
</head>
<body>
	<div>
		<form method="post">
			<div>
				<label>내용</label>
				<input type="text" name="content" placeholder="제목을 입력해주세요">
			</div>
			<div>
				<label>게시글 번호</label>
				<input type="number" name="pid" placeholder="제목을 입력해주세요">
			</div>
			<div>
				<label>아이디</label>
				<input type="text" name="id" placeholder="제목을 입력해주세요">
			</div>

			<button>등록</button>
		</form>
	</div>
	<div>
		<a href="../../">처음으로</a>
	</div>
</body>
</html>