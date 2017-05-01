                <%@page language="java" import="LANNPartySource.*,java.util.*"%>
<%
AdminUI adminA = (AdminUI)session.getAttribute("AI");
StudentUserInterface studentA= (StudentUserInterface)session.getAttribute("SI");
System.out.println(adminA);
System.out.println(studentA);
if(adminA==null|| adminA.getCurrentAdmin().isLogon()==false)
	if((studentA==null|| studentA.getCurrentStudent().isLoggedOn()==false)){
	response.sendRedirect("Login.jsp?Error=2"); 
}
%>