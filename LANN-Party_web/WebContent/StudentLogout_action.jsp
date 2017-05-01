<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%
	StudentUserInterface si = (StudentUserInterface)session.getAttribute("SI");
	Student s = si.getCurrentStudent();
	si.Logout(s.getUserName());
	response.sendRedirect("Login.jsp");
	
%>