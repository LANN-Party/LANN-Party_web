<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="LANNPartySource.* , java.util.*, dblibrary.project.csci230.*"%>
    <%@include file = "verifyLogin.jsp" %>
    <%@include file = "VerifyAdmin.jsp" %>
    
    
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>manageUniverisites</title>
</head>
<body>
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("0"))
		out.print("School Removed");
	else if(error != null && error.equals("1"))
		out.print("Error Removing School");
%>
<form action="ui" name="manageUniversity">
<br>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr align="center">
<td colspan="17" rowspan"1" style="vertical-align: top;">
<a href="AddNewschool.jsp">ADD NEW SCHOOL</a>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Remove<br>
</td>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;">State&nbsp; <br>
</td>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;">Control <br>
</td>
<td style="vertical-align: top;"># of Students<br>
</td>
<td style="vertical-align: top;">% Females<br>
</td>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;">% with Financial Aid<br>
</td>
<td style="vertical-align: top;"># of Applicants<br>
</td>
<td style="vertical-align: top;">% Admitted<br>
</td>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;">Academic Scale (1-10)<br>
</td>
<td style="vertical-align: top;">Social Scale (1-10)<br>
</td>
<td style="vertical-align: top;">Quality of Life (1-10)<br>
</td>
<td style="vertical-align: top;">Edit<br>
</td>
</tr>
<%
	AdminUI ai = (AdminUI)session.getAttribute("AI"); 
	ArrayList<University> schools = ai.getAllSchools();
	for(University u : schools){
%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="RemoveSchool.jsp" name="Remove">
<%String name = u.getName(); %>
<input name="Remove" value="Remove" type="submit">
<input name="SchoolName" value=<%out.print(name);%> type="hidden">
</form>
</td>
<td style="vertical-align: top;"> <%out.print(u.getName()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getState()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getLocation()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getControl()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getNumOfStudents()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getPercentFemale()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getSATVerbal()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getSATMath()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getExpenses()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getPercentFinancialAid()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getNumOfApplicants()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getPercentAdmitted()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getPercentEnrolled()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getAcademicScale()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getSocialScale()); %><br>
</td>
<td style="vertical-align: top;"> <%out.print(u.getQualityOfLife()); %><br>
</td>
<td style="vertical-align: top;">
<form method="post" action="View_Editschool.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="SchoolName" value="<%out.print(name);%>" type="hidden">
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