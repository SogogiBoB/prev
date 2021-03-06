<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:,">
<title></title>
<style>
.header {
	width: 1100px;
	margin: 0 auto;
}
.header #logo, #line, #header-menu{
    margin-top: 14px;
    margin-left:50px;
    text-decoration: none;

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
    font-size:14px ;
    margin-left: 5px;
    cursor: pointer;
    text-decoration: none;
    color: #4f4f4f;
}
.box {
	width: 1000px;
	height: auto;
	margin: 0 auto;
}

#home {
	text-decoration: none;
	color: blue;
}

#nickname {
	font-size: 24px;
	text-align: left;
	margin-top: 50px;
}

#hr1 {
	padding: 2px;
}

#title {
	font-size: 48px;
	text-align: center;
	margin-top: 60px;
}

#percategory {
	font-size: 18px;
	text-align: center;
}

#hr2 {
	margin-top: 60px;
}
#content{
	margin-top: 20px;
	font-size: 24px;
}
.content-box {
	width: 850px;
	height: auto;
	margin: 0 auto;
}

#contentInfo {
	display: inline-block;
	font-size: 12px;
}
#hr3 {
	margin-top: 30px;
}
.reply_box {
	padding-top: 30px;
	width: 850px;
	height: auto;
	margin: 0 auto;
	padding-bottom: 60px;
}

#reply_list {
	margin-top: 60px;
} 
.reply-button{
	float: right;
	margin-top:10px; 
}
.id, .regdate, .update, .delete{
	text-align: right;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

<script>
	$(function() {	
		$("div").on("click", ".delete", function(){
			const rid_= $(this).parent().data("rid");
			
			$.ajax("/api/" + rid_, {
				method:"DELETE",
				contentType: "application/json",
				dataType: "json",
				success: (data_, status_) =>{
					if(rid_ == data_){
						$("div[data-rid='"+rid_+"']").remove();
					};
				}
			});
		});
		
		$("div").on("click", ".update", function() {	
			let item_ = {
				rid : $(this).parent().data("rid"),
				id: $(this).siblings(".id").text(),
				content: $(this).siblings(".content").text(),
				regdate: $(this).siblings(".regdate").text(),
			};
			
			$("#updateModal .rid").val(item_.rid);
			$("#updateModal .id").val(item_.id);
			$("#updateModal .content").val(item_.content);
			$("#updateModal .regdate").val(item_.regdate);
			
			$("#updateModal").modal("show");

		});
		
		$("#updateModal .update").click(function() {
			let item_ = {
				rid: $("#updateModal .rid").val(),
				id: $("#updateModal .id").val(),
				content: $("#updateModal .content").val(),
			};
			
			$.ajax("/api", {
				method : "PATCH",
				data: JSON.stringify(item_),
				contentType: "application/json",
				dataType: "json",
				success: function(data_) {
					console.log(data_.regdate);
					
					$("div[data-rid='"+data_.rid+"'] .content").text(data_.content);
					$("div[data-rid='"+data_.rid+"'] .regdate").text(data_.regdate);
				}
			});
			 
			$("#updateModal").modal("hide");
		});
	});
</script>
</head>
<body>
	<div class="header">
		<div id="logo">
			<a id="home" href="/"><b>PREV</b></a>
	    </div>
	    <div class="line">
	    	|
	    </div>
	    <div class="header-menu">
	    	<p><a href="../">??? ?????????</a></p>
	    </div>
	</div>
	<div class="box">
		<p id="nickname">
			<b style="font-size: 36px">${item.nickname}</b> ?????? ???
		</p>
		<hr id="hr1">
		<p id="title">${item.title}</p>
		<p id="percategory">${item.pcname}</p>
		<div class="content-box">
		<hr id="hr2">
			<div id="content">${item.content}</div>
				<div style="text-align: right;"><fmt:formatDate value="${item.regdate}" pattern="yyyy??? MM??? dd???" />  |  ????????? ${item.viewcount}</div>
	<hr id="hr3">
	</div>
	<div class="reply_box">
		<div class="mb-3">
			<div>
				<form method="post" action="/${item.pid}/insert">
					<div class="form-floating">
  						<textarea name="content" class="form-control" id="floatingTextarea2" style="height: 100px"></textarea>
  						<label for="floatingTextarea2">????????? ???????????????.</label>
					</div>
					<button type="submit" class="reply-button btn btn-primary btn-sm">????????????</button>
				</form>
			</div>
		</div>
			<div id="reply_list">
				<c:if test="${replyList.size() < 1}">
					<div>
						<p>????????? ????????? ????????????.</p>
					</div>
				</c:if>
				<c:forEach var="reply" items="${replyList}">
					<div data-rid="${reply.rid}" class="list-group-item list-group-item-action">
						<h5 class="content mb-1">${reply.content}</h5>
						<small class="id text-muted">${reply.id}</small>
						<small class="regdate text-muted">
							<fmt:formatDate value="${reply.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
						</small>
						<c:if test="${sessionScope.member.id==reply.id}">
							<button class="update btn btn-outline-secondary btn-sm">??????</button>
							<button class="delete btn btn-outline-danger btn-sm">??????</button>
						</c:if>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!--?????? ??????  -->
	<div class="modal fade" id="updateModal" tabindex="-1"
		aria-labelledby="updateModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="updateModalLabel">????????? ??????</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="hidden" class="rid">
					<div class="mb-2">
						<label class="form-label">?????????</label> <input type="text" class="id form-control form-control-sm" readonly>
					</div>
					<div class="form-floating">
						<input type="text" placeholder="??????" class="content form-control form-control-sm"> <label>??????</label>
					</div>
					<div>
						<label class="form-label">?????????</label> <input type="text" class="regdate form-control form-control-sm" readonly>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
					<button type="button" class="update btn btn-primary">??????</button>
				</div>
			</div>
		</div>
	</div>
	<script	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
	<script  src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
</body>
</html>