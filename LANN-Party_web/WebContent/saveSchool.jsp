<%@ page language="java" import="LANNPartySource.* , java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
StudentUserInterface uc = (StudentUserInterface)session.getAttribute("SI");
String sName = request.getParameter("schoolName");
uc.saveSchool(uc.getCurrentStudent().getUserName(), sName);
response.sendRedirect("UserMenuPage.jsp");
%>