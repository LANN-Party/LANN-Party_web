<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyAdmin.jsp" %>

<%
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	Admin a = ai.getCurrentAdmin();
	ai.logout(a.getUserName());
	session.removeAttribute("AI");
	response.sendRedirect("Login.jsp");
	
%>