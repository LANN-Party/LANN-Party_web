<%@ page language="java" import="LANNPartySource.* , java.util.*" %>
<%@include file = "verifyLogin.jsp" %>
<%@include file = "VerifyAdmin.jsp" %>

<%
AdminUI ac = (AdminUI)session.getAttribute("AI");
 
String name = request.getParameter("schoolName");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");
int numberOfStudents = Integer.parseInt(request.getParameter("numberOfStudents"));
double percentFemales = Double.parseDouble(request.getParameter("percentFemale"));
double satVerbal = Double.parseDouble(request.getParameter("satVerbal"));
double satMath = Double.parseDouble(request.getParameter("satMath"));
double expenses = Double.parseDouble(request.getParameter("expenses"));
double percentFinAid = Double.parseDouble(request.getParameter("percentFinAid"));
int applicants = Integer.parseInt(request.getParameter("numApplicants"));
double percentAdmitted =Double.parseDouble(request.getParameter("percentAdmitted"));
double percentEnrolled = Double.parseDouble(request.getParameter("percentEnrolled"));
int academScale = Integer.parseInt(request.getParameter("academScale"));
int qualOfLife = Integer.parseInt(request.getParameter("qualOfLife"));
int socialScale = Integer.parseInt(request.getParameter("socialScale"));
int error = ac.addSchool(name, state, location, control, numberOfStudents, percentFemales, satVerbal, satMath, expenses, percentFinAid, applicants, percentAdmitted, percentEnrolled, academScale, socialScale, qualOfLife);

if(error == 0){
	response.sendRedirect("ManageUniversities.jsp");
}
else if(error==1){
	response.sendRedirect("AddNewschool.jsp?Error=1");
}
else if(error==2){
	response.sendRedirect("AddNewschool.jsp?Error=2");
}
else if(error==3){
	response.sendRedirect("AddNewschool.jsp?Error=3");
}
else if(error==4){
	response.sendRedirect("AddNewschool.jsp?Error=4");
}
else if(error==5){
	response.sendRedirect("AddNewschool.jsp?Error=5");
}
else if(error==6){
	response.sendRedirect("AddNewschool.jsp?Error=6");
}
else if(error==7){
	response.sendRedirect("AddNewschool.jsp?Error=7");
}
else if(error==8){
	response.sendRedirect("AddNewschool.jsp?Error=8");
}
else if(error==9){
	response.sendRedirect("AddNewschool.jsp?Error=9");
}
else if(error==10){
	response.sendRedirect("AddNewschool.jsp?Error=10");
}
else if(error==11){
	response.sendRedirect("AddNewschool.jsp?Error=11");
}
else if(error==12){
	response.sendRedirect("AddNewschool.jsp?Error=12");
}
else if(error==-1){
	response.sendRedirect("AddNewschool.jsp?Error=-1");
}
else if(error==13){
	response.sendRedirect("AddNewschool.jsp?Error=13");
}
else if(error==14){
	response.sendRedirect("AddNewschool.jsp?Error=14");
}

%>