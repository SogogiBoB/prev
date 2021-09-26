<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
<style>
* {margin: 0; padding: 0;}
li{list-style: none; text-align: center;}
a {text-decoration: none; color: black;}
body {margin-top: 50px;}
h3 {margin-top: 40px;}
.container-fluid h3 {font-family: Oswald; font-size: 4em; text-align: center;}
#box {width: 500px; border: 1px solid #ccc;}
label {font-size:18px;}
#goback {margin-bottom: 40px;}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="d-grid gap-2 col-6 mx-auto" id="box">
		<h3>LOGIN</h3>
			<form method="post">
				<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
					<label>ID</label>
					<input type="text" name="id" class="form-control mb-2">
				</div>
				<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
					<label>PASSWORD</label>
					<input type="password" name="pw" class="form-control mb-4">
				</div>
				<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
					<input type="submit" value="로그인" class="btn btn-secondary mb-4">
				</div>
			</form>
			<div class="d-grid gap-2 col-3 mx-auto" style="text-align:center">
				<div><a href="signup">회원가입</a></div>
			</div>
			<div class="d-grid gap-2 col-3 mx-auto mb-3" style="text-align:center">
				<div><a href="">비밀번호 찾기</a></div>
			</div>
			<div id="goback" class="d-grid gap-2 col-3 mx-auto" style="text-align:center">
				<a href="." class="btn btn-outline-primary">처음으로</a>
			</div>
		</div>
	</div>
</body>
</html>
