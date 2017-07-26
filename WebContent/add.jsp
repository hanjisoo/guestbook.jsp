<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List" %>

<%
	//리스트주소 줄꺼야
	GuestbookDao dao=new GuestbookDao();
	List<GuestbookVo> list=dao.getList();
	System.out.println(list.toString());

	response.sendRedirect("list.jsp");
%>

<%
	//리스트에서 받아올꺼야
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String password=request.getParameter("pass");
	String content=request.getParameter("content");
	
	GuestbookVo vo=new GuestbookVo(name,  password, content);
	
	GuestbookDao bookdao =new GuestbookDao();
	bookdao.insert(vo);
	System.out.println(name+password+content);
%>