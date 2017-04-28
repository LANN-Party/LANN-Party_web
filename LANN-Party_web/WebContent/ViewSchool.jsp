<%@ page language="java" import="LANNPartySource.* , java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>viewSchool</title>
</head>
<body>
<form action="ui" name="viewschool"> <br>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<%
	String name = request.getParameter("schoolName");
	StudentUserInterface si = (StudentUserInterface)session.getAttribute("SI");
	University school;
	if(name != null){
		school = si.viewRecSchools(name).get(0);
	
 %>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getName());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getState());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getLocation());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getControl());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of students<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getNumOfStudents());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Female<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getPercentFemale());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getSATVerbal());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getSATMath());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getExpenses());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Financial aid<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getPercentFinancialAid());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of applicants<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getNumOfApplicants());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Admitted<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getPercentAdmitted());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Percent Enrolled<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getPercentEnrolled());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Academic scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getAcademicScale());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Social scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getSocialScale());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of life scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getQualityOfLife());%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Emphasis<br>
</td>
<td style="vertical-align: top;">
<%	ArrayList<String> empasis = school.getEmphases();
	for(String e:empasis){
		out.print(e);
		out.print("<br>");
	}
}%>
</td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>