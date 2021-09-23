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
</style>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script>
$(function() {
	let files;
	
	$("#summernote").summernote({
		height: 500,
		minHeight: null,
		maxHeight: null,
		focus: true,
		callbacks : {
			onImageUpload : function(files, editor, welEditable) {
				showFiles(files[0]);
				
				for(let i=0; i<files.legnth-1; i++){
					files[i];
			 		showFiles(files[i], this);
				}
			}
		}
	});
	
	function showFiles(files, el) {
		console.log(files);
		console.log(files.name);
		let url = '../post/add.jsp';
		let filename = files.name;
		
		$(el).summernote('insertImage', url, filename);
	}
});
</script>

<title></title>
</head>
<body>
	<div>
		<form method="post" id="postForm" action="/add">
			<div>
				<select name="pcid" >
					<option value="" selected="selected">카테고리</option>
					<c:forEach var="item" items="${categoryList}">
						<option value="${item.pcid}">${item.pcname}</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<label>제목</label>
				<input type="text" name="title" placeholder="제목을 입력해주세요">
			</div>
			<div>
				<label>내용</label>
				<textarea id="summernote" class="form-control" rows="15" name="content" cols="80" placeholder="내용을 입력해주세요" ></textarea>
			</div>

			<button>등록</button>
		</form>
	</div>
	<div>
		<a href="../../">처음으로</a>
	</div>
</body>
</html>