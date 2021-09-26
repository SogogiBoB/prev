<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>

<style>
#profileImg {
	width: 80px;
	height: 80px;
	border-radius: 50%;
}
</style>
</head>
<body>
	<div>
	<form method="post" enctype="multipart/form-data">
		<h2>${item.id}님 프로필 정보</h2>
		<div>
			<label>프로필 이미지</label>	
			<img id="profileImg" src="/upload/files/${item.profileImg}">
		</div>
		<div>
			<label>닉네임:</label>
			${item.nickname}
		</div>
		<div>
			<label>이메일:</label>
			${item.email}
		</div>
		<div>
			<label>자기소개:</label>
			${item.pr}
		</div>
		<a href="profile/update?id=${item.id}">변경</a>
	</form>
	<div>
		<a href="../../">처음으로</a>
	</div>
	</div>
</body>
</html>