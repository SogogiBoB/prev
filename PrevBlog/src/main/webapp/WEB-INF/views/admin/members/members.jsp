<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h1>회원 목록</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>프로필</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>닉네임</th>
						<th>이메일</th>
						<th>자기소개</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${members.size() < 1}">
						<tr>
							<td>등록된 사용자가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${members}">
						<tr>
							<td><img src="/upload/files/${item.profileImg}"></td>
							<td>${item.id}</td>
							<td>${item.pw}</td>
							<td>${item.name}</td>
							<td>${item.nickname}</td>
							<td>${item.email}</td>
							<td>${item.pr}</td>
							<td><a href="mDelete?id=${item.id}">삭제</a><a href="mUpdate?id=${item.id}">변경</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="..">처음으로</a>
		</div>
	</div>
	</body>
</html>