<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="LANNPartySource.* , java.util.*"%>
    <%@include file = "verifyLogin.jsp" %>
    
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
<title>view/editSchool</title>
</head>
<br>
<br>
<br>
<br>
<body>
<%
	String schoolName = request.getParameter("SchoolName");
	AdminUI ai = (AdminUI)session.getAttribute("AI");
	University u = ai.getSchool(schoolName);
%>
<form action="viewEditSchool_action.jsp" name="viewOrEditSchool">
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><input name="schoolName" value="<%out.print(u.getName());%>">
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="state" value=<%out.print(u.getState());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="location" value=<%out.print(u.getLocation());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="control" value=<%out.print(u.getControl());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of students<br>
</td>
<td style="vertical-align: top;"><input name="numberOfStudents" value=<%out.print(u.getNumOfStudents());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Female<br>
</td>
<td style="vertical-align: top;"><input name="percentFemale" value=<%out.print(u.getPercentFemale());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input name="satVerbal" value=<%out.print(u.getSATVerbal());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input name="satMath" value=<%out.print(u.getSATMath());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><input name="expenses" value=<%out.print(u.getExpenses());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Financial aid<br>
</td>
<td style="vertical-align: top;"><input name="percentFinAid" value=<%out.print(u.getPercentFinancialAid());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of applicants<br>
</td>
<td style="vertical-align: top;"><input name="numApplicants" value=<%out.print(u.getNumOfApplicants());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Admitted<br>
</td>
<td style="vertical-align: top;"><input name="percentAdmitted" value=<%out.print(u.getPercentAdmitted());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;"><input name="percentEnrolled" value=<%out.print(u.getPercentEnrolled());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Academic scale (1-10)<br>
</td>
<td style="vertical-align: top;"><input name="academScale" value=<%out.print(u.getAcademicScale());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Social scale (1-10)<br>
</td>
<td style="vertical-align: top;"><input name="socialScale" value=<%out.print(u.getSocialScale());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of life scale (1-10)<br>
</td>
<td style="vertical-align: top;"><input name="qualOfLife" value=<%out.print(u.getQualityOfLife());%>>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Emphases<br>
</td>
<td style="vertical-align: top;"><input name="emphasis" value=<%out.print(u.getEmphases());%>>
</td>
</tr>
</tbody>
</table>
&nbsp;<br>
<br>
<input name="applyChanges" value="Apply Changes" type="submit">&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; 
<input name="cancelChanges" value="Cancel Changes"
type="button"><br>
</form>
<br>
<br>
</body>
</html>