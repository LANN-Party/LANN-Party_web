package LANNPartySource;



import java.util.*;

import dblibrary.project.csci230.*;

 /**
  * FileName: DatabaseController.java
  */
 
 /**
  * Class dedicated to all information in the system
  * @author Noah Hynes-Marquette
  * @version 3/27/2017
  *
  */
public class DatabaseController {
	
	private UniversityDBLibrary uDBL;
	//private Search_Controler search = new Search_Controler(); 
	
	/**
	 * This method initializes uDBL
	 * 
	 * @param dataBase : name of database to access information from
	 * @param uName : name of group (LANN-Party)
	 * @param pWord : the group's password
	 */
	public DatabaseController(String dataBase, String uName, String pWord)
	{
		uDBL = new UniversityDBLibrary(dataBase, uName, pWord);
	}
	  
	/**
	 * When called, this method returns an arraylist of all the students in the database
	 * 
	 * @return ArrayList<Student> of all students in the database
	 */
	  public ArrayList<Student> getStudents()
	  {
		//TODO: return information of all users in the database in list form ordered by user name alphabetically
		String[][] users =  uDBL.user_getUsers();
		String[][] userSchools = uDBL.user_getUsernamesWithSavedSchools();
		ArrayList<String> schools = new ArrayList<String>();
		ArrayList<Student> students = new ArrayList<Student>();
		
		for(int i = 0; i<users.length; i++){
			schools.clear();
			if(users[i][4].charAt(0) == 'u'){
				if(userSchools!=null){
					for(int u=0; u<userSchools.length; u++){
						for(int j = 0; j<userSchools[u].length; j++){
							j++;
							  String name = userSchools[u][j];

							  schools.add(name);
					  
						  }
					  }
					Student s = new Student(users[i][0], users[i][1], users[i][2], users[i][3], users[i][4].charAt(0), users[i][5].charAt(0), schools);
					students.add(s);
			  }
			  else{
				  Student s = new Student(users[i][0], users[i][1], users[i][2], users[i][3], users[i][4].charAt(0), users[i][5].charAt(0), schools);
				  students.add(s);
			  }
			}
		}
	    return students;
	  }
	  
	  /**
	   * When called, this method returns an arraylist of all admin users
	   * 
	   * @return ArrayList<Admin> of all the admins in the database
	   */
	  public ArrayList<Admin> getAdmins(){
		  
		  ArrayList<Admin> admins = new ArrayList<Admin>();
		  String[][] users =  uDBL.user_getUsers();
		  
		  for(int i = 0; i<users.length; i++){
			  if(users[i][4].charAt(0) == 'a'){
				  Admin s = new Admin(users[i][0], users[i][1], users[i][2], users[i][3], users[i][4].charAt(0), users[i][5].charAt(0));
				  admins.add(s);
			  }
		  }
		  return admins;
	  }
	  
	  /**
	   * Once given the information needed for a new user,
	   * this method creates a new Student or Admin user
	   * 
	   * @param uName  : String, user's user name
	   * @param fName : String, user's first name
	   * @param lName : String, user's last name
	   * @param pWord : String, user's password
	   * @param type  : char, shows whether a user is an Admin or Student
	   * @param status : char, shows whether or not the user is currently logged in
	   */
	  public boolean addUser(String uName, String fName, String lName, String pWord, char type, char status)
	  {
		int i = uDBL.user_addUser(fName, lName, uName, pWord, type);
		if(i>-1)
			return true;
		else
			return false;
	  }
	  
	  /**
	   * When called, this method deletes a selected user from the database   
	   * 
	   * @param uName : String, user name of the user to delete
	   */
	  public boolean deleteUser(String uName)
	  {
	    
		if(uDBL.user_deleteUser(uName)>-1)
			return true;
		else
			return false;
	  }
	  
	  /**
	   * When called, this method removes a selected school from database 
	   * 
	   * @param university : University, the university to remove from database
	   */
	  public boolean removeSchool(String name)
	  {
		if(uDBL.university_deleteUniversity(name)>-1)
			return true;
		else
			return false;
	  }
	  
	  /**
	   * When called, this method removes the selected saved school from the user's saved school list
	   * 
	   * @param uName : String, name of the User whose saved list the school will be removed from
	   * @param schoolName : String, name of the university 
	   */
	  public boolean removeSavedSchool(String uName, String schoolName)
	  {
		if(uDBL.user_removeSchool(uName, schoolName)>-1)
			return true;
		else
			return false;
	  }
	  
	  /**
	   * When called, this method saves a school and it's information to the sudent's list of saved schools 
	   * 
	   * @param uName : String, name of student to save school to
	   * @param schoolName : String, name of school to add
	   */
	  public boolean saveSchool(String uName, String schoolName)
	  {
	    //TODO: using the University object given to it, add it to the DBL
		if(uDBL.user_saveSchool(uName, schoolName)>-1)
			return true;
		else
			return false;
	  }
	  
	  /**
	   * When called, this method returns a student object 
	   * 
	   * @param uName : String, the user name of the user to get information on
	   * @return Student object of student if found, null if not.
	   */
	  public Student getUser(String uName)
	  {
		//TODO: search DatabaseLibrary(DBL) to find if User object exists
		  String[][] users =  uDBL.user_getUsers();
		  String[][] userSchools = uDBL.user_getUsernamesWithSavedSchools();
		  ArrayList<String> schools = new ArrayList<String>();
			
		  for(int i = 0; i<users.length; i++){
			  schools.clear();
			  String check = users[i][2];
			  if(users[i][2].equals(uName) && users[i][4].charAt(0)=='u'){
				  if(userSchools!=null){
					  for(int u=0; u<userSchools.length; u++){
						  if(userSchools[u][0].equals(uName)){
							  for(int j = 0; j<userSchools[u].length; j++){
								  j++;
								  String name = userSchools[u][j];

								  schools.add(name);
						  
							  }
						  }
					  }
					  Student s = new Student(users[i][0], users[i][1], users[i][2], users[i][3], users[i][4].charAt(0), users[i][5].charAt(0), schools);
					  return s;
				  }
				  else{
					  Student s = new Student(users[i][0], users[i][1], users[i][2], users[i][3], users[i][4].charAt(0), users[i][5].charAt(0), schools);
					  return s;
				  }
			  }
		  }
		  return null;
	  }
	  
	  /**
	   * When called, this method returns an admin object
	   * 
	   * @param uName username to search for
	   * @return Admin, the admin object of the name parameter, or null if not found
	   */
	  public Admin getAdmin(String uName){
		  String[][] users = uDBL.user_getUsers();
		  for(int i =0; i<users.length; i++){
			  if(users[i][2].equals(uName)){
				  Admin a = new Admin(users[i][0], users[i][1], users[i][2], users[i][3], users[i][4].charAt(0), users[i][5].charAt(0));
				  return a;
			  }
		  }
		  return null;
	  }
	  
	  /**
	   * When called, this method returns a university object
	   * 
	   * @param name: String, name of university to get information on
	   */
	  public University getSchool(String name)
	  {
		  String[][] s = uDBL.university_getUniversities();
			 
		  for(int i=0; i<s.length; i++){
			  String n = s[i][0];
			  if(s[i][0].equals(name)){
				  University u = new University(s[i][0], s[i][1], s[i][2], s[i][3], Integer.parseInt(s[i][4]), Double.parseDouble(s[i][5]), Double.parseDouble(s[i][6]),
						 Double.parseDouble(s[i][7]), Double.parseDouble(s[i][8]), Double.parseDouble(s[i][9]), Integer.parseInt(s[i][10]), Double.parseDouble(s[i][11]),
						 Double.parseDouble(s[i][12]), Integer.parseInt(s[i][13]), Integer.parseInt(s[i][14]), Integer.parseInt(s[i][15]));
				  u.setEmphases(getEmphases(s[i][0]));
				  return u;
			  }
		  }
		  return null;
	  }
	  
	  /**
	   * When called, this method returns an arraylist of universities similar to the one given
	   * 
	   * @param university: University, university to get related schools for
	   */
	 /** public ArrayList<University> getRelatedSchools(University university)
	  {
		  String name = university.getName();
		  return search.viewSchool(name);
	  }
	  **/
	  /**
	   * When called, this method returns an array list of all the schools from DBL 
	   * 
	   */
	  public ArrayList<University> getSchools()
	  {
		 String[][] s = uDBL.university_getUniversities();
		 ArrayList<University> universities = new ArrayList<University>();
		 
		 for(int i=0; i<s.length; i++){
			 University u = new University(s[i][0], s[i][1], s[i][2], s[i][3], Integer.parseInt(s[i][4]), Double.parseDouble(s[i][5]), Double.parseDouble(s[i][6]),
					 Double.parseDouble(s[i][7]), Double.parseDouble(s[i][8]), Double.parseDouble(s[i][9]), Integer.parseInt(s[i][10]), Double.parseDouble(s[i][11]),
					 Double.parseDouble(s[i][12]), Integer.parseInt(s[i][13]), Integer.parseInt(s[i][14]), Integer.parseInt(s[i][15]));
			 universities.add(u);
		 }
		 return universities;
	  }
	  
	  /**
	   * When called, this method uses the given information to change the given schools information
	   * 
	   * @param name : String, name of the University object to change (can't be changed here)
	   * @param state : String, the school's state
	   * @param location : String, the city the school resides in
	   * @param control : String, state or private school
	   * @param numberOfStudents : int, numbers of students the user enters
	   * @param percentFemales : double, percent of female students attending the university
	   * @param satVerbal : int, the required score to get in to the university
	   * @param satMath : int, the required score to get in to the university
	   * @param expenses : cost of attending the university
	   * @param percentFinAid : double, average percent of financial aid given to students
	   * @param applicants : double, number of students applying to the university
	   * @param percentAdmitted : double, average percent of applicants admitted
	   * @param percentEnrolled : double, average percent of admitted students that enrolled
	   * @param academScale : int, average rating of this school academically from 1(poor)-5(excellent)
	   * @param socialScale : int, average rating of this school socially from 1(poor)-5(excellent)
	   * @param qualOfLife : int, average rating of this school's quality of life from 1(poor)-5(excellent)
	   */
	  public int editSchool(String name, String state, String location, String control, int numberOfStudents, 
		double percentFemales, double satVerbal, double satMath, double expenses, double percentFinAid, int applicants,
		double percentAdmitted, double percentEnrolled, int academScale, int socialScale, 
	    int qualOfLife)
	  {               
		  if(numberOfStudents<0)
				return 1;
			if(percentFemales<0||percentFemales>100)
				return 2;
			if(satVerbal<0||satVerbal>800)
				return 3;
			if(satMath<0||satMath>800)
				return 4;
			if(expenses<0)
				return 5;
			if(percentFinAid<0||percentFinAid>100)
				return 6;
			if(applicants<0)
				return 7;
			if(percentAdmitted<0||percentAdmitted>100)
				return 8;
			if(percentEnrolled<0||percentEnrolled>100)
				return 9;
			if(academScale<0||academScale>5)
				return 10;
			if(socialScale<0||socialScale>5)
				return 11;
			if(qualOfLife<0||qualOfLife>5)
				return 12;
			if(!location.equalsIgnoreCase("SMALL-CITY") && !location.equalsIgnoreCase("URBAN") && !location.equalsIgnoreCase("SUBURBAN") && !location.equals(""))
				return 13;
			if(!control.equalsIgnoreCase("PRIVATE") && !control.equalsIgnoreCase("PUBLIC") && !control.equals(""))
				return 14;
		if(uDBL.university_editUniversity(name, state, location, control, numberOfStudents, percentFemales, satVerbal, satMath,
		     expenses, percentFinAid, applicants, percentAdmitted, percentEnrolled, academScale, socialScale, qualOfLife)>-1)
			return 0;
		else
			return -1;
	  }
	  
	  /**
	   * When called, this method adds a new school to the UniversityDBLibrary 
	   * and using all inputs, create a new University object
	   * 
	   * @param name : String, name of the University object
	   * @param state : String, the school's state
	   * @param location : String, the city the school resides in
	   * @param control : String, state or private school
	   * @param numberOfStudents : int, numbers of students the user enters
	   * @param percentFemales : double, percent of female students attending the university
	   * @param satVerbal : int, the required score to get in to the university
	   * @param satMath : int, the required score to get in to the university
	   * @param expenses : cost of attending the university
	   * @param percentFinAid : double, average percent of financial aid given to students
	   * @param applicants : double, number of students applying to the university
	   * @param percentAdmitted : double, average percent of applicants admitted
	   * @param percentEnrolled : double, average percent of admitted students that enrolled
	   * @param academScale : int, average rating of this school academically from 1(poor)-5(excellent)
	   * @param socialScale : int, average rating of this school socially from 1(poor)-5(excellent)
	   * @param qualOfLife : int, average rating of this school's quality of life from 1(poor)-5(excellent)
	   */
	  public int addSchool(String name, String state, String location, String control, int numberOfStudents, 
	   double percentFemales, double satVerbal, double satMath, double expenses, double percentFinAid, int applicants,
	   double percentAdmitted, double percentEnrolled, int academScale, int socialScale, 
	   int qualOfLife)
	  {
		  if(numberOfStudents<0)
				return 1;
			if(percentFemales<0||percentFemales>100)
				return 2;
			if(satVerbal<0||satVerbal>800)
				return 3;
			if(satMath<0||satMath>800)
				return 4;
			if(expenses<0)
				return 5;
			if(percentFinAid<0||percentFinAid>100)
				return 6;
			if(applicants<0)
				return 7;
			if(percentAdmitted<0||percentAdmitted>100)
				return 8;
			if(percentEnrolled<0||percentEnrolled>100)
				return 9;
			if(academScale<0||academScale>5)
				return 10;
			if(socialScale<0||socialScale>5)
				return 11;
			if(qualOfLife<0||qualOfLife>5)
				return 12;
			if(!location.equalsIgnoreCase("SMALL-CITY") && !location.equalsIgnoreCase("URBAN") && !location.equalsIgnoreCase("SUBURBAN") && !location.equals(""))
				return 13;
			if(!control.equalsIgnoreCase("PRIVATE") && !control.equalsIgnoreCase("PUBLIC") && !control.equals(""))
				return 14;
		//TODO: create University object and add it to the list of Universities in DBL
		if(uDBL.university_addUniversity(name, state, location, control, numberOfStudents, percentFemales, satVerbal, satMath,
				expenses, percentFinAid, applicants, percentAdmitted, percentEnrolled, academScale, socialScale, qualOfLife)>-1)
			return 0;
		else
			return -1;
		
	  }
	  
	  /**
	   * When called, this method adds an emphasis to the given school
	   * 
	   * @param sName : String, name of the school to add emphasis to
	   * @param emphasis1 : String, the number 1 major supported at this school
	   */
	  public void addEmphasis(String sName, String emphasis1)
	  {
		uDBL.university_addUniversityEmphasis(sName, emphasis1);
	    //if(uDBL.university_addUniversityEmphasis(sName, emphasis1)>-1)
	    	//return true;
	    //else
	    	//return false;
	  }
	  
	  /**
	   * When called, this method removes the given emphasis from the given school
	   * 
	   * @param sName : String, name of the school to remove emphasis from
	   * @param emphasis1 : String, one emphasis to remove
	   */
	  public void removeEmphasis(String sName, String emphasis1)
	  {
		uDBL.university_removeUniversityEmphasis(sName, emphasis1);
	   // if(uDBL.university_removeUniversityEmphasis(sName, emphasis1)>-1)
	    //	return true;
	    //else
	    	//return false;
	  }
	  
	  /**
	   * When called, this method changes the given information for the student in the DBL
	   * 
	   * @param uName : String, user name of user to edit
	   * @param fName : String, first name of user
	   * @param lName : String, last name of user
	   * @param pWord : String, password of user
	   * @param type : String, user type (Admin or Student)
	   * @param status : String, whether or not the user is logged (will never be changed here)
	   */
	  public boolean editUser(String uName, String fName, String lName, String pWord, char type, char status)
	  {
		   if(type == 'a'||type == 'u')
			   if(status=='Y'||status=='N')
					  if(uDBL.user_editUser(uName, fName, lName, pWord, type, status)>-1)
			    return true;
			    	 return false;
	  }
	
	  /**
	   * When called, this method returns an arraylist of the given schools' emphases
	   * 
	   * @param school : name of school to get emphases for
	   * @return ArrayList of the schools' emphases
	   */
	  public ArrayList<String> getEmphases(String school){
		  String[][] schoolEmph = uDBL.university_getNamesWithEmphases();
		  ArrayList<String> s= new ArrayList<String>();
		  for(int i = 0; i<schoolEmph.length; i++){
			  if(schoolEmph[i][0].equals(school)){
				  for(int u =0; u<schoolEmph[i].length; u++){
					  u++;
					  s.add(schoolEmph[i][u]);
				  }
			  }
		  }
		  return s;
	  }

}
