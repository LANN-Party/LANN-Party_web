<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file = "verifyLogin.jsp" %>
    <%@include file = "VerifyAdmin.jsp" %>
    
<html>
<head>
<style>
body {
        background-image: url("http://i.imgur.com/jNM42jj.jpg");
        backgroup-size:100%,100%;
        background-repeat:no-repeat;
}
</style>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>addNewUser</title>
</head>
<body>
<br>
<br>
<h1>Add New User</h1>
<br>
<%
	String error = request.getParameter("Error");
	if(error!=null && error.equals("1"))
		out.print("Status must be Y or N");
	else if(error!=null && error.equals("2"))
		out.print("Type must be A or U");
	else if(error!=null && error.equals("3"))
		out.print("Must enter type and status");
%>
<form action="AddNewUser_action.jsp" name="addNewUser">
<br>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="firstname"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="lastname"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="password"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="type"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="status"> </td>
</tr>
</tbody>
</table>
<br>
<input name="addUser" value="Add User" type="submit">&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; <input name="reset" value="Reset" type="reset"><br>
</form>
<form action="ManageUsers.jsp" name="ManageUsers">
<input name="cancel" value="Cancel" type="submit">
</form>
</body>
</html>