<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<style>
.reply_box {
	border: 1px solid black;
	height: auto;
	width: 700px;
}
#reply_list {
	border: 1px solid black;
	height: auto;
	width: 400px;
}

</style>

<script>
	
</script>
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
			<form method="post" action="${item.pid}/insert">
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
					<p>${reply.content}</p>
					<p><fmt:formatDate value="${reply.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
					<a href="${item.pid}/update?rid=${reply.rid}">변경</a>
					<a href="${item.pid}/delete?rid=${reply.rid}">삭제</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<a href="./">이전</a>
</body>
</html>