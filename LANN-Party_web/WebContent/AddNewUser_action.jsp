<%@ page language="java" import="LANNPartySource.* , java.util.*" %>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyAdmin.jsp" %>

<%
AdminUI ac = (AdminUI)session.getAttribute("AI");
String fName = request.getParameter("firstname");
String lName = request.getParameter("lastname");
String uName = request.getParameter("username");
String pWord = request.getParameter("password");
if(request.getParameter("type").equals("") || request.getParameter("status").equals("")){
	response.sendRedirect("AddNewuser.jsp?Error=3");
	return;	
}
char type = request.getParameter("type").charAt(0);
char status = request.getParameter("status").charAt(0);
if(status != 'Y' && status != 'N' && status != 'y' && status != 'n'){
	response.sendRedirect("AddNewuser.jsp?Error=1");
	return;	
}
else if(type != 'a' && type != 'A' && type != 'u' && type != 'U'){
	response.sendRedirect("AddNewuser.jsp?Error=2");
	return;
}
ac.addUser(uName, fName, lName, pWord, type, status);
response.sendRedirect("ManageUsers.jsp?CHANGE=3");
%>