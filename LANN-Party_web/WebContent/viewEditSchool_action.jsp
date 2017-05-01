<%@ page language="java" import="LANNPartySource.* , java.util.*" %>
<%@include file = "verifyLogin.jsp" %>

<% 

AdminUI ai = (AdminUI)session.getAttribute("AI");

//GETTING ALL VARIABLES FROM PAGE
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

//EDITS INFO
int error = ai.editSchool(name, state, location, control, numberOfStudents, percentFemales, satVerbal, satMath, expenses,
			percentFinAid, applicants, percentAdmitted, percentEnrolled, academScale, socialScale, qualOfLife);
if(error == 0){
	response.sendRedirect("ManageUniversities.jsp?CHANGE=0");
}
else if(error==1){
	response.sendRedirect("View_Editschool.jsp?Error=1&SchoolName="+name);
}
else if(error==2){
	response.sendRedirect("View_Editschool.jsp?Error=2&SchoolName="+name);
}
else if(error==3){
	response.sendRedirect("View_Editschool.jsp?Error=3&SchoolName="+name);
}
else if(error==4){
	response.sendRedirect("View_Editschool.jsp?Error=4&SchoolName="+name);
}
else if(error==5){
	response.sendRedirect("View_Editschool.jsp?Error=5&SchoolName="+name);
}
else if(error==6){
	response.sendRedirect("View_Editschool.jsp?Error=6&SchoolName="+name);
}
else if(error==7){
	response.sendRedirect("View_Editschool.jsp?Error=7&SchoolName="+name);
}
else if(error==8){
	response.sendRedirect("View_Editschool.jsp?Error=8&SchoolName="+name);
}
else if(error==9){
	response.sendRedirect("View_Editschool.jsp?Error=9&SchoolName="+name);
}
else if(error==10){
	response.sendRedirect("View_Editschool.jsp?Error=10&SchoolName="+name);
}
else if(error==11){
	response.sendRedirect("View_Editschool.jsp?Error=11&SchoolName="+name);
}
else if(error==12){
	response.sendRedirect("View_Editschool.jsp?Error=12&SchoolName="+name);
}
else if(error==-1){
	response.sendRedirect("View_Editschool.jsp?Error=-1&SchoolName="+name);
}
else if(error==13){
	response.sendRedirect("View_Editschool.jsp?Error=13&SchoolName="+name);
}
else if(error==14){
	response.sendRedirect("View_Editschool.jsp?Error=14&SchoolName="+name);
}


%>