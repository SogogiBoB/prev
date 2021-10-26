<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.inputbox {
	width: 30%;
	margin: 0 auto;
	margin-top: 80px;
	border: 1px solid #ccc;
	padding: 40px;
	border-radius: 5px;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="inputbox">
			<form method="post">
				<div>
					<label  class="form-label">내 카테고리명</label>
					<div>
						<input type="text" name="pcname" value="${item.pcname}" class="form-control">
					</div>
				</div>
	
				<button class="btn btn-sm btn-outline-primary my-2">등록</button>
			</form>
			<a href="../../" class="btn btn-sm btn-outline-secondary">처음으로</a>
		</div>
	</div>
</body>
</html>
