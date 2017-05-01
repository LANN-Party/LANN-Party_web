package LANNPartySource;

import java.util.*;

/**
 * controller for all searches made by the user
 * 
 * @author njfloeder
 * @version 3/27/2017
 */
public class Search_Controler {

	private DatabaseController dc;
	
	private int maxNumberOfStudents =0, minNumberOfStudents=-1, maxNumOfApplicants=0, minNumOfApplicants=-1, maxAcademicScale=0, minAcademicScale=-1, maxSocialScale=0, 
		minSocialScale=-1, maxQualityOfLife=0, minQualityOfLife=-1;
	private double maxPercentFemale=0.0, minPercentFemale=-1.0, maxSATVerbal=0.0, minSATVerbal=-1.0, maxSATMath=0.0, minSATMath=-1.0, maxExpenses=0.0, minExpenses=-1.0,
		maxPercentFinancialAid=0.0, minPercentFinancialAid=-1.0, maxPercentAdmitted=0.0, minPercentAdmitted=-1.0, maxPercentEnrolled=0.0, minPercentEnrolled=-1.0;
	/**
	 * @param dc
	 */
	public Search_Controler() {
		dc = new DatabaseController("lannp", "lannp", "csci230");
	}

	/**
	 * this method gets related schools from a user search school name
	 * 
	 * @param name,
	 *            name of user
	 * @return an object array of schools
	 */
	public ArrayList<University> displaySearchResults(String schoolName, String state, String location, String control,
			int numStuH, int numStuL, double percFemaleH, double percFemaleL, double satVerbH, double satVerbL, double satMathH, double satMathL, double expensesH,
			double expensesL, double percFinacialH, double percFinacialL, int numberAppsH, int numberAppsL,
			double percAdmittedH, double percAdmittedL, double percEnrolledH, double percEnrolledL, int acdemScaleH,
			int acdemScaleL, int socialscaleH, int socialscaleL, int qualityLifeH, int qualityLifeL, String emph1,
			String emph2, String emph3, String emph4, String emph5) {
		
		String[] states = {"ALABAMA", "ALASKA", "ARIZONA", "ARKANSAS", "CALIFORNIA", "COLORADO", "CONNECTICUT", "DELAWARE", "FLORIDA", "GEORGIA", "HAWAII", "IDAHO", "ILLINOIS", "INDIANA", "IOWA",
				"KANSAS", "KENTUCKY", "LOUISIANA", "MAINE", "MARYLAND", "MASSACHUSETTS", "MICHIGAN", "MINNESOTA", "MISSISSIPPI", "MISSOURI", "MONTANA", "NEBRASKA", "NEVADA", "NEW HAMPSHIRE", 
				"NEW JERSEY", "NEW MEXICO", "NEW YORK", "NORTH CAROLINA", "NORTH DAKOTA", "OHIO", "OKLAHOMA", "OREGON", "OREGON", "PENNSYLVANIA", "RHODE ISLAND", "SOUTH CAROLINA", "SOUTH DAKOTA",
				"TENNESSEE", "TEXAS", "UTAH", "VERMONT", "VIRGINIA", "WASHINGTON", "WEST VERGINIA", "WISCONSIN", "WYOMING"};
		boolean b = false;
		
		for(int i = 0; i<=49; i++){
			if(states[i].equals(state)||state==""){
				b = true;
				break;
			}
			else
				b = false;
		}
		if(b==false && !(state == null))
			throw new IllegalArgumentException("Not valid state");
		
		if(!(location == null) && !(location.equals("URBAN") || location.equals("SUBURBAN") || location.equals("SMALL-CITY")||location=="")){
			throw new IllegalArgumentException("Not valid location");
		}
		
		if(!(control == null) && !(control.equals("PRIVATE") || control.equals("PUBLIC")||control==""))
			throw new IllegalArgumentException("Not valid control");
		
		if(numStuL <0)
			throw new IllegalArgumentException("Invalid number of students");
		
		if(percFemaleH > 100 || percFemaleL <0)
			throw new IllegalArgumentException("Percent of Female students must be between 0 and 100");
		
		if(satVerbH > 800 || satVerbL < 0)
			throw new IllegalArgumentException("SAT Verbal must be between 0 and 800");
		
		if(satMathH > 800 || satMathL <0)
			throw new IllegalArgumentException("SAT Math must be between 0 and 800");
		
		if(expensesL < 0)
			throw new IllegalArgumentException("Expenses must not be negative");
		
		if(percFinacialH > 100 || percFinacialL < 0)
			throw new IllegalArgumentException("Percent Financial Aid must be between 0 and 100");
		
		if(numberAppsL < 0)
			throw new IllegalArgumentException("Number of Apllicants must not be negative");
		
		if(percAdmittedH > 100 || percAdmittedL < 0)
			throw new IllegalArgumentException("Percent Admitted must be between 0 and 100");
		
		if(percEnrolledH > 100 || percEnrolledL < 0)
			throw new IllegalArgumentException("Percent Enrolled must be between 0 and 100");
		
		if(acdemScaleH > 5 || acdemScaleL < 0)
			throw new IllegalArgumentException("Academic Scale must be between 0 and 5");
		
		if(socialscaleH > 5 || socialscaleL < 0)
			throw new IllegalArgumentException("Social Scale must be between 0 and 5");
		
		if(qualityLifeH > 5 || qualityLifeL <0)
			throw new IllegalArgumentException("Quality of Life must be between 0 and 5");

		ArrayList<University> inRange = new ArrayList<University>();
		int numStuh = numStuH;
		int numStul = numStuL;
		double percFemaleh = percFemaleH;
		double percFemalel = percFemaleL;
		double satVerbh = satVerbH;
		double satVerbl = satVerbL;
		double satMathh = satMathH;
		double satMathl = satMathL;
		int acdemScaleh = acdemScaleH;
		double expensesh = expensesH;
		double expensesl = expensesL;
		double percFinacialh = percFinacialH;
		double percFinaciall = percFinacialL;
		int numberAppsh = numberAppsH;
		int numberAppsl = numberAppsL;
		double percAdmittedh = percAdmittedH;
		double percAdmittedl = percAdmittedL;
		double percEnrolledh = percEnrolledH;
		double percEnrolledl = percEnrolledL;
		int acdemScalel = acdemScaleL;
		int socialscaleh = socialscaleH;
		int socialscalel = socialscaleL;
		int qualityLifeh = qualityLifeH;
		int qualityLifel = qualityLifeL;
		int numEmphs=0;
		
		if(schoolName==null)
			schoolName="";
		if(state==null)
			state="";
		if(location==null)
			location="";
		if(control==null)
			control="";
		if(emph1!="")
			numEmphs++;
		if(emph2!="")
			numEmphs++;
		if(emph3!="")
			numEmphs++;
		if(emph4!="")
			numEmphs++;
		if(emph5!="")
			numEmphs++;
		if (numStuh == 0)
			numStuh = Integer.MAX_VALUE;
		if(percFemaleh == 0)
			percFemaleh = Double.MAX_VALUE;
		if(percFemalel == 0)
			percFemalel = 0;
		if (satVerbh == 0)
			satVerbh = Double.MAX_VALUE;
		if (satVerbl == 0)
			satVerbl = 0;
		if (satMathh == 0)
			satMathh = Double.MAX_VALUE;
		if (satMathl == 0)
			satMathl = 0;
		if (acdemScaleh == 0)
			acdemScaleh = Integer.MAX_VALUE;
		if (expensesh == 0)
			expensesh = Double.MAX_VALUE;
		if (expensesl == 0)
			expensesl = 0;
		if (percFinacialh == 0)
			percFinacialh = Double.MAX_VALUE;
		if (percFinaciall == 0)
			percFinaciall = 0;
		if (numberAppsh == 0)
			numberAppsh = Integer.MAX_VALUE;
		if (numberAppsl == 0)
			numberAppsl = 0;
		if (percAdmittedh == 0)
			percAdmittedh = Double.MAX_VALUE;
		if (percAdmittedl == 0)
			percAdmittedl = 0;
		if (percEnrolledh == 0)
			percEnrolledh = Double.MAX_VALUE;
		if (percEnrolledl == 0)
			percEnrolledl = 0;
		if (acdemScalel == 0)
			acdemScalel = 0;
		if (socialscaleh == 0)
			socialscaleh = Integer.MAX_VALUE;
		if (socialscalel == 0)
			socialscalel = 0;
		if (qualityLifeh == 0)
			qualityLifeh = Integer.MAX_VALUE;
		if (qualityLifel == 0)
			qualityLifel = 0;
		
		
		for (University x : dc.getSchools()) {
			if (x.getName().contains(schoolName) || schoolName==("")) {
				if (x.getState().contains(state) || state==(""))
					if (x.getLocation().equals(location) || location==(""))
						if (x.getControl().equals(control) || control==(""))
							if (x.getNumOfStudents() <= numStuh && x.getNumOfStudents() >= numStul)
								if (x.getPercentFemale() <= percFemaleh && x.getPercentFemale() >= percFemalel)
								if (x.getSATVerbal() <= satVerbh && x.getSATVerbal() >= satVerbl)
									if (x.getSATMath() <= satMathh && x.getSATMath() >= satMathl)
										if (x.getExpenses() <= expensesh && x.getExpenses() >= expensesl)
											if (x.getPercentFinancialAid() <= percFinacialh
											&& x.getPercentFinancialAid() >= percFinaciall)
												if (x.getNumOfApplicants() <= numberAppsh
												&& x.getNumOfApplicants() >= numberAppsl)
													if (x.getPercentAdmitted() <= percAdmittedh
													&& x.getPercentAdmitted() >= percAdmittedl)
														if (x.getPercentEnrolled() <= percEnrolledh
														&& x.getPercentEnrolled() >= percEnrolledl)
															if (x.getAcademicScale() <= acdemScaleh
															&& x.getAcademicScale() >= acdemScalel)
																if (x.getSocialScale() <= socialscaleh
																	&& x.getSocialScale() >= socialscalel)
																	if (x.getQualityOfLife() <= qualityLifeh
																		&& x.getQualityOfLife() >= qualityLifel) {
																		int c =numEmphs;
																		if(dc.getEmphases(x.getName()) !=null){
																			for (String s : dc.getEmphases(x.getName())) {
																				if (s.equals(emph1) || s.equals(emph2)
																						|| s.equals(emph3) || s.equals(emph4)
																						|| s.equals(emph5))
																					c--;
																			}
																		}
																		if(c==0){
																			inRange.add(x);	
																		}
																		}

				}
			}
		for(University u : inRange){
			System.out.println(u.getName());
		}
			return inRange;

		}

	/**
	 * views one school that they select on the screen
	 * 
	 * 
	 * 
	 */
	public ArrayList<University> viewSchool(String uName) {
		// list of all vectors and thier uni
		TreeMap<Double, University> vectors = new TreeMap<>();
		// list to hold top5 uni and to be returned
		ArrayList<University> top5 = new ArrayList<University>();
		// the uni the user has selected from search results
		University selected = dc.getSchool(uName);
		if(selected == null)
			throw new NullPointerException("School not found");
		// the current vector being calculated
		Double vector = 0.0;
		int ctr = 0;
		// a list of all the schools
		ArrayList<University> schools = dc.getSchools();
		
		
		for(University un : schools){
			if(un.getAcademicScale()>this.maxAcademicScale)
				this.maxAcademicScale = un.getAcademicScale();
			if(un.getAcademicScale()<minAcademicScale && this.minAcademicScale != -1)
				this.minAcademicScale = un.getAcademicScale();
			if(un.getSocialScale()>this.maxSocialScale)
				this.maxSocialScale = un.getSocialScale();
			if(un.getSocialScale()<this.minSocialScale && this.minSocialScale != -1)
				this.minSocialScale = un.getSocialScale();
			if(un.getQualityOfLife()>this.maxQualityOfLife)
				this.maxQualityOfLife = un.getQualityOfLife();
			if(un.getQualityOfLife()<this.minQualityOfLife && this.minQualityOfLife != -1)
				this.minQualityOfLife = un.getQualityOfLife();
			if(un.getNumOfStudents()>this.maxNumberOfStudents)
				this.maxNumberOfStudents = un.getNumOfStudents();
			if(un.getNumOfStudents()<this.minNumberOfStudents && this.minNumberOfStudents != -1)
				this.minNumberOfStudents = un.getNumOfStudents();
			if(un.getNumOfApplicants()>this.maxNumOfApplicants)
				this.maxNumOfApplicants = un.getNumOfApplicants();
			if(un.getNumOfApplicants()<this.minNumOfApplicants && this.minNumOfApplicants != -1)
				this.minNumOfApplicants = un.getNumOfApplicants();
			if(un.getPercentFemale()>this.maxPercentFemale)
				this.maxPercentFemale = un.getPercentFemale();
			if(un.getPercentFemale()<this.minPercentFemale && this.minPercentFemale != -1.0)
				this.minPercentFemale = un.getPercentFemale();
			if(un.getSATVerbal()>this.maxSATVerbal)
				this.maxSATVerbal = un.getSATVerbal();
			if(un.getSATVerbal()<this.minSATVerbal && this.minSATVerbal != -1.0)
				this.minSATVerbal = un.getSATVerbal();	
			if(un.getSATMath()>this.maxSATMath)
				this.maxSATMath = un.getSATMath();
			if(un.getSATMath()<this.minSATMath && this.minSATMath != -1.0)
				this.minSATMath = un.getSATMath();
			if(un.getExpenses()>this.maxExpenses)
				this.maxExpenses = un.getExpenses();
			if(un.getExpenses()<this.minExpenses && this.minExpenses != -1.0)
				this.minExpenses = un.getExpenses();
			if(un.getPercentFinancialAid()>this.maxPercentFinancialAid)
				this.maxPercentFinancialAid = un.getPercentFinancialAid();
			if(un.getPercentFinancialAid()<this.minPercentFinancialAid && this.minPercentFinancialAid != -1.0)
				this.minPercentFinancialAid = un.getPercentFinancialAid();
			if(un.getPercentFemale()>this.maxPercentFemale)
				this.maxPercentFemale = un.getPercentFemale();
			if(un.getPercentFemale()<this.minPercentFemale && this.minPercentFemale != -1.0)
				this.minPercentFemale = un.getPercentFemale();
			if(un.getPercentAdmitted()>this.maxPercentAdmitted)
				this.maxPercentAdmitted = un.getPercentAdmitted();
			if(un.getPercentAdmitted()<this.minPercentAdmitted && this.minPercentAdmitted != -1.0)
				this.minPercentAdmitted = un.getPercentAdmitted();
			if(un.getPercentEnrolled()>this.maxPercentEnrolled)
				this.maxPercentEnrolled = un.getPercentEnrolled();
			if(un.getPercentEnrolled()<this.minPercentEnrolled && this.minPercentEnrolled != -1.0)
				this.minPercentEnrolled = un.getPercentEnrolled();
		}
		
		
		
		// the calulation of the vector that is complete
		for (University x : schools) {
			ctr++;

			if (selected.equals(x))
				vector += 0.0;
			vector += Math.abs((selected.getSATMath() - x.getSATMath())) / (this.maxSATMath - this.minSATMath);
			vector += Math.abs((selected.getSATVerbal() - x.getSATVerbal())) / (this.maxSATVerbal - this.minSATVerbal);
			vector += Math.abs((selected.getSocialScale() - x.getSocialScale())) / (this.maxSocialScale - this.minSocialScale);
			vector += Math.abs((selected.getAcademicScale() - x.getAcademicScale())) / (this.maxAcademicScale - this.minAcademicScale);
			vector += Math.abs((selected.getPercentAdmitted() - x.getPercentAdmitted())) / (this.maxPercentAdmitted - this.minPercentAdmitted);
			vector += Math.abs((selected.getPercentEnrolled() - x.getPercentEnrolled())) / (this.maxPercentEnrolled - this.minPercentEnrolled);
			vector += Math.abs((selected.getPercentFemale() - x.getPercentFemale())) / (this.maxPercentFemale - this.minPercentFemale);
			vector += Math.abs((selected.getPercentFinancialAid() - x.getPercentFinancialAid())) / (this.maxPercentFinancialAid - this.minPercentFinancialAid);
			vector += Math.abs((selected.getQualityOfLife() - x.getQualityOfLife())) / (this.maxQualityOfLife - this.minQualityOfLife);
			vector += Math.abs((selected.getExpenses() - x.getExpenses())) / (this.maxExpenses - this.minExpenses);
			vector += Math.abs((selected.getNumOfApplicants() - x.getNumOfApplicants())) / (this.maxNumOfApplicants - this.minNumOfApplicants);
			if (!selected.getState().equals(x.getState()))
				vector += 0.0;
			if (!selected.getLocation().equals(x.getLocation()))
				vector += 0.0;
			if (!selected.getControl().equals(x.getControl()))
				vector += 0.0;
			ArrayList<String> emphS = selected.getEmphases();
			ArrayList<String> emphX = x.getEmphases();
			if (emphS != null && emphX != null) {
				for (String s : emphS) {
					for (String r : emphX) {
						if (!s.equals(r))
							vector += 1;
					}
				}
			}
			if (!(selected.getName().equals(x.getName())))
				vectors.put(vector, x);
			// where you now select
			// can sort vectors and grab the top 5 from there or just find the
			// top 5 lowest instead of sorting right away
			vector = 0.0;
		}
		for (int i = 0; i < 5; i++) {
			top5.add(vectors.pollFirstEntry().getValue());
		}
		//for(University u : top5){
		//	System.out.println(u.getName());
		//}
		return top5;
	}
}
