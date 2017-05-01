<%@ page language="java" contentType="text/html; charset=UTF-8" import="LANNPartySource.* , java.util.*" 
    pageEncoding="UTF-8"%>
    <%@include file = "verifyLogin.jsp" %>
    <% String error = request.getParameter("Error");
	if(error != null && error.equals("1")){
		out.print("You can only access Student pages");
	}
	%>
<html>
<head>

<style>
.highlight:hover{
color:red;
}

body {
        background-image: url("http://i.imgur.com/jNM42jj.jpg");
        backgroup-size:100%,100%;
        background-repeat:no-repeat;
}
</style>

<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">

<title>userMenuPage</title>

</head>
<br>
<br>
<br>
<br>

<%
	StudentUserInterface ui = new StudentUserInterface();
	session.setAttribute("UI",ui); 
	String change = request.getParameter("CHANGE");

	if (change!=null && change.equals("1"))
		out.print("Profile has been updated");
%>

<h1>User Home Menu</h1>
<br>
<table style="left; width: 400px;background-color: white;text-align: center" border="1">
	<tr>
		<td>
			<a href="SchoolSearchMenu.jsp" class="highlight">Search for Schools</a> <br><br>
		</td>
	</tr>
	<tr>
		<td>
			<a href="ManageSavedSchools.jsp" class ="highlight">Manage My Saved Schools</a> <br><br>
		</td>
	</tr>
	<tr>
		<td>
			<a href="Veiw_Edituser.jsp" class ="highlight">Manage My Profile</a> <br><br>
		</td>
	</tr>
		
</table>
<br>
<form method="post" action="StudentLogout_action.jsp" name="returnMenu">
			<input name="view"value="Logout" type="submit">
			</form>
</body>
</html>
