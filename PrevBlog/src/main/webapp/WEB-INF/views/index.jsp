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

<style>
#thumbnail {
width: 100px;
height: 100px;
}
* {
    margin: 0;
    padding: 0;
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
#header #button a {
    text-decoration: none;
    color: black;
}
#header #logo,#button {
    display: inline-block;
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
#login_box {
	width: 505px;
	height: 175px;
	margin-left: 50px;
	margin-top: 30px;
	border-right: 2px solid black;
	background: green;
}

#upper_content {
	border-bottom: 1px solid #e4e4e4;
}
#memberProfile img{
	width: 90px;
	height: 90px;
	margin-top: 20px;
	margin-right: 20px;
}
#memberProfile, #profileInfo {
	display: inline-block;
	background: red;
}
#profileInfo {
	
}
</style>
<script>
$(function() {
	$("#button").click(function() {
		location.href ="/login";
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
					<p>${sessionScope.member.nickname}님 환영합니다.</p>
				<a href="logout">로그아웃</a>
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
	            <div id="login_box">
	            	<div id="memberProfile">
	            		<img src="/upload/files/${sessionScope.member.profileImg}">
	            	</div>
	            	<div id="profileInfo">
	            		<h3>${sessionScope.member.nickname}</h3>
	            		<h4>블라블라블라</h4>
	            	</div>
	            </div>
	        </section>
        </div>
    </div>
	<p>블로그 메인 화면입니다.</p>
	
	<div>
		<a href="post/${sessionScope.id}/add">글쓰기</a></div>
	<div>
		<a href="my/${sessionScope.id}/">내 블로그</a>
	</div>
	<div>
		<a href="category/list">카테고리 관리</a>
	</div>
	<div>
		<h2>최신글</h2>
		<table>
			<thead>
				<tr>
					<td>글번호</td>
					<td>제목</td>
					<td>썸네일</td>
					<td>작성일</td>
					<td>작성자</td>
					<td>조회수</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.pid}</td>
					<td><a href="${item.pid}">${item.title}</a></td>
					<td>
						<c:if test="${item.thumbnail != null}">
							<img id="thumbnail" src="${item.thumbnail}">
						</c:if>
						<c:if test="${item.thumbnail == null}">
							<img id="thumbnail" src="/images/no_image.png">
						</c:if>
					</td>
					<td><fmt:formatDate value="${item.regdate}" pattern="yyyy.MM.dd."></fmt:formatDate></td>
					<td>${item.id}</td>
					<td>${item.viewcount}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
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
</body>
</html>
