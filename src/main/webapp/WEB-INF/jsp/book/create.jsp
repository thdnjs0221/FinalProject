<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 생성하기</title>
</head>
<body>
<!-- 
서버에 전달 되는 항목은 form태그 안에 존재해야함
서버는 name 속성을 키로, value 속성을 값으로 판단

post는 데이터의 변경이 일어날때!
http 파라미터가 주소창에 노출되지 않는다.
  -->
  
 
<h1>책 생성하기</h1>
<form method="POST">
	<p>제목: <input type="text" name="title"/></p>
	<p>카테고리: <input type="text" name="category"/> </p>
	<p>가격: <input type="text" name="price"> </p>
	<p> <input type="submit" value="저장" /> </p>
</form>
</body>
</html>