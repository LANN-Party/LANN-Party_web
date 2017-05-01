<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file = "verifyLogin.jsp" %>
    <%@include file = "VerifyAdmin.jsp" %>
    
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>addNewSchool</title>
</head>
<body>
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("1")){
		out.print("Add Failed, Invalid Number of Students");
	}
	else if(error != null && error.equals("2")){
		out.print("Add Failed, Invalid Percent Females");
	}
	else if(error != null && error.equals("3")){
		out.print("Add Failed, Invalid SAT Verbal");
	}
	else if(error != null && error.equals("4")){
		out.print("Add Failed, Invalid SAT Math");
	}
	else if(error != null && error.equals("5")){
		out.print("Add Failed, Invalid Expenses");
	}
	else if(error != null && error.equals("6")){
		out.print("Add Failed, Invalid Percent Financial Aid");
	}
	else if(error != null && error.equals("7")){
		out.print("Add Failed, Invalid Number of Applicants");
	}
	else if(error != null && error.equals("8")){
		out.print("Add Failed, Invalid Percent Admitted");
	}
	else if(error != null && error.equals("9")){
		out.print("Add Failed, Invalid Percent Enrolled");
	}
	else if(error != null && error.equals("10")){
		out.print("Add Failed, Invalid Academic Scale");
	}
	else if(error != null && error.equals("11")){
		out.print("Add Failed, Invalid Social Scale");
	}
	else if(error != null && error.equals("12")){
		out.print("Add Failed, Invalid Quality of Life");
	}
	else if(error != null && error.equals("-1")){
		out.print("Add Failed, Database Error");
	}
%>
<form action="AddNewSchool_action.jsp" name="addNewSchool">
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">School<br>
</td>
<td style="vertical-align: top;"><input name="schoolName">
</td>
</tr>
<tr>
<td style="vertical-align: top;">State<br>
</td>
<td style="vertical-align: top;"><input name="state">
</td>
</tr>
<tr>
<td style="vertical-align: top;">Location<br>
</td>
<td style="vertical-align: top;"><input name="location">
</td>
</tr>
<tr>
<td style="vertical-align: top;">Control<br>
</td>
<td style="vertical-align: top;"><input name="control">
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of students<br>
</td>
<td style="vertical-align: top;"><input name="numberOfStudents" value=0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Female<br>
</td>
<td style="vertical-align: top;"><input name="percentFemale" value=0.0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Verbal<br>
</td>
<td style="vertical-align: top;"><input name="satVerbal" value=0.0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">SAT Math<br>
</td>
<td style="vertical-align: top;"><input name="satMath" value=0.0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Expenses<br>
</td>
<td style="vertical-align: top;"><input name="expenses" value=0.0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Financial aid<br>
</td>
<td style="vertical-align: top;"><input name="percentFinAid" value=0.0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Number of applicants<br>
</td>
<td style="vertical-align: top;"><input name="numApplicants" value=0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Admitted<br>
</td>
<td style="vertical-align: top;"><input name="percentAdmitted" value=0.0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">% Enrolled<br>
</td>
<td style="vertical-align: top;"><input name="percentEnrolled" value=0.0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Academic scale (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="academScale" value=0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Social scale (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="socialScale" value=0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Quality of life scale (1-5)<br>
</td>
<td style="vertical-align: top;"><input name="qualOfLife" value=0>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Emphases<br>
</td>
<td style="vertical-align: top;"><input name="emphasis">
</td>
</tr>
</tbody>
</table>
<br>
<input name="addSchool" value="Add School" type="submit">
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="cancelChanges"
value="Cancel Changes" type="reset"><br>
</form>
<br>
<br>
</body>
</html>