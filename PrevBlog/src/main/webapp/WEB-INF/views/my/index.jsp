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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
h5{
	white-space: nowrap;
	overflow: hidden; 
	text-overflow: ellipsis;
}
.container-fluid{
    width: 100%;
    height: 100%;
    background-color: #97c8e2;
}
.header{
    width: 1184px;
    margin: 0 auto;
}
.header #logo, #line, #header-menu{
    margin-top: 20px;
}
.header div{
    display: inline-block;
}
#logo{
    margin-right: 10px;
    font-size:16px ;
    text-decoration: none;
    color: white;
}
 .header-menu p,.header-menu a{
    font-size:12px ;
    margin-right: 10px;
    cursor: pointer;
    text-decoration: none;
    color: white;
}
#header1{
    float: left;
}
#header2{
	float: right;
	margin-top: 20px;

}
.line {
    margin-right: 10px;
    color:#4f4f4f;
}
.section h3{
    font-size: 45px;
    color: white;
    margin-top: 135px;
}
.body-box{
    width: 1184px;
    height: 2000px;
    background-color: white;
    margin:0 auto ;
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
	height: 345px;
	table-layout: fixed;
	cursor: pointer;
}
.card-img, .card-img-bottom, .card-img-top {
    width: 200px;
    height: 200px;
    margin-top: 10px;
    margin-left: 9px;
    table-layout: fixed; 
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
	height: auto;
	vertical-align: top;
	margin-top: 40px;
	margin-left: 35px;
}
#tagID{
	margin-top: 30px;
	margin-left: 20px;
	font-weight: 600;
	color: #4f4f4f;
}
.cate{
	margin-left: 40px;
	font-weight: 400;
	color: #4f4f4f;
}
.pcate{
	margin-left: 40px;
	font-weight: 200;
	color: #4f4f4f;
}
.calendar{
	width: 500px;
	height: 480px;
	margin-top: 40px;
	margin-left:30px;
	float: right;
}
.newpost{
	width: 240px;
	height: auto;
	margin-top: 40px;
	vertical-align: top;
}
#name{
	margin-left: 10px; 
	margin-top: 30px;
	margin-bottom: 30px;
	font-weight:600;
	color: #4f4f4f;
}
	.post_box{
		width: 230px;
		height: 55px; 
		margin: 15px 0 0 10px ;
		cursor: pointer;
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
		
		width:50px;
		white-space: nowrap;
		overflow: hidden; 
		text-overflow: ellipsis;
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
 
.cate, .pcate{
	display: none;
} 
.cate{
	margin-left: 40px;
	font-size:16px;
	font-weight: 600;
}
.pcate{
	margin-left:60px;
	font-size:14px;
	font-weight: 300;
}
#footer {
	color: #fff;
	height: 100px;
	width: 1184px;
	background: black;
	text-align: center;
	line-height: 100px;
	font-size: 12px;
	font-weight: 500;
	opacity: 80%;
	margin: 0 auto;
    bottom: 0;
}
.pagination{
	margin:0 auto;
	justify-content: center; 
	}
</style>
<script>
	$(function(){
		$("#button").click(function(){
		});
		
		$("#tagID").on("click",function(){
			$(".cate").toggle();
		}); 
		$(".cate").on("click", function(){
			let item = $(this).data("cate");
			
			$("div [data-cateName ='"+item+"']").children().toggle();
			
		});
		$(".card").click(function() {
			let pid = $(this).data("pid");
			location.href="/my/${sessionScope.id}/"+pid+"/showDetail";
		});
		$(".post_box").click(function() {
			let pid = $(this).data("pid");
			location.href="/my/${sessionScope.id}/"+pid+"/showDetail";
		});
	});
</script>
</head>
<body>
	<div class="container-fluid">
	
		<!-- 최상단 헤더 메뉴-->
		<div class="header">
	    	<div id="header1">
		        <div id="logo">
	                <p><b>PREV</b></p>
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
	            	<p>${memberInfo.nickname}님</p>
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
	            	<p><a href="logout">로그아웃</a></p>
	            </div>
	        </div>
	        
	        <div class="section">
        		<h3><b>${memberInfo.nickname}의 블로그입니다.</b></h3>
        	</div>
		</div>
		
		<!-- 닉네임님의 블로그입니다 -->
	    
        
        <!-- 중단  -->
		<div class="body-box">
			<!-- 중단 메뉴(홈, 최신글) -->
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
			<!-- 중단 내 글 카드 -->
				<div class="body-body row">
					<c:forEach var="Elist" items="${Elist}">
						<div class="body-card col">
							<div class="card" data-pid="${Elist.pid}">
								<c:if test="${Elist.thumbnail != null}">
									<img src="${Elist.thumbnail}" class="card-img-top">
								</c:if>
								<c:if test="${Elist.thumbnail == null}">
									<img src="/images/no_image.gif" class="card-img-top">
								</c:if>
								<div class="card-body">
									<h5 class="card-title">${Elist.title}</h5>
								</div>
								<div class="card-footer">
									<small class="text-muted">조회 ${Elist.viewcount} · <fmt:formatDate value="${Elist.regdate}" pattern="YYYY.MM.dd" /></small>
								</div>
								<p hidden="${Elist.id}"></p>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<hr id="b-p-hr">
				<!-- 페이지네이션 -->
				<nav class="page" aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				    	<a class="page-link" href="?page=${pager.prev}" aria-label="Previous">
				    		<span aria-hidden="true">&laquo;</span>
				       	 <span class="sr-only">이전</span>
				    	</a>
				    </li>
				    <c:forEach var="postPage" items="${pager.list}">
				    	<li class="page-item">
							<a class="page-link" href="?page=${postPage}">${postPage}</a>
						</li>
					</c:forEach>
					<li>
				      <a class="page-link" href="?page=${pager.next}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">다음</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			<hr id="b-f-hr">
				
			<!-- 하단 -->
			<div class="body-footer">
				<!-- 하단 프로필 카드 -->
				<div class="profile">
					<div id="profileImg">
						<c:if test="${memberInfo.profileImg != null}">
							<img src="/upload/files/${memberInfo.profileImg}">
						</c:if>
						<c:if test="${memberInfo.profileImg == null}">
							<img src="/images/no_profile.png">
						</c:if>
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
				<!-- 하단 카테고리 토글 -->
				<div class="categorys">
					<div id="tagID"> 
						<p>카테고리 전체보기</p>
					</div>
					<div>
		    			<c:if test="${pclist.size() < 1}">
							<li>
								<p class="cate">등록된 카테고리가 없습니다.</p>
							</li>
						</c:if>
						<c:forEach var="item" items="${clist}">
							<p class="cate" data-cate="${item.cname}">${item.cname}</p>
							<div data-cateName="${item.cname}">
								<c:forEach var="pcitem" items="${pclist}">
									<c:if test="${item.cname == pcitem.cname}">
										<p class="pcate">${pcitem.pcname}</p>
									</c:if>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</div>
				
				<!-- 하단 캘린더 -->
				<div class="calendar">
					<jsp:include page="/WEB-INF/views/calendar/main.jsp" ></jsp:include>
				</div>
				<!-- 하단 최신글 -->
				<div class="newpost">
					<p id="name"><b>최신글</b></p>
					<c:forEach var="item" items="${udtlist}">
						<div class="post_box" data-pid="${item.pid}">
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
			</div>
		</div>
		<footer id="footer">
			Copyright ©2021 PREV All Rights Reserved.
		</footer>
	</div>
</body>
</html>