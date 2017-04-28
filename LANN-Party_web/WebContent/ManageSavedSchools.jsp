<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.*, LANNPartySource.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>manageSavedSchools</title>
</head>
<body>
<form action="ui" name="manageSavedSchools"><br>
<table style="text-align: left; width: 200px;" border="1">
<tbody>
<%
	StudentUserInterface ui = (StudentUserInterface)session.getAttribute("SI");
	Student stu = ui.getCurrentStudent();
	String name = stu.getUserName();
	ArrayList<String> schools = ui.getSavedSchools(name);
	
	for(String school:schools){	
%>
<tr>
<td style="vertical-align: top;"><input name="remove"
value="Remove" type="button"></td>
<td style="vertical-align: top;"><%out.print(school); %><br>
</td>
<td style="vertical-align: top;"><input name="view" value="View"
type="button"></td>
</tr>
<%} %>
</tbody>
</table>
<br>
</form>
</body>
</html>