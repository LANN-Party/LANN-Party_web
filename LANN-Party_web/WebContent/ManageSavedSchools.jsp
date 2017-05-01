<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.*, LANNPartySource.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>manageSavedSchools</title>
</head>
<body>
<br>
<%
	StudentUserInterface ui = (StudentUserInterface)session.getAttribute("SI");
	Student stu = ui.getCurrentStudent();
	String name = stu.getUserName();
	ArrayList<String> schools = ui.getSavedSchools(name);
		if (!schools.isEmpty()){%>
		<table style="text-align: left; width: 200px;" border="1">
		<tbody>
	<%	for(String school:schools){	
%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="RemoveSchool_action.jsp" name="remove">
<input name="schoolName" value="<%out.print(school);%>" type = "hidden">
<input name="remove"value="Remove" type="submit">
</form>
</td>
<td style="vertical-align: top;"><%out.print(school); %><br>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSchool.jsp" name="view">
<input name="schoolName" value="<%out.print(school);%>" type = "hidden">
<input name="view"value="View" type="submit">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
<br>
<%	if(request.getParameter("ERROR")!=null){
		if(request.getParameter("ERROR").equals("0")){
			out.print("School has been removed!");
		}
		else{
				out.print("There was an error removing that school.");
			}
		}
	}
	else{%>
		<p style="font-size:30px">
			It looks like you don't have any saved schools! Try adding one first then check back here!
		</p>
	<%}
%>
<table style="float:left; width: 400px;" border="1">
	<tr>
		<th colspan=2>User Menu</th>
	</tr>
	<tr>
		<td>Go Back to User Page
		</td>
		<td>
			<form method="post" action="UserMenuPage.jsp" name="returnMenu">
			<input name="view"value="Click Here" type="submit">
			</form>
		</td>
	</tr>
	<tr>
		<td>Logout
		</td>
		<td>
			<form method="post" action="StudentLogout_action.jsp" name="returnMenu">
			<input name="view"value="Click Here" type="submit">
			</form>
		</td>
	</tr>
</table>
</body>
</html>