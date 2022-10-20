<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<h2> 글 내용</h2>
			
			<form action="updateAction" methods="post">
				<table width="500" cellpadding="0" cellspacting="0" border="1">
				
				<input type="hidden" name="writer_idx" value="${dto.writer_idx}">
				<input type="hidden" name="writer_hit" value="${dto.writer_hit}">
				
				
				<tr>
						<td>번호</td>
						<td>${ dto.writer_idx }</td>
				</tr>
				
				<tr>
						<td>조회수</td>
						<td>${ dto.writer_hit }</td>
				</tr>
				
				<tr>
						<td>이름</td>
						<td><input type="text" name="writer_name" value= "${ dto.writer_name}" size="50"></td>
				</tr>
				
				<tr>
						<td>제목</td>
						<td><input type="text" name="writer_title" value= "${ dto.writer_title}" size="50"></td>
				</tr>
				
				<tr>
						<td>내용</td>
						<td><input type="text" name="writer_content" value= "${ dto.writer_content}" size="50"></td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" value="수정하기">
						<a href="listForm"><input type="button" value="돌아가기"></a>
					</td>
				</tr>
				
				
				</table>	
			</form>
			
			
</body>
</html>