<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.reply_box {
	border: 1px solid black;
	height: auto;
	width: 700px;
}
#reply_list {
	border: 1px solid black;
	height: auto;
	width: 400px;
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
			
			console.log(item_.rid);
			
		
				$("#updateModal").modal("show");
		
		});
		
		$("#updateModal .update").click(function() {
			let item_ = {
				rid: $("#updateModal .rid").val(),
				id: $("#updateModal .id").val(),
				content: $("#updateModal .content").val(),
				regdate: ""
			};
			
			$.ajax("/api", {
				method : "PATCH",
				data: JSON.stringify(item_),
				contentType: "application/json",
				dataType: "json",
				success: function(data_) {
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
	<div>
		<p>${item.pid}</p>
		<p>${item.title}</p>
		<p>${item.content}</p>
		<p><fmt:formatDate value="${item.regdate}" pattern="yyyy년 MM월 dd일"/></p>
		<p>${item.viewcount}</p>
	</div>
	<div class="reply_box">
		<p>댓글 목록</p>
		<div>
			<form method="post" action="${item.pid}/insert">
				<label>입력</label>
				<input type="text" name="content">
				<button type="submit">댓글등록</button>
			</form>
		</div>
		<div id="reply_list">
			<c:if test="${replyList.size() < 1}">
				<div>
					<p>노댓글</p>
				</div>
			</c:if>
			<c:forEach var="reply" items="${replyList}">
				<div data-rid="${reply.rid}">
					<p class="id">${reply.id}</p>
					<p class="content">${reply.content}</p>
					<p class="regdate"><fmt:formatDate value="${reply.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
					<c:if test="${sessionScope.member.id==reply.id}">
						<button class="update">변경</button>
						<button class="delete">삭제</button>
					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>
	<a href="../">이전</a>
	
	<!--변경 모달  -->
	<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="updateModalLabel">설문지 등록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	<input type="hidden" class="rid">
	      	<div class="mb-2">
				<label class="form-label">아이디</label>
				<input type="text" class="id form-control form-control-sm" readonly>
			</div>
			<div class="form-floating">
				<input type="text" placeholder="내용" class="content form-control form-control-sm">
				<label>제목</label>
			</div>
			<div>
				<label class="form-label">등록일</label>
				<input type="text" class="regdate form-control form-control-sm" readonly>
			</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
	        <button type="button" class="update btn btn-primary">변경</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
</body>
</html>