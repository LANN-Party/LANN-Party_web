<%@ page language="java" import="LANNPartySource.* , java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>viewSchool</title>
</head>
<br>
<br>
<br>
<br>
<body>
<br>
<%
	String name = request.getParameter("schoolName");
	StudentUserInterface si = (StudentUserInterface)session.getAttribute("SI");
	ExtraInfoExtractor eie = (ExtraInfoExtractor)session.getAttribute("EIE");
	University school;
	if(name != null){
		school = si.viewSchool(name);
		eie.addViews(school.getName());
	
 %>
<table style="float:left; text-align: left; width: 400px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
		<th style="text-align: center;">School Info</th>
		<th style="text-align: center;">View Count: <%out.print(eie.getNumViews(school.getName())); %></th>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><%out.println(school.getName());%><br>
</td>
</tr>
<%if (!eie.getLink(school.getName()).equals("")){
	%>
	<tr>
	<td style="vertical-align: top;">Link to Their Website</td>
	<td>
	<a href="<%out.print(eie.getLink(school.getName()));%>" target="_blank"> <%out.print(school.getName());%> </a>
	</td>
	</tr>
	<%
}
	%>
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
%>
</td>
</tr>
</tbody>
</table>
  <table style="left; width: 400px;" border="1">
	<tr>
		<th colspan=2 style="text-align: center;">Recommended Schools</th>
	</tr>
		
	<%
		ArrayList<University> rec = si.viewRecSchools(school.getName());
		for (University s:rec){
			out.print("<tr>");
			out.print("<td>");
			out.print(s.getName());
			out.print("</td>"); %>
			<td style="text-align: left;">
			<form method="post" action="ViewSchool.jsp" name="view">
			<input name="schoolName" value="<%out.print(s.getName());%>" type = "hidden">
			<input name="view"value="View" type="submit">
			</form>
			</td>
		<%}
	%>
</table>

<table style="left; width: 400px;" border="1">
	<tr>
		<th colspan=2>User Menu</th>
	</tr>
		
	<tr>
		<td>Go Back to My Saved Schools
		</td>
		<td>
			<form method="post" action="ManageSavedSchools.jsp" name="returnMenu">
			<input name="view"value="Click Here" type="submit">
			</form>
		</td>
	</tr>
	<tr>
		<td>Add This School to My Saved Schools!
		</td>
		<td>
			<form method="post" action="saveSchool.jsp" name="addSchool">
			<input name="schoolName" value="<%out.print(school.getName());%>" type = "hidden">
			<input name="view"value="Click Here" type="submit">
			</form>
		</td>
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
<%
	}
	%>	
<br>
</body>
</html>