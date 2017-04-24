<%@ page language="java" contentType="text/html; charset=UTF-8" import="LANNPartySource.* , java.util.*" 
    pageEncoding="UTF-8"%>
<html>
<head>
<style>
a: link{ 
	color: red; 
	background-color: transparent;
	text-decoration: none;
}
a: hover{	
	color: red;
	background-color: transparent;
	text-decoration: none;
}
</style>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">

<title>userMenuPage</title>

</head>
<body>

<%
	UserController uc = new UserController();
	session.setAttribute("UC",uc); 
	String change = request.getParameter("CHANGE");
	
	if (change!=null && change.equals("1"))
		out.print("Profile has been updated");
%>

<form action="ui" name="userMenu"> <br>

<a href="SchoolSearchMenu.jsp" >Search for Schools</a> <br>
<a href="ManageSavedSchools.jsp">Manage My Saved Schools</a> <br>
<a href="Veiw_Edituser.jsp">Manage My Profile</a> <br>
<br>
</form>
</body>
</html>
