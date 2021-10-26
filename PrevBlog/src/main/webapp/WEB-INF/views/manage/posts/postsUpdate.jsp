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
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script>
$(function() {	
	$("#summernote").summernote();
	
	$("#submit").click(function() {
		let item = $(".note-editing-area img").filter(":first").attr("src");
		
		$("#thumbnail input").val(item);
	});
});
</script>
<style>
.form-select {
	width: 200px;
}
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<div class="row mx-1 my-2">
				<select name="pcid" class="form-select">
					<option value="" selected="selected">카테고리</option>
					<c:forEach var="tem" items="${pcateList}">
						<option value="${tem.pcid}" ${tem.pcid==item.pcid?'selected':''}>${tem.pcname}</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<label class="form-label">제목</label>
				<input class="form-control mb-2" type="text" name="title" value="${item.title}">
			</div>
			<div>
				<label class="form-label">내용</label>
				<textarea id="summernote" rows="15" name="content" cols="80">${item.content}</textarea>
			</div>
			<div id="thumbnail">
				<input type="hidden" name="thumbnail" value="">
			</div>
			<button id="submit" class="btn btn-sm btn-primary my-2">등록</button>
		</form>
		
		<div>
			<a href="../" class="btn btn-sm btn-secondary">처음으로</a>
		</div>
	</div>
	
</body>
</html>
