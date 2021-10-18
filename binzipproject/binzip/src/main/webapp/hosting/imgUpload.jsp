<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function plusFile(){
	   var uploadEl = document.all.uploadLabel.innerHTML;
	   document.all.uploadLabel.innerHTML = uploadEl+'<br> <input type="file" name="imgupload" accept="image/*">';
	}
</script>
</head>
<body>
<form name="imgUpload" action="imgUpload_ok.jsp" method="post" enctype="multipart/form-data">
	<fieldset>
		<legend>이미지업로드</legend>
		<label id="uploadLabel">ZIP 사진 올리기</label><br>
		<input type="file" name="imgupload" accept="image/*"><a onclick="plusFile();" style="cursor:pointer; color:blue;">추가</a><br>
		<input type="submit" value="이미지올리기">
	</fieldset>
</form>
</body>
</html>