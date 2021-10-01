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
<link href="/css/main.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
		            	<c:if test="${sessionScope.member.profileImg != null}">
		            		<img src="/upload/files/${sessionScope.member.profileImg}">
		            	</c:if>
		            	<c:if test="${sessionScope.member.profileImg == null}">
		            		<img src="/images/no_profile.png">
		            	</c:if>
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
		            	<c:choose>
			            	<c:when test="${sessionScope.member.profileImg != null}">
				            	<img src="/upload/files/${sessionScope.member.profileImg}">
				           	</c:when>
				           	<c:otherwise>
				           		<img src="/images/no_profile.png">
				           	</c:otherwise>
			           	</c:choose>
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
			<div class="card_box">
				<c:forEach var="item" items="${list}">
					<div class="card" data-pid="${item.pid}">
						<div class="card_body">
							<p class="card_text">${item.title}</p>
						</div>
						<div class="img_section">
							<c:if test="${item.thumbnail != null}">
								<img src="${item.thumbnail}" class="card_img_top">
							</c:if>
							<c:if test="${item.thumbnail == null}">
								<img src="/images/no_image.gif" class="card_img_top">
							</c:if>
						</div>
						<div class="profile_section_in_card">
							<div class="profileImg_in_card">
								<img src="/upload/files/${item.profileImg}">
							</div>
							<div class="user_in_card">
								<p>${item.id}</p>
							</div>
							<div class="regdate_in_card">
								<p><fmt:formatDate value="${item.regdate}" pattern="yyyy.MM.dd"/></p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		
		<div id="popular">
			<h2>인기글</h2>
			<p id="popular_info">다양한 카테고리의 인기글을 만나보세요.</p>
			<div class="pop_card_box">
				<div class="cname_box">
					<h3>여행</h3>
					<div id="line_under_cname"></div>
				</div>
				<c:forEach var="result" items="${result}">
					<c:if test="${result.cname=='여행'}">
						<div class="card" data-pid="${result.pid}">
							<div class="card_body">
								<p class="card_text">${result.title}</p>
							</div>
							<div class="img_section">
								<c:if test="${result.thumbnail != null}">
									<img src="${result.thumbnail}" class="card_img_top">
								</c:if>
								<c:if test="${result.thumbnail == null}">
									<img src="/images/no_image.gif" class="card_img_top">
								</c:if>
							</div>
							<div class="profile_section_in_card">
								<div class="profileImg_in_card">
									<img src="/upload/files/${result.profileImg}">
								</div>
								<div class="user_in_card">
									<p>${result.id}</p>
								</div>
								<div class="regdate_in_card">
									<p><fmt:formatDate value="${result.regdate}" pattern="yyyy.MM.dd"/></p>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
			
			<div class="pop_card_box">
				<div class="cname_box">
					<h3>음악</h3>
					<div id="line_under_cname"></div>
				</div>
				<c:forEach var="result" items="${result}">
					<c:if test="${result.cname=='음악'}">
						<div class="card" data-pid="${result.pid}">
							<div class="card_body">
								<p class="card_text">${result.title}</p>
							</div>
							<div class="img_section">
								<c:if test="${result.thumbnail != null}">
									<img src="${result.thumbnail}" class="card_img_top">
								</c:if>
								<c:if test="${result.thumbnail == null}">
									<img src="/images/no_image.gif" class="card_img_top">
								</c:if>
							</div>
							<div class="profile_section_in_card">
								<div class="profileImg_in_card">
									<img src="/upload/files/${result.profileImg}">
								</div>
								<div class="user_in_card">
									<p>${result.id}</p>
								</div>
								<div class="regdate_in_card">
									<p><fmt:formatDate value="${result.regdate}" pattern="yyyy.MM.dd"/></p>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
		
		<div id="how_about_this">
			<div id="how_info">
				<h3>이 블로그 어때요?</h3>
				<p>친구가 되어서 새로운 소식을 만나보세요.</p>
			</div>
			<div id="how_inner_box">
			<c:forEach var="memberInfo" items="${memberList}">
			<div class="how_profile">
				<c:if test="${memberInfo.profileImg!=null}">
	                <div id="how_profileImg">
	                	<img src="/upload/files/${memberInfo.profileImg}">
	                </div>
                </c:if>
                <c:if test="${memberInfo.profileImg==null}">
	                <div id="how_profileImg">
	                	<img src="/images/no_profile.png">
	                </div>
                </c:if>
                <div>
                    <p id="how_nickname"><b>${memberInfo.nickname}</b></p>
                    <c:if test="${memberInfo.pr == null}">
                    	<p class="how_pr">안녕하세요 ${memberInfo.nickname}의 블로그입니다.</p>
                    </c:if>
                    <c:if test="${memberInfo.pr != null}">
                        <p class="how_pr">${memberInfo.pr}</p>
                    </c:if>
                </div>
                <div id="how_button_box">
                    <button onclick="location.href='../../my/${memberInfo.id}'" id="go_to_blog">블로그 가기</button>
            	</div>
        	</div>
        	</c:forEach>
        	</div>
		</div>
		
		<footer>
			
		</footer>
    </div>
</body>
</html>
