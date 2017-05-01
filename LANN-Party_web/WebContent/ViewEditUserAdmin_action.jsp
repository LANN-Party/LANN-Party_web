<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyAdmin.jsp" %>

<%
	//GETTING ALL VARIABLES FROM PAGE
	String username = request.getParameter("username");
    String password = request.getParameter("password");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	char type = request.getParameter("type").charAt(0);
	char status = request.getParameter("status").charAt(0);
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	
	//EDITS INFO
	ai.editUser(username, firstname, lastname, password, type, status);
	
	//SENDS REDIRECT
	response.sendRedirect("ManageUsers.jsp?CHANGE=1");
	
	
%>