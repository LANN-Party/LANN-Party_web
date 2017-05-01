                <%@page language="java" import="LANNPartySource.*,java.util.*"%>
<%
AdminUI adminB = (AdminUI)session.getAttribute("AI");
if(adminB==null|| adminB.getCurrentAdmin().isLogon()==false)
	response.sendRedirect("UserMenuPage.jsp?Error=1"); 

%>