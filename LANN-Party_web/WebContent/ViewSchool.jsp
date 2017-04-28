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
University univ = (University)session.getAttribute("UNIV");
 %>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("schoolName"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("state"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("location"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("control"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of students<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("numStud"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Female<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("percFemale"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("satVerb"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("satMath"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("expenses"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Financial aid<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("percFinancial"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of applicants<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("numberApps"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Admitted<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("percAdmitted"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("percEnrolled"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Academic scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("acdemScale"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Social scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("socialscale"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of life scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("qualityLife"));%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Emphasis<br>
</td>
<td style="vertical-align: top;"><%out.println(request.getParameter("emph1"));%><br><%out.println(request.getParameter("emph2"));%><br><%out.println(request.getParameter("emph3"));%><br><%out.println(request.getParameter("emph4"));%><br><%out.println(request.getParameter("emph5"));%><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>