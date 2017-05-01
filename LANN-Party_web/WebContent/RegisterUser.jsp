<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Register User</title>
</head>
<body>
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("0")){
		out.print("Confirm Password must match password");
	}
	
	if(error != null && error.equals("1")){
		out.print("Must enter a first name");
	}
	
	if(error != null && error.equals("2")){
		out.print("Must enter a last name");
	}
	
	if(error != null && error.equals("3")){
		out.print("Must enter a username");
	}
	
	if(error != null && error.equals("4")){
		out.print("Must enter and confirm password");
	}
	
	if(error != null && error.equals("5")){
		out.print("Must enter and confirm password");
	}
	
	if(error != null && error.equals("6")){
		out.print("User already exists");
	}
	
	if(error != null && error.equals("7")){
		out.print("Password cannot equal Username, First Name, or Last Name");
	}
	
	if(error != null && error.equals("8")){
		out.print("Password must contain more than 4 characters");
	}
%>
<form method ="post" action="RegisterUser_action.jsp" name="registerUser">
<br>
<table style="text-align: left; width: 300px;" border="1"
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
<td style="vertical-align: top;"><input name="password" type="password"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Confirm Password<br>
</td>
<td style="vertical-align: top;"><input name="confirmpassword" type="password"> </td>
</tr>
</tbody>
</table>
<br>
<input name="registerUser" value="Register User" type="submit">&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; <input name="reset" value="Reset" type="reset"><br>
</form>
</body>
</html>