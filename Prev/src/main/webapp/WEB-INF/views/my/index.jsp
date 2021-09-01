<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>prev</h2>
	<p>개인화면 입니다</p>
	<c:if test="${sessionScope.id != null}">
		<p>${sessionScope.member.nickname}님의 블로그 입니다.</p>
		<a href="logout">로그아웃</a>
	</c:if>
	<a href="../../post/${sessionScope.id}/add">글쓰기</a>
	<a href="../../${sessionScope.id}/manage/">관리</a>
	<a href="../../">메인화면으로</a>
</body>
</html>