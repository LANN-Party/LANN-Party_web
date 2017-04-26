<%@ page language="java" import="LANNPartySource.* , java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>searchResults</title>
</head>
<body>
<form action="ui" name="searchResults">
<br>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<%
StudentUserInterface uc = (StudentUserInterface)session.getAttribute("SI");

String schoolName = request.getParameter("schoolName");
String state = request.getParameter("state");
String location = request.getParameter("location"); 
String control = request.getParameter("control");
int numStuH = Integer.parseInt(request.getParameter("numberOfStudents"));
int numStuL= Integer.parseInt(request.getParameter("numberOfStudents"));
double percFemaleH= Double.parseDouble(request.getParameter("percentFemales"));
double percFemaleL =Double.parseDouble(request.getParameter("percentFemales"));
double satVerbH = Double.parseDouble(request.getParameter("satVerbal"));
double satVerbL =Double.parseDouble(request.getParameter("satVerbal"));
double satMathH =Double.parseDouble(request.getParameter("satMath"));
double satMathL =Double.parseDouble(request.getParameter("satMath"));
double expensesH =Double.parseDouble(request.getParameter("expenses"));
double expensesL =Double.parseDouble(request.getParameter("expenses"));
double percFinacialH =Double.parseDouble(request.getParameter("percentFinAid"));
double percFinacialL =Double.parseDouble(request.getParameter("percentFinAid"));
int numberAppsH =Integer.parseInt(request.getParameter("applicants"));
int numberAppsL =Integer.parseInt(request.getParameter("applicants"));
double percAdmittedH =Double.parseDouble(request.getParameter("percentAdmitted"));
double percAdmittedL=Double.parseDouble(request.getParameter("percentAdmitted"));
double percEnrolledH =Double.parseDouble(request.getParameter("percentEnrolled"));
double percEnrolledL =Double.parseDouble(request.getParameter("percentEnrolled"));
int acdemScaleH =Integer.parseInt(request.getParameter("academScale"));
int acdemScaleL=Integer.parseInt(request.getParameter("academScale"));
int socialscaleH= Integer.parseInt(request.getParameter("socialScale"));
int socialscaleL =Integer.parseInt(request.getParameter("socialScale"));
int qualityLifeH =Integer.parseInt(request.getParameter("qualOfLife"));
int qualityLifeL =Integer.parseInt(request.getParameter("qualOfLife"));
String emph1 =request.getParameter("emph1");
String emph2 =request.getParameter("emph2");
String emph3=request.getParameter("emph3");
String emph4 =request.getParameter("emph4");
String emph5=request.getParameter("emph5");
ArrayList<University> results = uc.searchSchool(schoolName, state, location, control, numStuH, numStuL, percFemaleH, percFemaleL, satVerbH, satVerbL, satMathH, satMathL, expensesH, expensesL, percFinacialH, percFinacialL, numberAppsH, numberAppsL, percAdmittedH, percAdmittedL, percEnrolledH, percEnrolledL, acdemScaleH, acdemScaleL, socialscaleH, socialscaleL, qualityLifeH, qualityLifeL, emph1, emph2, emph3, emph4, emph5);
for(University x:results){%>
<tr>
<td style="vertical-align: top;">
					<form method="post" action="saveSchool.jsp" name="SaveSchool">
						<input name="SaveSchool" value="SaveSchool" type="submit"> <input
							name="SchoolName" value=<% out.print(x.getName()); %> type="hidden">
					</form>
				</td>
<td style="vertical-align: top;"<%out.println(x.getName()); %>><br>
</td>
<td style="vertical-align: top;"><input name="view" value=<%out.println(x.getName()); %>
type="button"><br>
</td>
<td style="vertical-align: top;">
					<form method="post" action="viewSchool.jsp" name="ViewSchool">
						<input name="ViewSchool" value="ViewSchool" type="submit"> <input
							name="SchoolName" value=<% out.print(x.getName()); %> type="hidden">
					</form>
				</td>
</tr>
<%}%>
</tbody>
</table>
<br>
</form>
</body>
</html>