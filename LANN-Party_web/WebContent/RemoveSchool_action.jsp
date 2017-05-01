<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyAdmin.jsp" %>

<%
	String schoolToRemove = request.getParameter("schoolName");
	StudentUserInterface studentUI = (StudentUserInterface)session.getAttribute("SI");
	boolean worked = studentUI.removeSchool(studentUI.getCurrentStudent().getUserName(), schoolToRemove);
	
	if (worked)
		response.sendRedirect("ManageSavedSchools.jsp?ERROR=0");
	else 
		response.sendRedirect("ManageSavedSchools.jsp?ERROR=1"); 
%>
		