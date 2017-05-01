<%@page language="java" import = "java.util.*, dblibrary.project.csci230.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Login</title>
</head>
<style>
	body {
        background-image: url("http://i.imgur.com/rZwQFmY.jpg");
        backgroup-size:100%,100%;
        background-repeat:no-repeat;
}
</style>
<body>
 <br>
 <br>
 <br>
 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("1")){
		out.print("Invalid user name of password");
	}
	if(error != null && error.equals("2")){
		out.print("Must be logged on");
	}
%>
<form method ="post" action="login_action.jsp" name="login">
<table style="text-align: left; width: 100px; margin: 100px" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"></td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" type = "password"></td>
</tr>
<tr>
<td><input name="submit" value="Submit" type="submit"></td>
<td><input name="reset" value="Reset" type="reset"></td>
</tr>
</tbody>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="RegisterUser.jsp" class="highlight">Register User</a> 
</form>
</body>
</html>