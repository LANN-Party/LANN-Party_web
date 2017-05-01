                <%@page language="java" import="LANNPartySource.*,java.util.*"%>
<%
StudentUserInterface studentB= (StudentUserInterface)session.getAttribute("SI");
	if((studentB==null|| studentB.getCurrentStudent().isLoggedOn()==false))
	response.sendRedirect("AdminMenu.jsp?Error=1"); 
%>