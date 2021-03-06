<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<style>
img {width: 250px; height: 150px;}
</style>
</head>
<body>
	<div>
		<h2>프로필 변경</h2>
		<form method="post" enctype="multipart/form-data">
			<div>
				<img src="/upload/files/${memberItem.profileImg}">
				<label>프로필 이미지 변경</label>
				<input type="file" name="fileUpload" value="${memberItem.profileImg}">
			</div>
			<div>
				<label>아이디 변경</label>
				<input type="text" name="id" value="${memberItem.id}">
			</div>
			<div>
				<label>비밀번호 변경</label>
				<input type="text" name="pw" value="${memberItem.pw}">
			</div>
			<div>
				<label>닉네임 변경</label>
				<input type="text" name="nickname" value="${memberItem.nickname}">
			</div>
			<div>
				<label>이메일 변경</label>
				<input type="text" name="email" value="${memberItem.email}">
			</div>
			<div>
				<label>자기소개 변경</label>
				<textarea rows="10" name="pr" cols="15" >${memberItem.pr}</textarea>
			</div>
			<button>등록</button>
		</form>
		<div>
		<a href="../">돌아가기</a>
		</div>
	</div>
</body>
</html>