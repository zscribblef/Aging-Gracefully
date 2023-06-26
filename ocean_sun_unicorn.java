import java.util.*;

public class AgingGracefully {
	
	public static void main(String[] args) {
		
		// Declare age variable
		int age = 25;
		
		// Declare and initialise list of activity ideas
		List<String> activityIdeas = new ArrayList<String>();
		activityIdeas.add("yoga");
		activityIdeas.add("hiking");
		activityIdeas.add("running");
		activityIdeas.add("tai chi");
		activityIdeas.add("pilates");
		activityIdeas.add("cycling");
		activityIdeas.add("swimming");
		
		// Declare and initialise list of healthy eating ideas
		List<String> healthyEatingIdeas = new ArrayList<String>();
		healthyEatingIdeas.add("salads");
		healthyEatingIdeas.add("grains");
		healthyEatingIdeas.add("fruits");
		healthyEatingIdeas.add("vegetables");
		healthyEatingIdeas.add("lean proteins");
		
		// Output age 
		System.out.println("Age: " + age);
		
		// Output activity ideas
		System.out.println("Activity Ideas");
		for (String activity : activityIdeas) {
			System.out.println(activity);
		}
		
		// Output healthy eating ideas
		System.out.println("Healthy Eating Ideas");
		for (String food : healthyEatingIdeas) {
			System.out.println(food);
		}
		
		// Add age by 1
		age++;
			
		// If age is greater than or equal to 45
		if (age >= 45) {
			// Add "Strength training" to activity ideas
			activityIdeas.add("Strength training");
			
			// Add "nuts and seeds" to healthy eating ideas
			healthyEatingIdeas.add("nuts and seeds");
		}
		
		// Output age 
		System.out.println("Age: " + age);
		
		// Output activity ideas
		System.out.println("Activity Ideas");
		for (String activity : activityIdeas) {
			System.out.println(activity);
		}
		
		// Output healthy eating ideas
		System.out.println("Healthy Eating Ideas");
		for (String food : healthyEatingIdeas) {
			System.out.println(food);
		}
		
		// Create and initialise health goals
		String healthGoals = "Maintain healthy weight and ";
		
		// If age is greater than 45
		if (age > 45) {
			// Add "reduce risk of disease"
			healthGoals += "reduce risk of disease.";
		} else {
			// Otherwise, add "feel energetic"
			healthGoals += "feel energetic.";
		}
		// Output health goals
		System.out.println("Health Goals: " + healthGoals);
		
		// Declare regular check-up variable
		boolean regularCheckup = false;
		
		// If age is greater than or equal to 30
		if (age >= 30) {
			// Set regularCheckup to true
			regularCheckup = true;
			
			// Output advice
			System.out.println("Advice: Have a regular check-up with your doctor.");
		} else {
			// Otherwise, output advice
			System.out.println("Advice: Be sure to schedule regular check-ups with your doctor as you age.");
		}
		
		// Create and initialise list of supplements
		List<String> supplements = new ArrayList<String>();
		
		// If age is greater than or equal to 60
		if (age >= 60) {
			// Add "Vitamin D" to list of supplements
			supplements.add("Vitamin D");
			
			// Add "Calcium" to list of supplements
			supplements.add("Calcium");
		}
		
		// If regularCheckup is true
		if (regularCheckup) {
			// Output list of supplements
			System.out.println("Supplements:");
			for (String supplement : supplements) {
				System.out.println(supplement);
			}
		}
		
		// Declare and initialise list of health activities
		List<String> healthActivities = new ArrayList<String>();
		
		// Add activities to list of health activities
		healthActivities.addAll(activityIdeas);
		healthActivities.addAll(healthyEatingIdeas);
		
		// Output list of health activities
		System.out.println("Health Activities:");
		for (String activity : healthActivities) {
			System.out.println(activity);
		}
		
		// Output tips for aging gracefully
		System.out.println("Tips for Aging Gracefully:" + 
						   "\n1. Stay active - join a gym, dance class, or start an exercise routine at home." + 
						   "\n2. Eat healthy - make smart food choices and limit intake of sugar and processed foods." + 
						   "\n3. Foster relationships - nurture meaningful relationships with friends and family." +
						   "\n4. Stay informed - read books, watch documentaries, and stay up to date with current events." +
						   "\n5. Take a break - take regular breaks throughout the day to rest and relax." +
						   "\n6. Do things you love - take time to do things you enjoy and make you happy." +
						   "\n7. Get enough sleep - aim for 7-8 hours of sleep each night to ensure your body gets the rest it needs.");
	}
	
}