                <%@page language="java" import="LANNPartySource.*,java.util.*"%>
<%
AdminUI adminA = (AdminUI)session.getAttribute("AI");
StudentUserInterface studentA= (StudentUserInterface)session.getAttribute("SI");
if(adminA==null|| adminA.getCurrentAdmin().isLogon()==false)
	if((studentA==null|| studentA.getCurrentStudent().isLoggedOn()==false)){
	response.sendRedirect("Login.jsp?Error=2"); 
}
%>