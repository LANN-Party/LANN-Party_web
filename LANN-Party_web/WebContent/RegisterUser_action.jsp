<%@ page language="java" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>

<% 
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String confirmPassword = request.getParameter("confirmpassword");
	login_cont lc = new login_cont();
	
	//Errors for if an area is left blank
	if(firstName.equals("")) 
		response.sendRedirect("RegisterUser.jsp?Error=1");
	
	else if(lastName.equals(""))
		response.sendRedirect("RegisterUser.jsp?Error=2");
	
	else if(username.equals(""))
		response.sendRedirect("RegisterUser.jsp?Error=3");
	
	else if(password.equals(""))
		response.sendRedirect("RegisterUser.jsp?Error=4");
	
	else if(confirmPassword.equals(""))
		response.sendRedirect("RegisterUser.jsp?Error=5");
	
	else if(!password.equals(confirmPassword))
		response.sendRedirect("RegisterUser.jsp?Error=0");
	
	else if(password.equals(firstName) || password.equals(lastName) || password.equals(username))
		response.sendRedirect("RegisterUser.jsp?Error=7");
	
	else if(password.length() < 5)
		response.sendRedirect("RegisterUser.jsp?Error=8");
	
	else if(lc.registerStudent(firstName, lastName, username, password, 'u', 'Y') == true){
		response.sendRedirect("Login.jsp");
	}
	
	else
		response.sendRedirect("RegisterUser.jsp?Error=6");
%>