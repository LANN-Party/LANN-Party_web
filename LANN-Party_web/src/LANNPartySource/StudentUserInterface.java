package LANNPartySource;
import java.util.*;
 /**
  * FileName: StudentUserInterface.java
  */
 
 /**
  * interface dedicated to users who are Students
  * @author Noah Hynes-Marquette
  * @version 3/27/2017
  *
  */
public class StudentUserInterface {
	
	private UserController uc = new UserController();
	private Student currentStudent;
	//Data fields
	/**confirmation from user*/
	boolean confirm;
	
	//Data fields
	/**results from search*/
	String searchResults;
	
	/**
	 * displays Student user's profile
	 * 
	 * @param uName; String, user name of student to get information on
	 */
	public void viewProfile(String fName)
	{
		//telling UserController to show information on the given student
		uc.displayProfile(fName);
	}
	
	/**
	 * calls UserController to display the user's saved schools
	 * 
	 * @param uName : String, user name of student to get saved schools from
	 */
	public void viewSavedSchools(String uName)
	{
		uc.displaySavedSchools(uName);
	}
	
	/**
	 * calls UserController to display the user's saved schools
	 * 
	 * @param uName : String, user name of student to get saved schools from
	 */
	public ArrayList<String> getSavedSchools(String uName)
	{
		return uc.getSavedSchools(uName);
	}
	
	/**
	 * allows the Student user to make changes to their profile 
	 * information before finalizing the changes
	 * 
	 * @param uName; String, username of the user (cannot be changed here)
     * @param fName; String, first name of the user
	 * @param lName; String, last name of the user
	 * @param pWord; String, the user's password
	 * @param type; char, type of user (Admin or Student)
	 * @param status; char, whether or not the user is logged (will never be changed here)
	 */
	public boolean editInfo(String uName, String fName, String lName, String pWord, char type, char status)
	{
		currentStudent.setFirstName(fName);
		currentStudent.setLastName(lName);
		currentStudent.setPassword(pWord);
		currentStudent.setStatus(status);
		currentStudent.setType(type);
		return uc.editInfo(uName, fName, lName, pWord, type, status);
	}
	
	/**
	 * displays information of selected school
	 * 
	 * @param sName : String, school name
	 */
	public void viewSchool(String sName)
	{
		uc.displaySchool(sName);
	}
	
	/**
	 * removes selected school from the Student user's profile
	 * 
	 * @param uName : String, name of student to save school to
	 * @param schoolName : String, name of school to add
	 */
	public boolean removeSchool(String uName, String sName)
	{
		return uc.removeSchool(uName, sName);
	}
	
	
	/**
	 * Shows results for name of school given from the user
	 * 
	 * @param name; String, name of school
	 */
	public ArrayList<University> searchSchool(String schoolName, String state, String location, String control,
			int numStuH, int numStuL, double percFemaleH, double percFemaleL, double satVerbH, double satVerbL, double satMathH, double satMathL, double expensesH,
			double expensesL, double percFinacialH, double percFinacialL, int numberAppsH, int numberAppsL,
			double percAdmittedH, double percAdmittedL, double percEnrolledH, double percEnrolledL, int acdemScaleH,
			int acdemScaleL, int socialscaleH, int socialscaleL, int qualityLifeH, int qualityLifeL, String emph1,
			String emph2, String emph3, String emph4, String emph5)
	{
		return uc.searchSchool(schoolName, state, location, control, numStuH, numStuL, percFemaleH, percFemaleL,
				satVerbH, satVerbL, satMathH, satMathL, expensesH, expensesL, percFinacialH, percFinacialL,
				numberAppsH, numberAppsL, percAdmittedH, percAdmittedL, percEnrolledH, percEnrolledL, acdemScaleH,
				acdemScaleL, socialscaleH, socialscaleL, qualityLifeH, qualityLifeL, emph1, emph2, emph3, emph4, emph5);
		
	}
	
	/**
	 * Displays the top 5 recommended schools based on name of school given
	 * @param uName name of school to compare for top 5 similar schools
	 */
	public void viewRecSchools(String sName){
		ArrayList<University> univ = uc.viewRecSchools(sName);
		
	}
	
	/**
	 * Adds selected school to Students saved schools
	 * 
	 * @param uName : String, user name of student
	 * @param sName : String, name of school to save
	 * 
	 */
	public boolean saveSchool(String uName, String sName)
	{
		//sending University object to be sorted in the UserController
		return uc.saveSchool(uName, sName);
	}
	
	/**
	 * @return the currentStudent
	 */
	public Student getCurrentStudent(){
		return currentStudent;
	}
	
	/**
	 * sets the currentStudent
	 * @param currentStudent
	 */
	public void setCurrentStudent(Student currentStudent){
		this.currentStudent = currentStudent;
	}
	
	public boolean isLoggedIn(){
		return currentStudent.isLoggedOn();
	}
}
