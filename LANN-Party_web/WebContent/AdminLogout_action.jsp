<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%@include file = "verifyLogin.jsp" %>

<%
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	Admin a = ai.getCurrentAdmin();
	ai.logout(a.getUserName());
	response.sendRedirect("Login.jsp");
	
%>