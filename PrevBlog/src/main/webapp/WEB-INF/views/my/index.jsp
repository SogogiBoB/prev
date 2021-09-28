<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
a {
text-decoration : none;
color: black;
}

#thumbnail {
width: 100px;
height: 100px;
}

*{
    margin: 0;
    padding: 0;
    font-family: "Noto+Sans+KR";
}
.container-fluid{
    width: 1920px;
    height: 2125px;
    background-color:#797979;
}
.header{
    width: 100%;
}
.header #logo, #line, #header-menu{
    margin-top: 14px;
}
.header div{
    display: inline-block;
}
#logo{
    margin-right: 10px;
}
.header-menu p,.header-menu a{
    font-size:12px ;
    margin-right: 10px;
    cursor: pointer;
    text-decoration: none;
    color: white;
}
#header1{
    margin-left:430px ;
}
#header2{
    margin-left:705px ;

}
.line {
    margin-right: 10px;
    color:#4f4f4f;
}
.section h3{
    font-size: 45px;
    margin-left:430px ;
    color: white;
    margin-top: 135px;
}
.body-box{
    width: 1184px;
    height: 1690px;
    background-color: white;
    margin-left:368px ;
    margin-top: 75px;
}
.body-header div{
    display: inline-block;
}
.body-header #home{
    margin-left: 62px;
    margin-right: 27px;
}
.body-header #dot{
    margin-right: 27px;
}
.body-header #home, #dot, #new{
    margin-top: 62px;
    font-size: 16px;
    color: #4f4f4f;
}
.body-box hr{
    border:2px;
    color: #333333;
    width: 1060px;
    margin-left: 62px;
    margin-top: 23px;
    margin-bottom: 40px;
}
.body-body{
    margin-left: 62px;
    width: 1060px;
    height: 700px;
	margin-bottom: 20px;
}
.card{
	display: inline-block;
	padding: 10px 10px;
	width: 240px;
	height: 260px;
	table-layout: fixed;  
}
.col{
	margin-bottom:10px ; 
}
.body-footer{
	margin-left: 62px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="header">
	            <div id="header1">
	                <div id="logo">
	                    <img src="/images/PrevLogo_03.png">
	                </div>
	                <div class="line">
	                    |
	                </div>
	                <div class="header-menu">
	                    <p><a href="/">블로그</a></p>
	                </div>
	            </div>
	            <div id="header2">
	                <div class="header-menu">
	                    <p>닉네임</p>
	                </div>
	                <div class="line">
	                    |
	                </div>
	                <div class="header-menu">
	                    <p>최신</p>
	                </div>
	                <div class="line">
	                    |
	                </div>
	                <div class="header-menu">
	                    <p>인기</p>
	                </div>
	                <div class="line">
	                    |
	                </div>
	                <div class="header-menu">
	                    <p>친구</p>
	                </div>
	            </div>
	        </div>
	        <div class="section">
            	<h3><b>${memberInfo.nickname}의 블로그입니다.</b></h3>
        	</div>
		<div class="body-box">
			<div class="body-header">
				<div id="home">
					<b><a href="/">홈</a></b>
				</div>
				<div id="dot">
					<b>·</b>
				</div>
				<div id="new">
					<b>최신</b>
				</div>
			</div>
			<hr>
			<div class="body-body row">
				<c:forEach var="item" items="${list}">
					<div class="col">
						<div class="card h-100">
							<c:if test="${item.thumbnail != null}">
								<img src="${item.thumbnail}" class="card-img-top">
							</c:if>
							<c:if test="${item.thumbnail == null}">
								<img src="/images/no_image.png" class="card-img-top">
							</c:if>
							<div class="card-body">
								<h5 class="card-title">${item.title}</h5>
							</div>
							<div class="card-footer">
								<small class="text-muted">조회 ${item.viewcount} · <fmt:formatDate
										value="${item.regdate}" pattern="YYYY.MM.dd" /></small>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<hr>
			<div class="body-footer">
				<c:if test="${sessionScope.id != null}">
					<c:if test="${memberInfo.pr == null}">
						<p>안녕하세요 ${memberInfo.nickname}의 블로그입니다.</p>
					</c:if>
					<c:if test="${memberInfo.pr != null}">
						<p>${memberInfo.pr}</p>
					</c:if>
					<a href="logout">로그아웃</a>
				</c:if>
				<div>
					<a href="../../post/${sessionScope.id}/add">글쓰기</a>
				</div>
				<div>
					<a href="../../manage/${sessionScope.id}/">관리</a>
				</div>
				<a href="../../">메인화면으로</a>
			</div>
		</div>
		</div>
	 </div>
</body>
</html>