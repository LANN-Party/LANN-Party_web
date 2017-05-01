<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file = "verifyLogin.jsp" %>
       <% String error = request.getParameter("Error");
	if(error != null && error.equals("1")){
		out.print("You can only access Admin pages");
	}
	%>
<html>
<head>
<style>
.highlight:hover{
color:red;
}
</style>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>adminMenu</title>
</head>
<body style="background-color:rgb(102,102,102)">
<h1>Admin Home Menu</h1>
<form action="ui" name="adminMenu">
<br>
<table style="left; width: 400px;background-color: white;text-align: center" border="1">
	<tr><td>
<a href="ManageUniversities.jsp" class="highlight" >Manage Universities</a><br>
</td>
</tr><td>
<a href="ManageUsers.jsp" class="highlight" >Manage Users</a> 
</td>
</tr>
<br>
</form>
</body>
</html>
