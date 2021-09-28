<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
#thumbnail {
width: 100px;
height: 100px;
}
p {
	margin: 0;
}
* {
    margin: 0;
    padding: 0;
    font-family: "Noto+Sans+KR";
}
.container-fluid {
    width: 1920px;
}
#header {
    width: 100%;
}
#header #logo {
    margin-top: 20px;
    margin-left:  400px;
}
#header #button {
    width: 55px;
    height: 25px;
    border: 1px solid #e4e4e4;
    background: none;
    font-size: 12px;
    margin-left: 978px;
    text-align: center;
    line-height: 25px;
    cursor: pointer;
}
a {
    text-decoration: none;
    color: black;
}
#header #logo,#button {
    display: inline-block;
}
#header #roundProfile {
	display: inline-block;
	margin-left: 905px;
}
#header #roundProfile img {
	width: 35px;
	height: 35px;
	border-radius: 50%;
	cursor: pointer;
}
#header #roundProfile a {
	font-size: 14px;
	margin-left: 30px;
}
section {
    width: 1100px;
    height: 630px;
    margin: 0 auto;
    margin-top: 55px;
}
#main_image {
    width: 1100px;
    height: 280px;
    margin-top: 40px;
    background: cyan;
}
.carousel-inner {
    width: 1100px;
    height: 280px;
    background-position: top;
}
#slogan {
}
#slogan h4 {
    font-size: 36px;
}
#slogan h3 {
	line-height: 25px;
    font-size: 46px;
}
#login_box_1 {
	width: 505px;
	height: 175px;
	margin-left: 50px;
	margin-top: 30px;
	display: inline-block;
	border-right: 1px solid black;
}
#login_box_2 {
	width: 1100px;
	height: 175px;
	margin-top: 30px;
}
#login2_text {
	padding-top: 40px;
	margin: 0 auto;
	width: 310px;
}
#login2_button {
	width: 200px;
	margin: 0 auto;
}
#blog_login {
	width: 200px;
	height: 40px;
	background: #202020;
	font-weight: 700;
	color: #fff;
	margin-top: 16px;
}
#upper_content {
	border-bottom: 1px solid #e4e4e4;
}
#memberProfile {
	background: red;
	width: 90px;
	height: 90px;
}
#login_box_1 img{
	margin-top: -60px;
	width: 90px;
	height: 90px;
	display: inline-block;
}
#profileInfo {
	margin-top: 20px;
	margin-left: 20px;
	display: inline-block;
}
#profileInfo h3 {
	font-size: 22px;
	font-weight: 400;
}
#profileInfo h5 {
	font-size: 16px;
	font-weight: 700;
}
#profileInfo p {
	font-size: 12px;
}
#button_box {
	margin-left: 115px;
}
#my_blog, #post_add {
	background: none;
	border: 1px solid black;
	width: 120px;
	height: 35px;
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
}
#up_to_date {
	width: 1100px;
	margin: 0 auto;
	padding-top: 60px;
}
#up_to_date h2 {
	font-size: 24px;
	font-weight: bold;
}
.card {
	display: inline-block;
	width: 345px;
	height: 415px;
	cursor: pointer;
	margin-top: 20px;
	padding: 0;
}
.card-body {
	padding-top: 30px;
}
#img_section {
	margin-left: 26px;
}
.card-img-top {
	height: 250px;
	width: 290px;
	object-fit: cover;
}
.card-text {
	padding-left: 10px;
}
.card:nth-child(2) {
	margin-right: 27px;
	margin-left: 26px;
}
#profile_section_in_card {
	margin-top: 15px;
}
#profileImg_in_card{
	margin-left: 26px;
}
#profileImg_in_card img {
	width: 60px;
	height: 60px;
	border-radius: 50%;
}
#profileImg_in_card, #user_in_card, #regdate_in_card {
	display: inline-block;
}
#user_in_card, #regdate_in_card {
	padding-left: 15px;
	color: #ccc;
	font-size: 15px;
}
</style>
<script>
$(function() {
	$("#button").click(function() {
		location.href ="/login";
	});
	
	$("#roundProfile img").click(function() {
		location.href ="my/${sessionScope.id}/";
	});
	
	$(".card").click(function() {
		let pid= $(this).data("pid");
		console.log(pid);
		location.href=pid;
	});
});
</script>
</head>
<body>
	<div class="container-fluid">
		<div id="upper_content">
	        <div id="header">
	            <div id="logo">
	                <img src="images/main_logo.gif">
	            </div>
		            <c:if test="${sessionScope.id != null}">
		            <div id="roundProfile">
		            	<img src="/upload/files/${sessionScope.member.profileImg}">
						<a href="logout">로그아웃</a>
					</div>
					</c:if>
					<c:if test="${sessionScope.id == null}">
						<div id="button">로그인</div>
					</c:if>
	        </div>
	        <section>
	            <div id="slogan">
	                <h4>어제의 일상,</h4>
	                <h3><b>PREV</b>에 담다</h3>
	            </div>
	            <div id="main_image" class="carousel slide" data-bs-ride="carousel">
	                <div class="carousel-inner">
	                    <div class="carousel-item active" data-bs-interval="4000">
	                      <img src="images/people_1.gif" class="d-block w-100" alt="...">
	                    </div>
	                    <div class="carousel-item" data-bs-interval="4000">
	                      <img src="images/people_2.gif" class="d-block w-100" alt="...">
	                    </div>
	                    <div class="carousel-item" data-bs-interval="4000">
	                      <img src="images/people_3.gif" class="d-block w-100" alt="...">
	                    </div>
	                </div>
	            </div>
	            <c:if test="${sessionScope.member != null}">
		            <div id="login_box_1">
			            <img src="/upload/files/${sessionScope.member.profileImg}">
			            <div id="profileInfo">
				           	<h3>${sessionScope.member.nickname}</h3>
				           	<h5>${sessionScope.member.pr}</h5>
				           	<p>내 글 0 | 댓글 0</p>
			            </div>
			            <div id="button_box">
			            	<button onclick="location.href='my/${sessionScope.id}/'" id="my_blog">내블로그</button>
							<button onclick="location.href='post/${sessionScope.id}/add'" id="post_add">글쓰기</button>
						</div>
		            </div>
	            </c:if>
	            <c:if test="${sessionScope.member == null}">
		            <div id="login_box_2">
		            	<div id="login2_text">
			            	<p><b>로그인</b>하시고 이웃의 소식을 확인해보세요.</p>
			            </div>
			            <div id="login2_button">
			            	<button onclick="location.href='/login'" id="blog_login">블로그 로그인</button>
			            </div>
		            </div>
	            </c:if>
	        </section>
        </div>
        
        <div id="up_to_date">
			<h2>최신글</h2>
			<div id="card_box">
			<c:forEach var="item" items="${list}">
				<div class="card" data-pid="${item.pid}">
					<div class="card-body">
						<p class="card-text">${item.title}</p>
					</div>
					<div id="img_section">
						<c:if test="${item.thumbnail != null}">
							<img src="${item.thumbnail}" class="card-img-top">
						</c:if>
						<c:if test="${item.thumbnail == null}">
							<img src="/images/no_image.png" class="card-img-top">
						</c:if>
					</div>
					<div id="profile_section_in_card">
						<div id="profileImg_in_card">
							<img src="/upload/files/${item.profileImg}">
						</div>
						<div id="user_in_card">
							<p>${item.id}</p>
						</div>
						<div id="regdate_in_card">
							<p><fmt:formatDate value="${item.regdate}" pattern="yyyy.MM.dd"/></p>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
	
	<div>
		<h2>인기글1</h2>
		<table>
			<thead>
				<tr>
					<td>글번호</td>
					<td>제목</td>
					<td>썸네일</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>카테고리명</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="result" items="${result}">
					<c:if test="${result.cname=='여행'}">
						<tr>
							<td>${result.pid}</td>
							<td><a href="${result.pid}">${result.title}</a></td>
							<td>
								<c:if test="${result.thumbnail != null}">
									<img id="thumbnail" src="${result.thumbnail}">
								</c:if>
								<c:if test="${result.thumbnail == null}">
									<img id="thumbnail" src="/images/no_image.png">
								</c:if>
							</td>
							<td><fmt:formatDate value="${result.regdate}" pattern="yyyy.MM.dd."></fmt:formatDate></td>
							<td>${result.id}</td>
							<td>${result.viewcount}</td>
							<td>${result.cname}</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<button>더보기</button>
	</div>
	<div>
		<h2>인기글2</h2>
		<table>
			<thead>
				<tr>
					<td>글번호</td>
					<td>제목</td>
					<td>썸네일</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>카테고리명</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="result" items="${result}">
					<c:if test="${result.cname=='음악'}">
						<tr>
							<td>${result.pid}</td>
							<td><a href="${result.pid}">${result.title}</a></td>
							<td>
								<c:if test="${result.thumbnail != null}">
									<img id="thumbnail" src="${result.thumbnail}">
								</c:if>
								<c:if test="${result.thumbnail == null}">
									<img id="thumbnail" src="/images/no_image.png">
								</c:if>
							</td>
							<td><fmt:formatDate value="${result.regdate}" pattern="yyyy.MM.dd."></fmt:formatDate></td>
							<td>${result.id}</td>
							<td>${result.viewcount}</td>
							<td>${result.cname}</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<button>더보기</button>
	</div>
    </div>
</body>
</html>
