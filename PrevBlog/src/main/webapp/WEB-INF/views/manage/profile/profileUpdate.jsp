<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<style>
img {width: 200px; height: 150px;}
h2, h3, h4, h5, p {
	font-family: "Noto+Sans+KR";
}
.mainContent {
	width: 350px;
	margin: 0 auto;
}
.mainContent h2 {
	font-weight: 600;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="mainContent">
			<h2>프로필 변경</h2>
			<form method="post" enctype="multipart/form-data">
				<div>
					<label class="form-label">프로필 이미지 변경</label><br>
					<img src="/upload/files/${item.profileImg}">
					<input class="form-control" type="file" name="fileUpload" value="${item.profileImg}">
				</div>
				<div>
					<label class="form-label">비밀번호 변경</label>
					<input class="form-control" type="text" name="pw" value="${item.pw}">
				</div>
				<div>
					<label class="form-label">닉네임 변경</label>
					<input class="form-control" type="text" name="nickname" value="${item.nickname}">
				</div>
				<div>
					<label class="form-label">이메일 변경</label>
					<input class="form-control" type="text" name="email" value="${item.email}">
				</div>
				<div>
					<label class="form-label">자기소개 변경</label><br>
					<textarea  class="form-control" rows="10" name="pr" cols="15">${item.pr}</textarea>
				</div>
				<button class="btn btn-sm btn-primary my-2">등록</button>
			</form>
	
			<a href="../" class="btn btn-sm btn-outline-secondary">돌아가기</a>
	
		</div>
	</div>
</body>
</html>