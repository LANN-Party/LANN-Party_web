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
UserController uc = (UserController)session.getAttribute("UC");

String schoolName = request.getParameter("schoolName");
String state = request.getParameter("state");
String location = request.getParameter("location"); 
String control = request.getParameter("control");
int numStud = Integer.parseInt(request.getParameter("numberOfStudents"));
double percFemale= Double.parseDouble(request.getParameter("percentFemales"));
double satVerb = Double.parseDouble(request.getParameter("satVerbal"));
double satMath =Double.parseDouble(request.getParameter("satMath"));
double expenses =Double.parseDouble(request.getParameter("expenses"));
double percFinacial =Double.parseDouble(request.getParameter("percentFinAid"));
int numberApps =Integer.parseInt(request.getParameter("applicants"));
double percAdmitted =Double.parseDouble(request.getParameter("percentAdmitted"));
double percEnrolled =Double.parseDouble(request.getParameter("percentEnrolled"));
int acdemScale =Integer.parseInt(request.getParameter("academScale"));
int socialscale= Integer.parseInt(request.getParameter("socialScale"));
int qualityLife =Integer.parseInt(request.getParameter("qualOfLife"));
String emph1 =request.getParameter("emph1");
String emph2 =request.getParameter("emph2");
String emph3=request.getParameter("emph3");
String emph4 =request.getParameter("emph4");
String emph5=request.getParameter("emph5"); %>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><%out.println(schoolName);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><%out.println(state);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><%out.println(location);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><%out.println(control);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of students<br>
</td>
<td style="vertical-align: top;"><%out.println(numStud);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Female<br>
</td>
<td style="vertical-align: top;"><%out.println(percFemale);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><%out.println(satVerb);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><%out.println(satMath);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><%out.println(expenses);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Financial aid<br>
</td>
<td style="vertical-align: top;"><%out.println(percFinacial);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of applicants<br>
</td>
<td style="vertical-align: top;"><%out.println(numberApps);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Admitted<br>
</td>
<td style="vertical-align: top;"><%out.println(percAdmitted);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;"><%out.println(percEnrolled);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Academic scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(acdemScale);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Social scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(socialscale);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of life scale (1-10)<br>
</td>
<td style="vertical-align: top;"><%out.println(qualityLife);%><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Emphasis<br>
</td>
<td style="vertical-align: top;"><%out.println(emph1);%><br><%out.println(emph2);%><br><%out.println(emph3);%><br><%out.println(emph4);%><br><%out.println(emph5);%><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>