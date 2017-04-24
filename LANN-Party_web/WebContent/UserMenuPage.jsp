<%@ page language="java" contentType="text/html; charset=UTF-8" import="LANNPartySource.* , java.util.*" 
    pageEncoding="UTF-8"%>
<html>
<head>

<style>
.highlight:hover{
color:red;
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

<h1>User Home Menu</h1>
<form action="ui" name="userMenu"> <br>

<a href="SchoolSearchMenu.jsp" class="highlight">Search for Schools</a> <br><br>
<a href="ManageSavedSchools.jsp" class ="highlight">Manage My Saved Schools</a> <br><br>
<a href="Veiw_Edituser.jsp" class ="highlight">Manage My Profile</a> <br>
<br>
</form>
</body>
</html>
