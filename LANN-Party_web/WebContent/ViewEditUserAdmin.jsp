<%@page language="java" import = "LANNPartySource.* , java.util.*, dblibrary.project.csci230.*" %>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyAdmin.jsp" %>

<%AdminUI ai = (AdminUI)session.getAttribute("AI"); %>
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
<title>View/Edit User</title>
</head>
<br>
<br>
<br>
<br>
<br>
<body>

<%
String error = request.getParameter("Error");
if(error!=null && error.equals("1"))
	out.print("Status must be Y or N");
else if(error!=null && error.equals("2"))
	out.print("Type must be A or U");
%>
<%
	String uName = request.getParameter("Username");
	Student s = ai.getStudent(uName);
	Admin a = ai.getAdmin(uName);
	String user = "a";
%>
<form action="ViewEditUserAdmin_action.jsp" name="viewedituseradmin">
<%if(s!=null){
	user = "s";
%>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="firstname" value = <%out.print(s.getFirstName()); %>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="lastname" value = <%out.print(s.getLastName()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="username" value = <%out.print(s.getUserName()); %> readonly="readonly"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="password" value = <%out.print(s.getPassword()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="type" value = <%out.print(s.getType()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="status" value = <%out.print(s.getStatus()); %>> </td>
</tr>
</tbody>
</table>
<%} 
else if(a!=null){
%>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="firstname" value = <%out.print(a.getFirstName()); %>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="lastname" value = <%out.print(a.getLastName()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="username" value = <%out.print(a.getUserName()); %> readonly="readonly"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="password" value = <%out.print(a.getPassword()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="type" value = <%out.print(a.getType()); %>> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="status" value = <%out.print(a.getStatus()); %>> </td>
</tr>
</tbody>
</table>
<%} %>
<br>
<input name="Edituser" type="submit">&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; <input name="Reset"
type="reset">
</form>
<form method="post" action="DeleteUser.jsp" name="DeleteUser">
<%
String userName = "";
if(user.equals("s")){
	userName = s.getUserName();
}
else{
	userName = a.getUserName();
}
	%>
<input name="Delete" value="Delete" type="submit">
<input name="Username" value=<%out.print(userName);%> type="hidden">
</form>
</body>
</html>