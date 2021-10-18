<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<style>
* {
	margin: 0;
	padding: 0;
}
.container-fluid {
	width: 1920px;
}
#welcome, #buttons {
	margin: 0 auto;
}
#welcome {
	text-align: center;
	margin: 40px 0;
	font-size: 36px;
	font-weight: bold;
	font-family: "Noto+Sans+KR";
}
#buttons {
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div id="welcome">
			PREV 계정관리
		</div>
		<div id="buttons" class="row">
			<div class="col-4"></div>
			<a href="posts" class="btn btn-outline-primary col-4 mb-3">글 관리</a>
			<div class="col-4"></div>
			<div class="col-4"></div>
			<a href="manageCategorys" class="btn btn-outline-primary col-4 mb-3">카테고리 관리</a>
			<div class="col-4"></div>
			<div class="col-4"></div>
			<a href="profile" class="btn btn-outline-primary col-4 mb-3">프로필 관리</a>
			<div class="col-4"></div>
			<div class="col-5"></div>
			<a href="../../" class="btn btn-sm btn-outline-warning col-2">메인 화면으로</a>
			<div class="col-5"></div>
		</div>
	</div>
</body>
</html>