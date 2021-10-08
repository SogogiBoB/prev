<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		$("td").on("click", ".cUpdate", function(){
			let item_={
				cid : $(this).parent().parent().data("cid"),
				cname : $(this).parent().siblings(".cname").text()
			};
			
			$("#updateModal .cid").val(item_.cid);
			$("#updateModal .cname").val(item_.cname);
			
			$("#updateModal").modal("show");
		});
		
		$("#updateModal .update").click(function(){
			let item_={
				cid: $("#updateModal .cid").val(),
				cname: $("#updateModal .cname").val()
			};
			$.ajax("/admin/cUpdate",{
				method:"PATCH",
				data: JSON.stringify(item_),
				contentType:"application/json",
				dataType:"json",
				success: function(data_){
					$("#updateModal").modal("hide");
					
					location.reload();
				}
			});
		});
		
		$("div").on("click",".cAdd", function(){
			$("#addModal").modal("show");
		});
		
		$("#addModal .add").click(function(){
			const item = {
				cname: 	$("#addModal .cname").val()
			};
			
			$.ajax("/admin/cAdd",{
				method:"PUT",
				data: JSON.stringify(item),
				contentType:"application/json",
				dataType:"json",
				success: function(data_){
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
		<h3>카테고리 관리</h3>
		<div>
			<table class="table table-hover" border="1">
				<thead>
					<tr class="table-light">
						<th>번호</th>
						<th>카테고리명</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${categorys.size() < 1}">
						<tr>
							<td colspan="4">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${categorys}">
						<tr data-cid="${item.cid}">
							<td class="cid">${item.cid}</td>
							<td class="cname">${item.cname}</td>
							<td><a href="cDelete?cid=${item.cid}" class="btn">삭제</a><p class="cUpdate btn">변경</p></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<p class="cAdd btn">등록</p>
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
					<h5 class="modal-title" id="updateModalLabel">카테고리 수정</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="hidden" class="cid">
					<div class="mb-2">
						<label class="form-label">카테고리번호</label><input type="text" class="cid form-control form-control-sm" readonly>
					</div>
					<div class="mb-2">
						<label class="form-label">카테고리명</label><input type="text" class="cname form-control form-control-sm">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="update btn btn-primary">변경</button>
				</div>
			</div>
		</div>
	</div>
	<!--등록 모달  -->
	<div class="modal fade" id="addModal" tabindex="-1"
		aria-labelledby="addModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addModalLabel">카테고리 등록</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-2">
						<label class="form-label">카테고리명</label><input type="text" class="cname form-control form-control-sm">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="add btn btn-primary">등록</button>
				</div>
			</div>
		</div>
	</div>
	<script	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
	<script  src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
</body>
</html>