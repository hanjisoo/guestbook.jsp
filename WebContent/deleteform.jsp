<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<% String no=request.getParameter("no"); %>
	<!-- 번호를 불러주고 그걸 담아주고 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="delete.jsp">
	<input type='text' name="no" value="<%=no%>">
		<!--hidden으로 숨겨줌 숫자보여주고 우리눈에 -->
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="등록"></td>
			<td><a href="list.jsp">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
</html>