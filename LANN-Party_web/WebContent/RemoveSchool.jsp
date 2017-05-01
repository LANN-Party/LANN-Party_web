<%@ page language="java" import="LANNPartySource.* , java.util.*" %>
<%@include file = "verifyLogin.jsp" %>

<% 
	String name = request.getParameter("SchoolName");
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	if(ai.removeSchool(name))
		response.sendRedirect("ManageUniversities.jsp?Error=0");
	else
		response.sendRedirect("ManageUniversities.jsp?Error=1");
%>