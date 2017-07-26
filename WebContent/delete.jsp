<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List" %>

<%
	//리스트에서 받아올꺼야
	request.setCharacterEncoding("UTF-8");
	
	String password=request.getParameter("password");
	String no=request.getParameter("no");
	
	GuestbookVo vo=new GuestbookVo(Integer.valueOf(no), password);
	
	GuestbookDao bookdao =new GuestbookDao();
	bookdao.delete(vo);
	System.out.println(no+password);
%>

<%
	//리스트주소 줄꺼야
	GuestbookDao dao=new GuestbookDao();
	List<GuestbookVo> list=dao.getList();
	System.out.println(list.toString());

	response.sendRedirect("list.jsp");
%>