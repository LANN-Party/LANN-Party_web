<%@ page language="java" import="LANNPartySource.* , java.util.*" %>
<%
AdminUI ac = (AdminUI)session.getAttribute("AI");
String fName = request.getParameter("firstname");
String lName = request.getParameter("lastname");
String uName = request.getParameter("");
String pWord = request.getParameter("");
char type = request.getParameter("").charAt(0);
char status = request.getParameter("").charAt(0);
ac.addUser(uName, fName, lName, pWord, type, status);
response.sendRedirect("AdminMenu.jsp");
%>