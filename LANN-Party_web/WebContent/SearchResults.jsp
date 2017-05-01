<%@ page language="java" import="LANNPartySource.* , java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file = "verifyLogin.jsp" %>
    <%@include file = "VerifyStudent.jsp" %>
    
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>searchResults</title>
</head>
<body>
<br>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>Schools</tr>

<%
StudentUserInterface uc = (StudentUserInterface)session.getAttribute("SI");

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
 if(numStuH <0){
	 response.sendRedirect("SchoolSearchMenu.jsp?Error=0");
	 return;
 }
}

int numStuL = 0;
if(request.getParameter("numStuL")!=null && !request.getParameter("numStuL").equals("")){
 numStuL= Integer.parseInt(request.getParameter("numStuL"));
 if(numStuL<0){
	 response.sendRedirect("SchoolSearchMenu.jsp?Error=0");
	 return;
 }
}

double percFemaleH=0;
if(request.getParameter("percFemaleH")!=null && !request.getParameter("percFemaleH").equals("")){
	percFemaleH= Double.parseDouble(request.getParameter("percFemaleH"));
	if(percFemaleH<0 || percFemaleH>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=1");
		return;	
	}
}

double percFemaleL =0;
if(request.getParameter("percFemaleL")!=null && !request.getParameter("percFemaleL").equals("")){
	percFemaleL =Double.parseDouble(request.getParameter("percFemaleL"));	
	if(percFemaleL<0 || percFemaleL>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=1");
		return;	
	}
}

double satVerbH = 0;
if(request.getParameter("satVerbH")!=null && !request.getParameter("satVerbH").equals("")){
 	satVerbH = Double.parseDouble(request.getParameter("satVerbH"));	
 	if(satVerbH <0 || satVerbH>800){
 		response.sendRedirect("SchoolSearchMenu.jsp?Error=2");
 		return;	
 	}
}

double satVerbL =0;
if(request.getParameter("satVerbL")!=null && !request.getParameter("satVerbL").equals("")){
	satVerbL =Double.parseDouble(request.getParameter("satVerbL"));	
	if(satVerbL <0 || satVerbL >800){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=2");
		return;	
	}
}

double satMathH=0;
if(request.getParameter("satMathH")!=null && !request.getParameter("satMathH").equals("")){
 	satMathH =Double.parseDouble(request.getParameter("satMathH"));
	if(satMathH <0 || satMathH >800){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=3");
		return;	
	}
}

double satMathL =0;
if(request.getParameter("satMathL")!=null && !request.getParameter("satMathL").equals("")){
	satMathL =Double.parseDouble(request.getParameter("satMathL"));
	if(satMathL<0 || satMathL>800){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=3");
		return;	
	}
}

double expensesH =0;
if(request.getParameter("expensesH")!=null && !request.getParameter("expensesH").equals("")){
 	expensesH =Double.parseDouble(request.getParameter("expensesH"));	
 	if(expensesH<0){
 		response.sendRedirect("SchoolSearchMenu.jsp?Error=4");
 		return;
 	}
 }

double expensesL =0;
if(request.getParameter("expensesL")!=null && !request.getParameter("expensesL").equals("")){
	expensesL =Double.parseDouble(request.getParameter("expensesL"));	
	if(expensesL<0){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=4");
		return;	
	}
}

double percFinacialH =0;
if(request.getParameter("percFinacialH")!=null && !request.getParameter("percFinacialH").equals("")){
	percFinacialH =Double.parseDouble(request.getParameter("percFinacialH"));	
	if(percFinacialH<0 || percFinacialH>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=5");
		return;	
	}
}

double percFinacialL =0;
if(request.getParameter("percFinacialL")!=null && !request.getParameter("percFinacialL").equals("")){
 	percFinacialL =Double.parseDouble(request.getParameter("percFinacialL"));	
 	if(percFinacialL<0 || percFinacialL>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=5");
		return;	
 	}
}


int numberAppsH =0;
if(request.getParameter("numberAppsH")!=null && !request.getParameter("numberAppsH").equals("")){
 	numberAppsH =Integer.parseInt(request.getParameter("numberAppsH"));	
 	if(numberAppsH<0){
 		response.sendRedirect("SchoolSearchMenu.jsp?Error=6");
 		return;	
 	}
}

int numberAppsL =0;
if(request.getParameter("numberAppsL")!=null && !request.getParameter("numberAppsL").equals("")){
	numberAppsL =Integer.parseInt(request.getParameter("numberAppsL"));	
	if(numberAppsL<0){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=6");
		return;	
	}
}

double percAdmittedH =0;
if(request.getParameter("percAdmittedH")!=null && !request.getParameter("percAdmittedH").equals("")){
	percAdmittedH =Double.parseDouble(request.getParameter("percAdmittedH"));
	if(percAdmittedH<0 || percAdmittedH>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=7");
		return;	
	}
}

double percAdmittedL=0;
if(request.getParameter("percAdmittedL")!=null && !request.getParameter("percAdmittedL").equals("")){
	percAdmittedL=Double.parseDouble(request.getParameter("percAdmittedL"));	
	if(percAdmittedL<0 || percAdmittedL>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=7");
		return;	
	}
}

double percEnrolledH =0;
if(request.getParameter("percEnrolledH")!=null && !request.getParameter("percEnrolledH").equals("")){
	percEnrolledH =Double.parseDouble(request.getParameter("percEnrolledH"));
	if(percEnrolledH <0 || percEnrolledH>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=8");
		return;	
	}
}

double percEnrolledL =0;
if(request.getParameter("percEnrolledL")!=null && !request.getParameter("percEnrolledL").equals("")){
	percEnrolledL =Double.parseDouble(request.getParameter("percEnrolledL"));	
	if(percEnrolledL<0 || percEnrolledL>100){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=8");
		return;	
	}
}

int acdemScaleH =0;
if(request.getParameter("acdemScaleH")!=null && !request.getParameter("acdemScaleH").equals("")){
	acdemScaleH =Integer.parseInt(request.getParameter("acdemScaleH"));	
	if(acdemScaleH<0 || acdemScaleH>5){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=9");
		return;	
	}
}

int acdemScaleL=0;
if(request.getParameter("acdemScaleL")!=null && !request.getParameter("acdemScaleL").equals("")){
	acdemScaleL=Integer.parseInt(request.getParameter("acdemScaleL"));	
	if(acdemScaleL<0 || acdemScaleL>5){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=9");
		return;	
	}
}

int socialscaleH=0;
if(request.getParameter("socialscaleH")!=null && !request.getParameter("socialscaleH").equals("")){
	 socialscaleH= Integer.parseInt(request.getParameter("socialscaleH"));
	 if(socialscaleH<0 || socialscaleH>5){
		 response.sendRedirect("SchoolSearchMenu.jsp?Error=10");
		 return; 
	 }
}

int socialscaleL =0;
if(request.getParameter("socialscaleL")!=null && !request.getParameter("socialscaleL").equals("")){
	 socialscaleL =Integer.parseInt(request.getParameter("socialscaleL"));	
	 if(socialscaleL<0 || socialscaleL>5){
		 response.sendRedirect("SchoolSearchMenu.jsp?Error=10");
		 return;
	 }
}

int qualityLifeH=0;
if(request.getParameter("qualityLifeH")!=null && !request.getParameter("qualityLifeH").equals("")){
	qualityLifeH =Integer.parseInt(request.getParameter("qualityLifeH"));	
	if(qualityLifeH<0 || qualityLifeH>5){
		response.sendRedirect("SchoolSearchMenu.jsp?Error=11");
		return;	
	}
}

int qualityLifeL=0;
if(request.getParameter("qualityLifeL")!=null && !request.getParameter("qualityLifeL").equals("")){
	 qualityLifeL =Integer.parseInt(request.getParameter("qualityLifeL"));	
	 if(qualityLifeL<0 || qualityLifeL>5){
		 response.sendRedirect("SchoolSearchMenu.jsp?Error=11");
		 return; 
	 }
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




ArrayList<University> results = uc.searchSchool(schoolName, state, location, control, numStuH, numStuL, percFemaleH, percFemaleL, satVerbH, satVerbL, satMathH, satMathL, expensesH, expensesL, percFinacialH, percFinacialL, numberAppsH, numberAppsL, percAdmittedH, percAdmittedL, percEnrolledH, percEnrolledL, acdemScaleH, acdemScaleL, socialscaleH, socialscaleL, qualityLifeH, qualityLifeL, emph1, emph2, emph3, emph4, emph5);



for(University x:results){
String name = x.getName();
%>
<tr>
<td style="vertical-align: top;">
					<form method="post" action="saveSchool.jsp" name="saveSchool">
						<input name="saveSchool" value="SaveSchool" type="submit"> <input
							name="schoolName" value="<% out.print(name); %>" type="hidden">
					</form>
					<td> <%out.println(name+"                                  ");%></td>

<td style="vertical-align: top;">
<form method="post" action="ViewSchool.jsp" name="view">
<input name="schoolName" value="<%out.print(name);%>" type = "hidden">
<input name="view"value="View" type="submit">
</form>
</td>
</tr>
<%}%>
</tbody>
</table>
<br>
</body>
</html>