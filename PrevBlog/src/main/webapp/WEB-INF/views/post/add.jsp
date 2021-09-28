<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
a {
text-decoration : none;
color: black;
}

form {
	margin-top: 50px;
}
.home{
	padding-top: 50px;
	padding-left:30px;
	text-decoration: none;
	color:blue;
	font-size: 48px;
	text-align: right;
	/*text-align:right;   */
}
.title{
	padding-top: 20px;
}
.text-hr{
	padding-top: 10px;
}
.add-button{
	margin-top: 10px;
	float: right;
}
</style>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

<script>
$(function() {	
	$("#summernote").summernote({
		  height: 300,
		  minHeight: null,
		  maxHeight: null, 
		  focus: true,
		  placeholder: '내용을 입력하세요.'
        
	});
	
	$("#submit").click(function() {
		let item = $(".note-editing-area img").filter(":first").attr("src");
		
		$("#thumbnail input").val(item);
	});
});
</script>
<link rel="icon" href="data:,">
<title></title>
</head>
<body>
	<div>
		<div class="row">
			<div class="col-2"></div>
				<a href="../../" class="home col-8"><b>Prev</b></a>
		</div>
		<form method="post" >
			<div class="row">
				<div class="col-2"></div>
				<div class="col-2">
				<select name="pcid" class="form-select form-select-sm" >
					<option value="" class="form-select form-select-sm" selected="selected">카테고리</option>
					<c:forEach var="item" items="${categoryList}">
						<option value="${item.pcid}">${item.pcname}</option>
					</c:forEach>
				</select>
				</div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="title col-8">
					<div class="input-group input-group-lg">
					<label  class="input-group-text">제목</label>
					<input type="text" name="title" placeholder="제목을 입력해주세요" class="form-control" aria-label="Sizing example input">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="text-hr col-8">
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="col-8">
					<textarea id="summernote" class="form-control" rows="15" name="content" cols="80" placeholder="내용을 입력해주세요" ></textarea>
				</div>
			</div>
				<div id="thumbnail">
					<input type="hidden" name="thumbnail" value="">
				</div>
			<div class="row">
				<div class="col-4"></div>
					<div class="col-6 float-right">
					<button type="button" class="add-button btn btn-primary col-2 float-right">등록</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>