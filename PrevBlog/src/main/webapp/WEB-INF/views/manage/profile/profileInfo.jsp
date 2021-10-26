<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title>프로필 정보</title>

<style>
#profileImg {
   width: 80px;
   height: 80px;
   border-radius: 50%;
   
}
img {width: 250px; height: 150px;}
h2, h3, h4, h5, p, label {
	font-family: "Noto+Sans+KR";
}
h2 {
padding: 16px;
}
.card {
	width: 330px;
	margin: 0 auto;
	margin-top: 60px;
}
.imgSection {
	padding: 16px;
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
	<div class="card">
      <h2>${item.id}님 프로필 정보</h2>
      <div class="imgSection">
      	  <label>프로필 이미지</label>
	      <div class="card-img-top">
	         <c:if test="${item.profileImg != null}">
	            <img id="profileImg" src="/upload/files/${item.profileImg}">
	         </c:if>
	         <c:if test="${item.profileImg == null}">
	            <img id="profileImg" src="/images/no_profile.png">
	         </c:if>
	      </div>
      </div>
      <div class="card-body">
	      <div>
	         <label class="card-title">닉네임:</label>
	         ${item.nickname}
	      </div>
	      <div>
	         <label class="card-title">이메일:</label>
	         ${item.email}
	      </div>
	      <div>
	         <label class="card-title">자기소개:</label>
	         <c:if test="${item.pr != null}">
	            ${item.pr}
	         </c:if>
	         <c:if test="${item.pr == null}">
	            <p>안녕하세요 ${item.nickname}의 블로그입니다.</p>
	         </c:if>
	      </div>
	      <a href="profile/update?id=${item.id}" class="btn btn-sm btn-primary">변경</a>
	      <a href="../../" class="btn btn-sm btn-outline-secondary">처음으로</a>
	  </div>
	  
      </div>
   </div>
</body>
</html>