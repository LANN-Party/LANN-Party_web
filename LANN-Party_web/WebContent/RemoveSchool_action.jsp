<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>
<%
	String schoolToRemove = request.getParameter("schoolName");
	StudentUserInterface studentUI = (StudentUserInterface)session.getAttribute("SI");
	boolean worked = studentUI.removeSchool(studentUI.getCurrentStudent().getUserName(), schoolToRemove);
	
	if (worked)
		response.sendRedirect("ManageSavedSchools.jsp?ERROR=0");
	else
		response.sendRedirect("ManageSavedSchools.jsp?ERROR=1");
%>
		