<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>
<%
	//GETTING ALL VARIABLES FROM PAGE
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	char type = request.getParameter("type").charAt(0);
	char status = request.getParameter("status").charAt(0);
	StudentUserInterface ui = (StudentUserInterface)session.getAttribute("SI");
	
	//EDITS INFO
	ui.editInfo(username, firstname, lastname, password, type, status);
	
	//SENDS REDIRECT
	response.sendRedirect("UserMenuPage.jsp?CHANGE=1");
	
	
%>