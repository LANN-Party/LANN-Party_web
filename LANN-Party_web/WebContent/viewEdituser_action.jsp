<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyStudent.jsp" %>

<%
	//GETTING ALL VARIABLES FROM PAGE
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	char type = request.getParameter("type").charAt(0);
	char status = request.getParameter("status").charAt(0);
	if(status != 'Y' && status != 'N' && status != 'y' && status != 'n'){
		response.sendRedirect("Veiw_Edituser.jsp?Error=1");
		return;	
	}
	StudentUserInterface ui = (StudentUserInterface)session.getAttribute("SI");
	
	//EDITS INFO
	ui.editInfo(username, firstname, lastname, password, type, status);
	
	//SENDS REDIRECT
	response.sendRedirect("UserMenuPage.jsp?CHANGE=1");
	
	
%>