<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>
    <%@include file = "verifyLogin.jsp" %>
    
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>manageUsers</title>
</head>
<body>
<%
	String error = request.getParameter("Error");
	if(error!=null && error.equals("1"))
		out.print("Deactivation Failed");
	String change = request.getParameter("CHANGE");
	if(change!=null && change.equals("1"))
		out.print("User Successfully Edited");
	else if(change!=null && change.equals("2"))
		out.print("User Successfully Deleted");
%>
<br>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;"><br>
</td>
<td style="vertical-align: top;">First<br>
</td>
<td style="vertical-align: top;">Last<br>
</td>
<td style="vertical-align: top;">UserName<br>
</td>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><br>
</td>
</tr>
<%
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	ArrayList<Student> students = ai.getStudents();
	ArrayList<Admin> admins = ai.getAdmins();
	for(Student s : students){
%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="DeactivateUser.jsp" name="DeactivateUser">
<%String uName = s.getUserName(); %>
<input name="Deactivate" value="Deactivate" type="submit">
<input name="Username" value=<%out.print(uName);%> type="hidden">
</form>
</td>
<td style="vertical-align: top;"><%out.print(s.getFirstName()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(s.getLastName()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(s.getUserName()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(s.getPassword()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(s.getType()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(s.getStatus()); %><br>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewEditUserAdmin.jsp" name="EditUser">
<input name="edit" value="Edit" type="submit">
<input name="Username" value=<%out.print(uName); %> type="hidden">
</form>
</td>
</tr>
<%} %>
<%for(Admin a : admins){ %>
<tr>
<td style="vertical-align: top;">
<form method="post" action="DeactivateUser.jsp" name="DeactivateUser">
<input name="deactivate" value="Deactivate" type="submit">
<%String uName = a.getUserName(); %>
<input name="Username" value=<%out.print(uName); %> type="hidden">
</form>
</td>
<td style="vertical-align: top;"><%out.print(a.getFirstName()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(a.getLastName()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(a.getUserName()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(a.getPassword()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(a.getType()); %><br>
</td>
<td style="vertical-align: top;"><%out.print(a.getStatus()); %><br>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewEditUserAdmin.jsp" name="EditUser">
<input name="edit" value="Edit" type="submit">
<input name="Username" value=<%out.print(uName); %> type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
<br>
</form>
</body>
</html>