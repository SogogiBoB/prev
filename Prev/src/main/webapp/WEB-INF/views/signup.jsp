<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<style>
* {margin: 0; padding: 0;}
body {margin-top: 40px;}
#content {width: 600px; border: 1px solid #ccc;}
.container-fluid h3 {font-family: Oswald; font-size: 3em; text-align: center;  margin-top: 40px;}
.container-fluid p {font-family: Oswald; font-size: 1.5em; text-align: center;}
label {font-size:18px;}
#goback {margin-bottom: 40px;}
</style>
<script>
let check_id = false;

function signup() {
	const form = document.signupForm;
	
	if(form.id.value == '') {
		alert('아이디를 입력해주세요');
		form.id.focus();
		return;
	}
	
	if(!check_id) {
		alert('아이디 중복 검사를 해주세요.')
		return;
	}
	
	if(form.name.value == '') {
		alert('이름을 입력해주세요');
		form.name.focus();
		return;
	}
	
	if(form.pw.value == '') {
		alert('비밀전호를 입력해주세요');
		form.passwd.focus();
		return;
	}
	
	if(form.pw_check.value == '') {
		alert('비밀전호 확인을 입력해주세요');
		form.passwd_check.focus();
		return;
	}
	
	if(form.pw.value !== form.pw_check.value) {
		alert('입력한 비밀번호와 확인이 일치하지 않습니다.');
		form.passwd_check.focus();
		return;
	}
	
	if(form.nickname.value == '') {
		alert('닉네임을 입력해주세요');
		form.nickname.focus();
		return;
	}
	
	form.submit();
}


function checkId_Sync() {
	const form = document.signupForm;
	const xhr = new XMLHttpRequest;
	xhr.open("GET", "checkId?id=" + form.id.value, false);
	xhr.send();
	console.log(xhr.responseText);
	
	if(xhr.responseText == "OK") {
		check_id = true;
		alert("[동기] 사용 가능한 회원번호 입니다.")
	} else {
		alert("[동기] 이미 등록된 회원번호 입니다.")
	}
}

function checkId_Async() {
	const form = document.signupForm;
	const xhr = new XMLHttpRequest();
	
	xhr.open("GET", "checkId?id="+ form.id.value, true);
	
	xhr.onreadystatechange = function () { //onreadystatechange가 되면 다음의 function을 실행
		if(xhr.readyState == XMLHttpRequest.DONE) {	//XMLHttpRequest가 완료된 상태가 되었다면
			if(xhr.status == 200) { //완료된 상태가 정상적으로 수행된 값
				if(xhr.responseText == "OK") {
					if(form.id.value == "") {
						alert("아이디를 입력하세요.")
					} else {
						check_id = true;
						alert("사용 가능한 아이디 입니다.")
					}
				} else {
					alert("이미 등록된 아이디 입니다.")
				}
			}
		}
	};
	
	xhr.send();
	console.log("결과 1: " + xhr.responseText);
}

function changeId() {
	check_id = false;
}

function goBack() {
	//history.back();
	location.href = ".";
}
</script>
</head>
<body>
	<div class="container-fluid" id="content">
		<div class="d-grid gap-2 col mx-auto">
			<h3>회원가입</h3>
			<p>SIGN-UP</p>
				<form name="signupForm" method="post">
					<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
						<label>아이디</label>
						<input type="text" name="id" onchange="changeId()" class="form-control mb-1"><div onclick="checkId_Async()" class="btn btn-outline-primary btn-sm mb-4">중복확인</div>
					</div>
					<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
						<label>이름</label>
						<input type="text" name="name" class="form-control mb-4">
					</div>
					<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
						<label>비밀번호</label>
						<input type="password" name="pw" class="form-control mb-4">
					</div>
					<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
						<label>비밀번호 확인</label>
						<input type="password" name="pw_check" class="form-control mb-4">
					</div>
					<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
						<label>닉네임</label>
						<input type="text" name="nickname" class="form-control mb-5">
					</div>
					<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
						<label>이메일</label>
						<input type="text" name="email" class="form-control mb-5">
					</div>
				</form>
			<div class="d-grid gap-2 col-6 mx-auto" class="form-label">
				<button onclick="signup()" class="btn btn-secondary mb-2">회원가입</button>
				<button onclick="goBack()" class="btn btn-outline-primary" id="goback">처음으로</button>
			</div>
		</div>
	</div>
</body>
</html>
