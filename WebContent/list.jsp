﻿
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List" %>

<%
	//리스트주소 줄꺼야
	GuestbookDao dao=new GuestbookDao();
	List<GuestbookVo> list=dao.getList();
	System.out.println(list.toString());

%>




<!-- 보내기 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="add.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
	<br/>

<%
	for(GuestbookVo vo:list){
		//insert  리스트에서 하나씩 돌아 dao에 getlist씀
%>
		<table width="510" border="1">
			<tr>
				<td><%=vo.getNo() %></td>
				<td><%=vo.getName() %></td>
				<td><%=vo.getRegDate() %></td>
				<td><a href="deleteform.jsp?no=<%=vo.getNo() %>">삭제</a></td>
			</tr>               <!-- 삭제누르면 해당 번호의 삭제 페이지로 연결되야지 -->
			<tr>
				<td colspan=4>안녕하세요<br/><%=vo.getContent() %></td>
			</tr>
		</table>
        <br/>
<%
	}
%>



</body>
</html>