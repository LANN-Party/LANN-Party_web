<%@ page language="java" import="LANNPartySource.* , java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyStudent.jsp" %>
    
<% 
StudentUserInterface si = (StudentUserInterface)session.getAttribute("SI");
String sName = request.getParameter("schoolName");
si.saveSchool(si.getCurrentStudent().getUserName(), sName);
response.sendRedirect("UserMenuPage.jsp");
%>