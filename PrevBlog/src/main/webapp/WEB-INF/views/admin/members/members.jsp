<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title></title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: "Noto+Sans+KR";
}
img {
	width: 100px;
	height: 100px;
}
table {text-align: center; margin-top: 40px;}
td {line-height: 117px;}
h1 { font-size: 36px; font-weight: 500;text-align: center;}
</style>
</head>
<body>
	<div class="container-fluid">
		<h1>회원 목록</h1>
		<div>
			<table class="table table-hover">
				<thead class="table-light">
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
							<td>
								<c:if test="${item.profileImg != null}">
									<img src="/upload/files/${item.profileImg}">
								</c:if>
								<c:if test="${item.profileImg == null}">
									<img src="/images/no_profile.png">
								</c:if>
							</td>
							<td>${item.id}</td>
							<td>${item.pw}</td>
							<td>${item.name}</td>
							<td>${item.nickname}</td>
							<td>${item.email}</td>
							<td>${item.pr}</td>
							<td>
								<a href="mDelete?id=${item.id}" class="btn btn-sm btn-danger">삭제</a>
								<a href="mUpdate?id=${item.id}" class="btn btn-sm btn-secondary">변경</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="." class="btn btn-outline-primary">처음으로</a>
		</div>
	</div>
	</body>
</html>