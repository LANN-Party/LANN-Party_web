/**
 * FileName: login_cont.java
 */
package LANNPartySource;
import java.util.*;
/**
 * A controller to login the users, admin or student
 * @author lrdahlquist
 * @version 3/27/17
 *
 */
public class login_cont {
	DatabaseController dc;
	StudentUserInterface SI;
	AdminUI AI;
	private Admin currentAdmin;
	private Student currentStudent;
	
	public login_cont(){
		dc = new DatabaseController("lannp", "lannp", "csci230");
		SI = new StudentUserInterface();
		AI = new AdminUI();
	}
	/**
	 * Logs the user in
	 * 
	 * @param String username, password
	 * @param boolean steal
	 */
	
	public int logon(String username, String password, boolean steal)
	{
			Student s = dc.getUser(username);
			Admin a = dc.getAdmin(username);
			if(s != null){
				if(password.equals(s.getPassword())){
					if(!s.isLoggedOn()){
						s.setLogon(true);
						currentStudent = s;
						SI.setCurrentStudent(s);
						return 1;
					}
					else{
						Scanner scan = new Scanner(System.in);
						System.out.println("You are already logged in, would you like to steal the session");
						System.out.println("Enter Yes / No");
						String input=scan.nextLine();
						scan.close();
						if (input.equals("Yes") || input.equals("yes")){
								s.setLogon(true);
								currentStudent = s;
								SI.setCurrentStudent(s);
								return 1;
						}
						else{
							loginFail();
							return 0;
						}
					}
				}
				else{
					loginFail();
					return 0;
				}
			}
			else if(a != null){
				if(password.equals(a.getPassword())){
					if(!a.isLogon()){
						a.setLogon(true);
						//System.out.println("Logged on");
						currentAdmin = a;
						AI.setCurrentAdmin(a);
						return 2;
					}
					else{
						Scanner scan = new Scanner(System.in);
						System.out.println("You are already logged in, would you like to steal the session");
						System.out.println("Enter Yes / No");
						String input=scan.nextLine();
						scan.close();
						if (input.equals("Yes") || input.equals("yes")){
									a.setLogon(true);
									currentAdmin = a;
									AI.setCurrentAdmin(a);
									return 2;
						}
						else{
							loginFail();
							return 0;
						}
					}
				}
				else{
					loginFail();
					return 0;
				}
			}
		else
			loginFail();
			return 0;
	}
	
	/**
	 * Notifies the user that the login failed
	 * 
	 */
	
	public void loginFail()
	{
		System.out.println("Login failed, please try again");
	}
	
	public boolean registerStudent(String fName, String lName, String uName, String pWord, char type, char status){
		return dc.addUser(uName, fName, lName, pWord, type, status);
		
	}
	
	public boolean registerAdmin(String fName, String lName, String uName, String pWord, char type, char status){
		return dc.addUser(uName, fName, lName, pWord, type, status);
	}
	
	public Admin getCurrentAdmin(){
		return this.currentAdmin;
	}
	
	public Student getCurrentStudent(){
		return this.currentStudent;
	}

}
