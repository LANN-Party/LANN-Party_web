<%@ page language="java" import="LANNPartySource.* , java.util.*" %>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyAdmin.jsp" %>

<%
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	String name = request.getParameter("sName");
	ArrayList<String> emphases = ai.getEmphases(name);
	for(String s: emphases){
		ai.removeEmphasis(name,s);
	}
	response.sendRedirect("View_Editschool.jsp?CHANGE=1&SchoolName="+name);
%>