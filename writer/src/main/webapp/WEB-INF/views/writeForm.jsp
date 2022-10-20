<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 정보 입력 창</title>
</head>
<body>
			<h2> 글 쓰기</h2>
			
			<form action="writeAction" methods="post">
				<table width="500" cellpadding="0" cellspacting="0" border="1">
				
				<tr>
					<td>이름</td>
					<td><input type="text" name="writer_name" value="" size="50"></td>
				</tr>
				
				<tr>
					<td>제목</td>
					<td><input type="text" name="writer_title" value="" size="50"></td>
				</tr>
				
				<tr>
					<td>내용</td>
					<td><textarea rows="10" cols="50" name="writer_content"></textarea></td>
				</tr>
				
				<tr>
					<td colspan="2">
					 <input type="submit" value="글쓰기">&nbsp;&nbsp;
					<a href="/listForm"><input type="button" value="목록보기"></a>
					</td>
				</tr>
				
				
				</table>	
			</form>
</body>
</html>