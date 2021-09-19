<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>${sessionScope.member.nickname}님 프로필 정보</h2>
		<div>
			<label>프로필 이미지</label>		
		</div>	
		<div>
			<label>닉네임</label>
			<p>${item.nickname}</p>	
		</div>
		<div>
			<label>이메일</label>
			<p>${item.email}</p>	
		</div>
		<div>
			<label>자기소개</label>
			<textarea rows="15" cols="40">${item.pr}</textarea>
		</div>
		<a href="profile/update?id=${item.id}">변경</a>
	</div>
</body>
</html>