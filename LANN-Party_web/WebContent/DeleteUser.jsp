<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%@include file = "verifyLogin.jsp" %>

<%
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	String uName = request.getParameter("Username");
	ai.deleteUser(uName);
	response.sendRedirect("ManageUsers.jsp?CHANGE=2");
%>