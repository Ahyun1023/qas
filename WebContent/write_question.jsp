<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="js/write_question.js?v=<%=System.currentTimeMillis() %>" type="text/javascript"></script>
<link href="css/write_question.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>QAS</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h1>질문 작성하기</h1>
	<form name="questionForm" class='questionForm'>
		<span class='Qtitle'>Q.&nbsp;</span><input type='text' name='title' id="title" class='title' maxlength="80" />
		<select name='category' id='category' class='category'>
			<option value=''>--선택--</option>
			<option value='교육'>교육</option>
			<option value='게임'>게임</option>
			<option value='건강'>건강</option>
			<option value='여행'>여행</option>
			<option value='쇼핑'>쇼핑</option>
			<option value='생활'>생활</option>
		</select>
		<p class='counting'><span id='title_count'>0</span>/80</p>
		<textarea name='content' id='content' class='content' cols='30' rows='10' maxlength='2000'></textarea>
		<p class='counting'><span id='content_count'>0</span>/2000</p>
		<br>
		<input type='button' onclick='saveQ()' value='질문 저장' class='saveQ' />
	</form>
</body>
</html>