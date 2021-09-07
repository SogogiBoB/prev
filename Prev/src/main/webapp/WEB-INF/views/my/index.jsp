<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<h2>prev</h2>
	<p>개인화면 입니다</p>
	<c:if test="${sessionScope.id != null}">
		<p>${sessionScope.member.nickname}님의 블로그 입니다.</p>
		<a href="logout">로그아웃</a>
	</c:if>
	
	<div>
		<table>
			<thead>
				<tr>
					<td>글번호</td>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.pid}</td>
					<td><a href="showDetail?pid=${item.pid}">${item.title}</a></td>
					<td>${item.content}</td>
					<td><fmt:formatDate value="${item.regdate}" pattern="yyyy.MM.dd."></fmt:formatDate></td>
					<td>${item.id}</td>
					<td>${item.viewcount}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div>
	<a href="../../post/${sessionScope.id}/add">글쓰기</a>
	</div>
	<div>
	<a href="../../manage/${sessionScope.id}/">관리</a>
	</div>
	<a href="../../">메인화면으로</a>
</body>
</html>