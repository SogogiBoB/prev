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
li{
	list-style: none;
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
#b-h-hr{
	padding: 2px;
	color: #333333;
    width: 1060px;
    margin-left: 62px;
    margin-top: 23px;
    margin-bottom: 40px;
}
#b-p-hr{
	color: #333333;
    width: 1060px;
    margin-left: 62px;
    margin-top: 80px;
    margin-bottom: 40px;
}
#b-f-hr{
    border:2px;
    color: #333333;
    width: 1060px;
    margin-left: 62px;
    margin-top: 23px;
}
#b_post_hr{
	width: 210px;
	margin: 0 10px 10px 10px;
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
.card-img, .card-img-bottom, .card-img-top {
    width: 200px;
    height: 200px;
    margin-top: 10px;
    margin-left: 9px;
}
.row>* {
    flex-shrink: 0;
    width: 100%;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x)/ 2);
    padding-left: calc(var(--bs-gutter-x)/ 2);
    margin-top: var(--bs-gutter-y);
    padding-bottom: 40px;
}

.body-card{
	margin-bottom:10px ; 
}
#pager{
	margin: 0 auto;
}
.body-footer{
	 width: 1060px;
	 height: 413px;
	 margin: 0 auto;
}
 .profile, .categorys, .newpost, .calendar{ 
	width: 240px;
	margin-top: 40px;
	border: solid 2px #eaeaea;
	display: inline-block;
}
.profile{
	height: 360px;
}
#profileImg{
	width: 180px;
 	height: 180px; 
 	margin: 30px auto 10px auto;
}
#profileImg img{
	width: 180px;
 	height: 180px; 
 	border: solid 1px #c5c8c9;
}
#nickname{
	text-align: center;
	font-size: 14px;
	color: #4f4f4f;
}
.pr{
	text-align: center;
	font-size: 10px;
	color: #797979;
}
#button_box {
	width:180px;
	margin: 0 auto;
}
#postsadd, #manage{
	background: #c5c8c9;
	width: 85px;
	height: 35px;
	display: inline-block;
	font-size: 12px;
	font-weight: 700px;
	margin: 30 auto;
	vertical-align: bottom;
	border: 0;
	outline: 0;
}
.categorys{
 	width: 240px;
	height: 100px;
	vertical-align: top;
	margin-top: 40px;
	margin-left: 25px;
}
.newpost{
	width: 240px;
	height: auto;
	margin-top: 40px;
	vertical-align: top;
	margin-left: 25px;
}
#name{
	margin-left: 10px; 
	margin-top: 30px;
	margin-bottom: 30px;
	color: #4f4f4f;
}
	.post_box{
		width: 230px;
		height: 55px; 
		margin: 15px 0 0 10px ;
	}
	.post_box img{
		width: 45px;
		height: 45px;
		border: solid 1px #c5c8c9;
	}
	.post_box p{
		font-size: 12px;
		vertical-align:top;
		margin-left: 10px;
	}
	.post_box small{
		font-size: 10px;
		float: right;
		margin-right: 20px;
		margin-top: 30px;
	}
	.post_box img, .post_box p, .post_box small{
		display: inline-block;
	}
	.post_content{
		display: inline-block;
	}
 .calendar{
	width: 240px;
	height: 260px;
	margin: 40px auto;
	float: right;
}

</style>
<script>
	$(function(){
		$("#button").click(function(){
		})
		
		$("#tagID").click(function(){
			$(".cate").toggle();
		}); 
		$(".cate").click(function(){
			$(".pcate").toggle();
		});
	});
</script>
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
			<hr id="b-h-hr">
			<div class="body-body row">
				<c:forEach var="item" items="${list}">
					<div class="body-card col">
						<div class="card h-100">
							<c:if test="${item.thumbnail != null}">
								<img src="${item.thumbnail}" class="card-img-top">
							</c:if>
							<c:if test="${item.thumbnail == null}">
								<img src="/images/no_image.gif" class="card-img-top">
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
			<hr id="b-p-hr">
			<!-- 페이지네이션  -->
			<!-- <div id="pager">
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
			</div> -->
			<hr id="b-f-hr">
			
			<div class="body-footer">
				<div class="profile">
					<div id="profileImg">
						<img src="/upload/files/${memberInfo.profileImg}">
					</div>
					<div>
						<p id="nickname"><b>${memberInfo.nickname}</b></p>
						<c:if test="${memberInfo.pr == null}">
							<p class="pr">안녕하세요 ${memberInfo.nickname}의 블로그입니다.</p>
						</c:if>
						<c:if test="${memberInfo.pr != null}">
							<p class="pr">${memberInfo.pr}</p>
						</c:if>
					</div>
					<div id="button_box">
		            	<button onclick="location.href='../../post/${sessionScope.id}/add'" id="postsadd">글쓰기</button>
						<button onclick="location.href='../../manage/${sessionScope.id}/'" id="manage">관리</button>
					</div>
				</div>
			
				<div class="categorys">
					<div id="tagID"> 
						<p>카테고리 전체보기</p>
					</div>
    				<c:if test="${list.size() < 1}">
						<li class="list-group-item">
							<p>등록된 카테고리가 없습니다.</p>
						</li>
					</c:if>
					 <div class="cate">
								<c:forEach var="citem" items="${clist}">
									<ul>
										<li>${citem.cname}</li>
									</ul>
									<div class="pcate">
									<c:forEach var="item" items="${pclist}">
											<ul>
												<li>${item.pcname}</li>
											</ul>
									</c:forEach>
									</div>
								</c:forEach>
							</div>
						</div>
					
				
					<div class="newpost">
						<p id="name"><b>최신글</b></p>
							<c:forEach var="item" items="${udtlist}">
							<div class="post_box">
								<c:if test="${item.thumbnail != null}">
									<img src="${item.thumbnail}">
								</c:if>
								<c:if test="${item.thumbnail == null}">
									<img src="/images/no_image.gif">
								</c:if>
									<p>${item.title}</p>
									<small class="text-muted">조회 ${item.viewcount} · <fmt:formatDate value="${item.regdate}" pattern="YYYY.MM.dd" /></small>
									</div>
								<hr id="b_post_hr">
							</c:forEach>
					</div>
				


					<div class="calendar">
						<jsp:include page="/WEB-INF/views/calendar/main.jsp" ></jsp:include>
					</div>
					</div>
					
			</div>
				<a href="logout">로그아웃</a>
				<a href="../../">메인화면으로</a>
			</div>
</body>
</html>