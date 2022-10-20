<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 정말 삭제하시겠습니까? </title>
</head>
<body>
 		<h2> 삭제 페이지 </h2>

 		<form action="deleteAction" methods="post">
				<table width="500" cellpadding="0" cellspacting="0" border="1">
				
				<tr>
					<td>번호</td>
					<td><input type="text" name="writer_idx" value="" size="50"></td>
				</tr>
			
				<tr>
					<td colspan="1">
					 <input type="submit" value="삭제">&nbsp;&nbsp;
						<a href="/listForm"><input type="button" value="돌아가기"></a>
					</td>
				</tr>
				
			
				</table>	
			</form>
</body>
</html>