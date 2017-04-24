<%@ page language="java" import="LANNPartySource.* , java.util.*" %>
<%
Admin_Controler ac = (Admin_Controler)session.getAttribute("");

String name = request.getParameter("schoolName");
String state = request.getParameter("state");
String location = request.getParameter("location");
String control = request.getParameter("control");
int numberOfStudents = Integer.parseInt(request.getParameter("numberOfStudents"));
double percentFemales = Double.parseDouble(request.getParameter("percentFemales"));
double satVerbal = Double.parseDouble(request.getParameter("satVerbal"));
double satMath = Double.parseDouble(request.getParameter("satMath"));
double expenses = Double.parseDouble(request.getParameter("expenses"));
double percentFinAid = Double.parseDouble(request.getParameter("percentFinAid"));
int applicants = Integer.parseInt(request.getParameter("applicants"));
double percentAdmitted =Double.parseDouble(request.getParameter("percentAdmitted"));
double percentEnrolled = Double.parseDouble(request.getParameter("percentEnrolled"));
int academScale = Integer.parseInt(request.getParameter("academScale"));
int qualOfLife = Integer.parseInt(request.getParameter("qualOfLife"));
int socialScale = Integer.parseInt(request.getParameter("socialScale"));
ac.addSchool(name, state, location, control, numberOfStudents, percentFemales, satVerbal, satMath, expenses, percentFinAid, applicants, percentAdmitted, percentEnrolled, academScale, socialScale, qualOfLife);
response.sendRedirect("      .jsp");

%>