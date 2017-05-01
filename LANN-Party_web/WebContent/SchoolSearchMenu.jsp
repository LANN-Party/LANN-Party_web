<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyStudent.jsp" %>

<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title></title>
</head>
<body>
<h1>Search Menu</h1>
<br>
<%
	String error = request.getParameter("Error");
	if(error!=null && error.equals("0"))
		out.print("Number of Students must be greater than zero");
	else if(error!=null && error.equals("1"))
		out.print("Percent Female must be between 0 and 100");
	else if(error!=null && error.equals("2"))
		out.print("SAT Verbal must be between 0 and 800");
	else if(error!=null && error.equals("3"))
		out.print("SAT Math must be between 0 and 800");
	else if(error!=null && error.equals("4"))
		out.print("Expenses must be greather than zero");
	else if(error!=null && error.equals("5"))
		out.print("Percent Financial Aid must be between 0 and 100");
	else if(error!=null && error.equals("6"))
		out.print("Number of Applicants must be greater than zero");
	else if(error!=null && error.equals("7"))
		out.print("Percent Admitted must be between 0 and 100");
	else if(error!=null && error.equals("8"))
		out.print("Percent Enrolled must be between 0 and 100");
	else if(error!=null && error.equals("9"))
		out.print("Academic scale must be between 0 and 5");
	else if(error!=null && error.equals("10"))
		out.print("Social scale must be between 0 and 5");
	else if(error!=null && error.equals("11"))
		out.print("Quality of Life must be between 0 and 5");
%>
<form action="SearchResults.jsp" name="form1"><span
style="font-family: &quot;Sans&quot;;"></span>
<table style="text-align: left; width: 1299px; height: 1098px;"
border="1" cellpadding="16" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">by School Name<br>
</td>
<td style="vertical-align: top;">contains <input
name="schoolname"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by State <br>
</td>
<td style="vertical-align: top;">contains <input name="state"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by Location<br>
</td>
<td style="vertical-align: top;"><input name="location">&nbsp;(Suburban,
Urban,Small-city)<br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by Control<br>
</td>
<td style="vertical-align: top;"><input name="control">(Private,
State, City)<br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">by Number Of Students<br>
</td>
<td style="vertical-align: top;">between <input
name="numStuL">and<input name="numStuH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by % Female<br>
</td>
<td style="vertical-align: top;">between <input
name="percFemaleL">and<input name="percFemaleH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by SAT Verbal<br>
</td>
<td style="vertical-align: top;">between <input name="satVerbL">and<input
name="satVerbH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by SAT Math<br>
</td>
<td style="vertical-align: top;">between <input name="satMathL">and<input
name="satMathH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by Expenses<br>
</td>
<td style="vertical-align: top;">between <input
name="expensesL">and<input name="expensesH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by % Financial AID<br>
</td>
<td style="vertical-align: top;">between <input
name="percFinacialL">and<input name="percFinacialH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by Number Of Applicants<br>
</td>
<td style="vertical-align: top;">between <input
name="numberAppsL">and<input name="numberAppsH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by % Admitted<br>
</td>
<td style="vertical-align: top;">between <input
name="percAdmittedL">and<input name="percAdmittedH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by % Enrolled<br>
</td>
<td style="vertical-align: top;">between <input
name="percEnrolledL">and<input name="percEnrolledH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by Academic Scale(1-10)<br>
</td>
<td style="vertical-align: top;">between <input
name="acdemScaleL">and<input name="acdemScaleH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by Social Scale(1-10)<br>
</td>
<td style="vertical-align: top;">between <input
name="socialscaleL">and<input name="socialscaleH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by Qaulity Of Life Scale(1-10)<br>
</td>
<td style="vertical-align: top;">between <input
name="qualityLifeL">and<input name="qualityLifeH"></td>
</tr>
<tr>
<td style="vertical-align: top;">by Emphases<br>
</td>
<td style="vertical-align: top;">contains either<br>
<input name="emph1"><br>
<input name="emph2"><br>
<input name="emph3"><br>
<input name="emph4"><br>
<input name="emph5"><br>
</td>
</tr>
</tbody>
</table>
<span style="font-family: &quot;Sans&quot;;"></span><br>
<input value="Search Schools" name="search" type="submit"><input
type="reset"><br>
<br>
</form>
</body>
</html>

