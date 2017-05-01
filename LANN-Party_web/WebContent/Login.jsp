<%@page language="java" import = "java.util.*, dblibrary.project.csci230.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Login</title>
</head>
<style>
	body {
        background-image: url("http://i.imgur.com/rZwQFmy.jpg");
        backgroup-size:100%,100%;
}
</style>
<body>
Login Form: <br>
<br>
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("1")){
		out.print("Login Failed");
	}
%>
<form method ="post" action="login_action.jsp" name="login">
<br>
<table style="text-align: left; width: 100px;" border="1"
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
</tbody>
</table>
<input name="submit" value="Submit" type="submit">&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; <input name="reset" value="Reset" type="reset"><br>
<br>
<a href="RegisterUser.jsp" class="highlight">Register User</a> 
</form>
</body>
</html>