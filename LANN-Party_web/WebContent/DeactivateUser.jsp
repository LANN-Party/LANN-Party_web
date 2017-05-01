<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%@include file = "verifyLogin.jsp" %>

<% 
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	String uName = request.getParameter("Username");
	boolean t = ai.deactivateUser(uName);
	if(t==true)
		response.sendRedirect("ManageUsers.jsp");
	else
		response.sendRedirect("ManageUsers.jsp?Error=1");
%>