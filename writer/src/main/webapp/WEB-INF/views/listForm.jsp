<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 간단한 게시판 </title>
</head>
<style>
	* {
		margin : 0 auto;
		padding : 0 auto;
		overflow : hidden;
		
	
	}
	td, h2{
		text-align: center;
	}
</style>
<body>
		<h2>게시판 목록</h2>
		
		<table width="800" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>제목</th>
				<th>내용</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
			
			<c:forEach var="dto" items="${list}">
			<tr>
				<th>${dto.writer_idx}</th>
				<th>${dto.writer_name}</th>
				<th><a href="contentForm?writer_idx=${dto.writer_idx}">${dto.writer_title}</a></th>
				<th>${dto.writer_content}</th>
				<th>
						<!-- 	<c:set var="dateVar" value="${dto.writer_date} "/> String -> Date Format 이 안됐기에 출력안됨. -->
							<fmt:formatDate value="${dto.writer_date}" pattern="YYYY-MM-dd a HH:mm:ss"/>
				</th>
				<th>${dto.writer_hit}</th>
				
			</tr>
			</c:forEach>
			
			<tr>
				<td colspan="5"><a href="writeForm">글 작성</a></td>
			</tr>
	
			<tr>
				<td colspan="5"><a href="deleteForm">글 삭제</a></td>
			</tr>
		</table>
</body>
</html>