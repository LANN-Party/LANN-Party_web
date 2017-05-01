/**
 * 
 */
package LANNPartySource;
import java.io.*;
import java.util.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


/**
 * @author lrdahlquist
 * @version 5/1/2016
 */
public class ExtraInfoExtractor {
	private BufferedWriter bw;
	
	public ExtraInfoExtractor() {
		super();
	}
	/**
	 * Adds one view to the school selected
	 * 
	 * @param schoolName
	 */
	public void addViews(String schoolName){
		try{
			Path myPath = Paths.get("/usr/people/handins/CS230/LANN-Party Phase 4/SchoolInfo.txt");
		ArrayList<String> fileContent = new ArrayList<String>(Files.readAllLines(myPath, StandardCharsets.UTF_8));

		for (int i = 0; i < fileContent.size(); i++) {
			String line = fileContent.get(i);
			String[] stuff = line.split(",");
		    if (stuff[0].equals(schoolName)) {
		    	int numViews = Integer.parseInt(stuff[2]);
				numViews++;
		        fileContent.set(i, stuff[0]+","+stuff[1]+","+numViews);
		        break;
		    	}
			}

		Files.write(myPath, fileContent, StandardCharsets.UTF_8);
		}
		catch(Exception E){
			System.out.println("Something went wrong with the text file - ADDVIEWS");
			System.out.println(E);
		}
		
	}
	/**
	 * Edits the link that is associated with the school provided
	 * 
	 * @param schoolName
	 * @param newLink
	 */
	public void editLink(String schoolName,String newLink){
		try{
			Path myPath = Paths.get("/usr/people/handins/CS230/LANN-Party Phase 4/SchoolInfo.txt");
		ArrayList<String> fileContent = new ArrayList<String>(Files.readAllLines(myPath, StandardCharsets.UTF_8));

		for (int i = 0; i < fileContent.size(); i++) {
			String line = fileContent.get(i);
			String[] stuff = line.split(",");
		    if (stuff[0].equals(schoolName)) {
		        fileContent.set(i, stuff[0]+","+newLink+","+stuff[2]);
		        break;
		    	}
			}

		Files.write(myPath, fileContent, StandardCharsets.UTF_8);
		}
		catch(Exception E){
			System.out.println("Something went wrong with the text file - EDITLINK");
		}
		
	}
	/**
	 * Adds a new university to the text file.
	 * 
	 * @param schoolName
	 * @param link
	 */
	public void addUniversity(String schoolName, String link){
		try{
			bw = new BufferedWriter(new FileWriter("/usr/people/handins/CS230/LANN-Party Phase 4/SchoolInfo.txt", true));
			String line = schoolName+","+link+","+0;
			bw.write(line);
			bw.write(System.lineSeparator());
			bw.flush();
			bw.close();
		}
		catch(Exception e){
			System.out.println("Something went wrong with the text file - ADDUNIVERSITY");
		}
	}
	/**
	 * Gets the number of views for a university
	 * 
	 * @param schoolName
	 * @return the number of views
	 */
	public int getNumViews(String schoolName){
		try{
			Path myPath = Paths.get("/usr/people/handins/CS230/LANN-Party Phase 4/SchoolInfo.txt");
			ArrayList<String> fileContent = new ArrayList<String>(Files.readAllLines(myPath, StandardCharsets.UTF_8));

			for (int i = 0; i < fileContent.size(); i++) {
				String line = fileContent.get(i);
				String[] stuff = line.split(",");
			    if (stuff[0].equals(schoolName)) {
			    	int numViews = Integer.parseInt(stuff[2]);
			    	return numViews;
			    	}
				}
			}
		catch(Exception E){
			System.out.println("Something went wrong with the text file - RETURNVIEWS");
			System.out.println(E);
		}
		return -1;
	}
	/**
	 * Gets the link associated with the school
	 * 
	 * @param schoolName
	 * @return
	 */
	public String getLink(String schoolName){
		try{
		Path myPath = Paths.get("/net/home/lrdahlquist/git/LANN-Party_web/LANN-Party_web/SchoolInfo/SchoolInfo.txt");
		ArrayList<String> fileContent = new ArrayList<String>(Files.readAllLines(myPath, StandardCharsets.UTF_8));

		for (int i = 0; i < fileContent.size(); i++) {
			String line = fileContent.get(i);
			String[] stuff = line.split(",");
		    if (stuff[0].equals(schoolName)) {
		        	String link = stuff[1];
		        	return link;
		    	}
			}
		}
		catch(Exception E){
			System.out.println("Something went wrong with the text file - EDITLINK");
		}
		return"fail";
	}
}
