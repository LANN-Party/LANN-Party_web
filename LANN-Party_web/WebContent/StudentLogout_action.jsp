<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%@include file = "VerifyStudent.jsp" %>

<%
	StudentUserInterface si = (StudentUserInterface)session.getAttribute("SI");
	Student s = si.getCurrentStudent();
	si.Logout(s.getUserName());
	session.removeAttribute("SI");
	response.sendRedirect("Login.jsp");
	
%>