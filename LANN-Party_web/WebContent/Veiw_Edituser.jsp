<%@page language="java" import = "LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%StudentUserInterface ui = (StudentUserInterface)session.getAttribute("SI"); %>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyStudent.jsp" %>

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
<title>View/Edit user profile page</title>
</head>
<body>
<br>
<br>
<br>
<h1>Manage Profile</h1>
<br>
<form method="post" action="UserMenuPage.jsp" name="returnMenu">
			<input name="view"value="Menu" type="submit">
			</form>
<%
	String error = request.getParameter("Error");
	if(error!=null && error.equals("1"))
		out.print("Status must be Y or N");
%>

<form action="viewEdituser_action.jsp" name="viewedituser">
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br> 
</td>
<td style="vertical-align: top;"><input name="firstname" value = <%out.print(ui.getCurrentStudent().getFirstName()); %>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="lastname" value = <%out.print(ui.getCurrentStudent().getLastName()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="username" value = <%out.print(ui.getCurrentStudent().getUserName()); %> readonly="readonly"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="password" value = <%out.print(ui.getCurrentStudent().getPassword()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="type" value = <%out.print(ui.getCurrentStudent().getType()); %> readonly="readonly"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="status" value = <%out.print(ui.getCurrentStudent().getStatus()); %>> </td>
</tr>
</tbody>
</table>
<br>
<input name="Edituser" type="submit">&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; <input name="Reset"
type="reset"></form>
</body>
</html>