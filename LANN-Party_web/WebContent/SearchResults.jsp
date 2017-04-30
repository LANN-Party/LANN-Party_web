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
<tr>Schools</tr>

<%
//StudentUserInterface uc = (StudentUserInterface)session.getAttribute("SI");
StudentUserInterface uc = new StudentUserInterface();

String schoolName =null;
if(request.getParameter("schoolname")!=null || !request.getParameter("schoolname").equals("")){
schoolName = request.getParameter("schoolname");
}

String state = null;
if(request.getParameter("state")!=null || !request.getParameter("state").equals("")){
 state = request.getParameter("state");
}

String location = null;
if(request.getParameter("location")!=null || !request.getParameter("location").equals("")){
location = request.getParameter("location"); 
}

String control = null;
if(request.getParameter("control")!=null || !request.getParameter("control").equals("")){
control = request.getParameter("control");
}

int numStuH = 0;
if(request.getParameter("numStuH")!=null && request.getParameter("numStuH")!=""){
 numStuH = Integer.parseInt(request.getParameter("numStuH"));
}

int numStuL = 0;
if(request.getParameter("numStuL")!=null && !request.getParameter("numStuL").equals("")){
 numStuL= Integer.parseInt(request.getParameter("numStuL"));
}

double percFemaleH=0;
if(request.getParameter("percFemaleH")!=null && !request.getParameter("percFemaleH").equals("")){
	percFemaleH= Double.parseDouble(request.getParameter("percFemaleH"));	
}

double percFemaleL =0;
if(request.getParameter("percFemaleL")!=null && !request.getParameter("percFemaleL").equals("")){
percFemaleL =Double.parseDouble(request.getParameter("percFemaleL"));	
}

double satVerbH = 0;
if(request.getParameter("satVerbH")!=null && !request.getParameter("satVerbH").equals("")){
 satVerbH = Double.parseDouble(request.getParameter("satVerbH"));	
}

double satVerbL =0;
if(request.getParameter("satVerbL")!=null && !request.getParameter("satVerbL").equals("")){
satVerbL =Double.parseDouble(request.getParameter("satVerbL"));	
}

double satMathH=0;
if(request.getParameter("satMathH")!=null && !request.getParameter("satMathH").equals("")){
 satMathH =Double.parseDouble(request.getParameter("satMathH"));
	
}

double satMathL =0;
if(request.getParameter("satMathL")!=null && !request.getParameter("satMathL").equals("")){
satMathL =Double.parseDouble(request.getParameter("satMathL"));

}

double expensesH =0;
if(request.getParameter("expensesH")!=null && !request.getParameter("expensesH").equals("")){
 expensesH =Double.parseDouble(request.getParameter("expensesH"));	
}

double expensesL =0;
if(request.getParameter("expensesL")!=null && !request.getParameter("expensesL").equals("")){
expensesL =Double.parseDouble(request.getParameter("expensesL"));	
}

double percFinacialH =0;
if(request.getParameter("percFinacialH")!=null && !request.getParameter("percFinacialH").equals("")){
percFinacialH =Double.parseDouble(request.getParameter("percFinacialH"));	
}

double percFinacialL =0;
if(request.getParameter("percFinacialL")!=null && !request.getParameter("percFinacialL").equals("")){
 percFinacialL =Double.parseDouble(request.getParameter("percFinacialL"));	
}


int numberAppsH =0;
if(request.getParameter("numberAppsH")!=null && !request.getParameter("numberAppsH").equals("")){
 numberAppsH =Integer.parseInt(request.getParameter("numberAppsH"));	
}

int numberAppsL =0;
if(request.getParameter("numberAppsL")!=null && !request.getParameter("numberAppsL").equals("")){
numberAppsL =Integer.parseInt(request.getParameter("numberAppsL"));	
}

double percAdmittedH =0;
if(request.getParameter("percAdmittedH")!=null && !request.getParameter("percAdmittedH").equals("")){
percAdmittedH =Double.parseDouble(request.getParameter("percAdmittedH"));
	
}

double percAdmittedL=0;
if(request.getParameter("percAdmittedL")!=null && !request.getParameter("percAdmittedL").equals("")){
percAdmittedL=Double.parseDouble(request.getParameter("percAdmittedL"));	
}

double percEnrolledH =0;
if(request.getParameter("percEnrolledH")!=null && !request.getParameter("percEnrolledH").equals("")){
	percEnrolledH =Double.parseDouble(request.getParameter("percEnrolledH"));	
}

double percEnrolledL =0;
if(request.getParameter("percEnrolledL")!=null && !request.getParameter("percEnrolledL").equals("")){
percEnrolledL =Double.parseDouble(request.getParameter("percEnrolledL"));	
}

int acdemScaleH =0;
if(request.getParameter("acdemScaleH")!=null && !request.getParameter("acdemScaleH").equals("")){
acdemScaleH =Integer.parseInt(request.getParameter("acdemScaleH"));	
}

int acdemScaleL=0;
if(request.getParameter("acdemScaleL")!=null && !request.getParameter("acdemScaleL").equals("")){
acdemScaleL=Integer.parseInt(request.getParameter("acdemScaleL"));	
}

int socialscaleH=0;
if(request.getParameter("socialscaleH")!=null && !request.getParameter("socialscaleH").equals("")){
	 socialscaleH= Integer.parseInt(request.getParameter("socialscaleH"));	
}

int socialscaleL =0;
if(request.getParameter("socialscaleL")!=null && !request.getParameter("socialscaleL").equals("")){
	 socialscaleL =Integer.parseInt(request.getParameter("socialscaleL"));	
}

int qualityLifeH=0;
if(request.getParameter("qualityLifeH")!=null && !request.getParameter("qualityLifeH").equals("")){
	qualityLifeH =Integer.parseInt(request.getParameter("qualityLifeH"));	
}

int qualityLifeL=0;
if(request.getParameter("qualityLifeL")!=null && !request.getParameter("qualityLifeL").equals("")){
	 qualityLifeL =Integer.parseInt(request.getParameter("qualityLifeL"));	
}

String emph1 =null;
if(request.getParameter("emph1")!=null || !request.getParameter("emph1").equals("")){
 emph1 =request.getParameter("emph1");
}

String emph2 =null;
if(request.getParameter("emph2")!=null || !request.getParameter("emph2").equals("")){
 emph2 =request.getParameter("emph2");
}

String emph3 =null;
if(request.getParameter("emph3")!=null || !request.getParameter("emph3").equals("")){
 emph3=request.getParameter("emph3");
}

String emph4 =null;
if(request.getParameter("emph4")!=null || !request.getParameter("emph4").equals("")){
 emph4 =request.getParameter("emph4");
}

String emph5 =null;
if(request.getParameter("emph5")!=null || !request.getParameter("emph5").equals("")){
 emph5=request.getParameter("emph5");
}

System.out.println("schoolName"+schoolName);
System.out.println("STATE:"+state);
System.out.println("location"+location);
System.out.println("control"+control);
System.out.println("numStu"+ numStuH);
System.out.println("percFemale"+percFemaleH);


ArrayList<University> results = uc.searchSchool(schoolName, state, location, control, numStuH, numStuL, percFemaleH, percFemaleL, satVerbH, satVerbL, satMathH, satMathL, expensesH, expensesL, percFinacialH, percFinacialL, numberAppsH, numberAppsL, percAdmittedH, percAdmittedL, percEnrolledH, percEnrolledL, acdemScaleH, acdemScaleL, socialscaleH, socialscaleL, qualityLifeH, qualityLifeL, emph1, emph2, emph3, emph4, emph5);
System.out.println("length"+results.size());


for(University x:results){%>
<tr>
<td style="vertical-align: top;">
					<form method="post" action="saveSchool.jsp" name="SaveSchool">
						<input name="SaveSchool" value="SaveSchool" type="submit"> <input
							name="SchoolName" value=<% out.print(x.getName()); %> type="hidden">
					</form>
					<td> <%out.println(x.getName()+"                                         ");%></td>
				</td>

</td>
<td style="vertical-align: top;">
					<form method="post" action="ViewSchool.jsp" name="ViewSchool">
						<input name="ViewSchool" value="ViewSchool" type="submit"> <input
							name="schoolName" value=<% out.print(x.getName()); %> type="hidden">
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