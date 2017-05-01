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
		Path myPath = Paths.get("/LANN-Party_web/SchoolInfo", "SchoolInfo.txt");
		ArrayList<String> fileContent = new ArrayList<>(Files.readAllLines(myPath, StandardCharsets.UTF_8));

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
		Path myPath = Paths.get("/LANN-Party_web/SchoolInfo", "SchoolInfo.txt");
		ArrayList<String> fileContent = new ArrayList<>(Files.readAllLines(myPath, StandardCharsets.UTF_8));

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
			bw = new BufferedWriter(new FileWriter("/LANN-Party_web/SchoolInfo/SchoolInfo.txt", true));
			String line = schoolName+link+0;
			bw.write(line);
			bw.flush();
			bw.close();
		}
		catch(Exception e){
			System.out.println("Something went wrong with the text file - ADDUNIVERSITY");
		}
	}
}
