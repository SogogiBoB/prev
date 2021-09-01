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
	<p>블로그 메인 화면입니다.</p>
	<c:if test="${sessionScope.id != null}">
		<p>${sessionScope.member.nickname}님 환영합니다.</p>
		<a href="logout">로그아웃</a>
	</c:if>
	<c:if test="${sessionScope.id == null}">
		<a href="login">로그인</a>
	</c:if>
	<a href="post/${sessionScope.id}/add">글쓰기</a>
	<a href="my/${sessionScope.id}/">내 블로그</a>
	
	<a href="category/list">카테고리 관리</a>
	
</body>
</html>