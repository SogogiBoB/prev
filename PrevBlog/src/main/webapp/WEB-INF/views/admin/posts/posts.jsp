<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

<script>
	$(function(){
		$("td").on("click", ".pUpdate", function(){
			 let item_={
				pid:$(this).parent().siblings(".pid").text(),
				title:$(this).parent().siblings(".title").text(),
				regdate:$(this).parent().siblings(".regdate").text(),
				id:$(this).parent().siblings(".id").text()
			};
			$("#updateModal .pid").val(item_.pid);
			$("#updateModal .title").val(item_.title);
			$("#updateModal .regdate").val(item_.regdate);
			$("#updateModal .id").val(item_.id);
			
			 console.log("클릭");
			$("#updateModal").modal("show");
		});
		$("#updateModal .update").click(function(){
			let item={
				title:$("#updateModal .title").val(),
				id:$("#updateModal .id").val()
			};
			$.ajax("/admin/pUpdate",{
				method:"PATCH",
				data: JSON.stringify(item),
				contentType:"application/json",
				dataType:"json",
				success: function(data_){
					console.log("성공");
					$("#updateModal").modal("hide");
					
					location.reload();
				}
			});
		});
	});
		
</script>
</head>
<body>
	<div>
		<h3>글관리</h3>
		<div>
			<table class="table table-hover" border="1">
				<thead>
					<tr class="table-light">
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>id</th>
						<th>카테고리명</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${posts.size() < 1}">
						<tr>
							<td colspan="6">등록된 포스트가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${posts}">
						<tr>
							<td class="pid">${item.pid}</td>
							<td class="title"><a href="showDetail?pid=${item.pid}">${item.title}</a></td>
							<td class="regdate"><fmt:formatDate value="${item.regdate}" pattern="yyyy년 MM월 dd일 HH:mm"/></td>
							<td class="id">${item.id}</td>
							<td class="pcname">${item.pcname}</td>
							<td><a href="pDelete?pid=${item.pid}" class="btn">삭제</a><p class="pUpdate btn">변경</p></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="./">이전</a>
		</div>
	</div>
		<!--변경 모달  -->
	<div class="modal fade" id="updateModal" tabindex="-1"
		aria-labelledby="updateModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="updateModalLabel">포스트 수정</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-2">
						<label class="form-label">글번호</label><input type="text" class="pid form-control form-control-sm" readonly>
					</div>
					<div class="mb-2">
						<label class="form-label">제목</label><input type="text" class="title form-control form-control-sm">
					</div>
					<div class="mb-2">
						<label class="form-label">날짜</label><input type="text" class="regdate form-control form-control-sm" readonly>
					</div>
					<div class="mb-2">
						<label class="form-label">작성자</label><input type="text" class="id form-control form-control-sm">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="update btn btn-primary">변경</button>
				</div>
			</div>
		</div>
	</div>
	<script	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
	<script  src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
</body>
</html>