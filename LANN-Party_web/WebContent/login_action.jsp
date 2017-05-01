<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>

<%
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	login_cont loginCont = new login_cont();
	int logStatus = loginCont.logon(username, password, true);
	ExtraInfoExtractor eie = new ExtraInfoExtractor();
	session.setAttribute("EIE",eie);
	
	if(logStatus == 1){
		StudentUserInterface SI = new StudentUserInterface();
		SI.setCurrentStudent(loginCont.getCurrentStudent());
		session.setAttribute("SI", SI);
		response.sendRedirect("UserMenuPage.jsp");
	}
	else if(logStatus == 2){
		AdminUI AI = new AdminUI();
		AI.setCurrentAdmin(loginCont.getCurrentAdmin());
		session.setAttribute("AI", AI);
		response.sendRedirect("AdminMenu.jsp");
	}
	else if(logStatus == 0){
		response.sendRedirect("Login.jsp?Error=1");
	}
	else if(logStatus ==3){
		response.sendRedirect("Login.jsp?Error=3");
	}
	
%>