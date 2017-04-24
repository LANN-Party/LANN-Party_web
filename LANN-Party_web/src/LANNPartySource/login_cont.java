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
	
	public login_cont(){
		dc = new DatabaseController("lannp", "lannp", "csci230");
	}
	/**
	 * Logs the user in
	 * 
	 * @param String username, password
	 * @param boolean steal
	 */
	
	public boolean logon(String username, String password, boolean steal)
	{
			Student s = dc.getUser(username);
			Admin a = dc.getAdmin(username);
			if(s != null){
				if(password.equals(s.getPassword())){
					if(!s.isLoggedOn()){
						s.setLogon(true);
						//System.out.println("Logged on");
						return true;
					}
					else{
						Scanner scan = new Scanner(System.in);
						System.out.println("You are already logged in, would you like to steal the session");
						System.out.println("Enter Yes / No");
						String input=scan.nextLine();
						scan.close();
						if (input.equals("Yes") || input.equals("yes")){
/*Change? Redundant*/			s.setLogon(true);
								return true;
						}
						else{
							loginFail();
							return false;
						}
					}
				}
				else{
					loginFail();
					return false;
				}
			}
			else if(a != null){
				if(password.equals(a.getPassword())){
					if(!a.isLogon()){
						a.setLogon(true);
						//System.out.println("Logged on");
						return true;
					}
					else{
						Scanner scan = new Scanner(System.in);
						System.out.println("You are already logged in, would you like to steal the session");
						System.out.println("Enter Yes / No");
						String input=scan.nextLine();
						scan.close();
						if (input.equals("Yes") || input.equals("yes")){
	/*Change? Redundant*/			a.setLogon(true);
									return true;
						}
						else{
							loginFail();
							return false;
						}
					}
				}
				else{
					loginFail();
					return false;
				}
			}
		else
			loginFail();
			return false;
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

}
