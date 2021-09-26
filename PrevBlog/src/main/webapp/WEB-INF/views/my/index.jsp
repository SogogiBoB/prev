<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

#thumbnail {
width: 100px;
height: 100px;
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
					<td>제목</td>
					<td>썸네일</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${list}">
				<tr>
					<td><a href="${item.pid}">${item.title}</a></td>
					<td>
						<c:if test="${item.thumbnail != null}">
							<img id="thumbnail" src="${item.thumbnail}">
						</c:if>
						<c:if test="${item.thumbnail == null}">
							<img id="thumbnail" src="/images/no_image.png">
						</c:if>
					</td>
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