<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.reply_box {
	border: 1px solid black;
	height: 500px;
	width: 700px;
}
#reply_list {
	border: 1px solid black;
	height: 50px;
	width: 400px;
}
</style>
</head>
<body>
	<div>
		<p>${item.pid}</p>
		<p>${item.title}</p>
		<p>${item.content}</p>
		<p><fmt:formatDate value="${item.regdate}" pattern="yyyy년 MM월 dd일"/></p>
		<p>${item.viewcount}</p>
	</div>
	<div class="reply_box">
		<p>댓글</p>
		<div>
			<form method="post">
				<label>입력</label>
				<input type="text" name="content">
				<button type="submit">댓글등록</button>
			</form>
		</div>
		<div id="reply_list">
			<c:if test="${replyList.size() < 1}">
				<div>
					<p>노댓글</p>
				</div>
			</c:if>
			<c:forEach var="reply" items="${replyList}">
				<div>
					<p>${reply.id}</p>
					<p>${replt.content}</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<a href="./">이전</a>
</body>
</html>