<?php

/* Aging Gracefully */

// Create a function to compute age in years based on birthdate
function computeAge($birthdate){ 
    $year = date("Y",strtotime($birthdate)); 
    $age = date("Y") - $year; 
    return $age; 
} 

// Create a function to calculate required daily energy intake for a given gender, age, height, and weight
function calcDailyEnergy($gender, $age, $height, $weight){
    if($gender == 'male'){
        $cal_var = 66;
    } else {
        $cal_var = 655;
    }
    $daily_energy = $cal_var + ( 9.5 * $weight ) + ( 1.85 * $height ) - ( 4.7 * $age );
    return $daily_energy;
}

// Create a function to determine the number of hours of sleep a person needs based on age
function hoursPerSleep($age){
    if($age < 18){
        $hours = 10;
    } elseif($age > 18 and $age < 65){
        $hours = 8;
    } else {
        $hours = 7;
    }
    return $hours;
}

// Create a function to determine the number of servings of fruits and vegetables recommended to eat daily based on age
function fruitVegetableServings($age){
    if($age < 18){
        $servings = 6;
    } elseif($age > 18 and $age < 65){
        $servings = 6;
    } else {
        $servings = 5;
    }
    return $servings;
}

// Create a function to recommend an exercise routine based on age
function recommendExercise($age){
    if($age < 18){
        $exercise = '1 hour of moderate intensity exercise three times a week.';
    } elseif($age > 18 and $age < 65){
        $exercise = 'At least 30 minutes of moderate intensity exercise five times a week.';
    } else {
        $exercise = 'At least 30 minutes of moderate intensity exercise two to three times a week.';
    }
    return $exercise;
}

// Create a function to recommend standing up and walking around every 30 minutes
function recommendStanding($age){
    if($age > 18){
        $standing = 'Standing up and walking around at least once every 30 minutes.';
    } else {
        $standing = 'Not applicable for this age';
    }
    return $standing;
}

// Create a function to recommend stretches every hour
function recommendStretch($age){
    if($age > 18){
        $stretch = 'Stretching at least once every hours.';
    } else {
        $stretch = 'Not applicable for this age';
    }
    return $stretch;
}

// Create a function to recommend limiting screen time to no more than two hours a day
function limitScreenTime($age){
    if($age > 18){
        $screen_time = 'Limiting screen time (TV, phone, computer) to no more than two hours a day.';
    } else {
        $screen_time = 'Not applicable for this age';
    }
    return $screen_time;
}

// Create a function to recommend limiting caffeine intake
function limitCaffeine($age){
    if($age > 18){
        $caffeine = 'Limiting caffeine intake.';
    } else {
        $caffeine = 'Not applicable for this age';
    }
    return $caffeine;
}

// Create a function to recommend drinking plenty of water daily
function drinkWater($age){
    if($age > 18){
        $water = 'Drinking plenty of water daily.';
    } else {
        $water = 'Not applicable for this age';
    }
    return $water;
}

// Create a function to recommend eating a variety of healthy whole foods
function eatHealthyFood($age){
    if($age > 18){
        $food = 'Eating a variety of healthy whole foods, with an emphasis on fruits and vegetables.';
    } else {
        $food = 'Not applicable for this age';
    }
    return $food;
}

// Create a function to recommend limiting processed and sugary foods
function limitProcessedFood($age){
    if($age > 18){
        $processed_food = 'Limiting processed and sugary foods.';
    } else {
        $processed_food = 'Not applicable for this age';
    }
    return $processed_food;
}

// Create a function to recommend getting regular checkups
function getRegularCheckup($age){
    if($age > 18){
        $checkup = 'Getting regular checkups.';
    } else {
        $checkup = 'Not applicable for this age';
    }
    return $checkup;
}

// Get user input
echo "Please enter your birthday: ";
$birthdate = trim(fgets(STDIN));

// Calculate Age
$age = computeAge($birthdate);
echo "Age: $age\n";

// Get user input
echo "Please enter your gender (male or female): ";
$gender = trim(fgets(STDIN));
echo "Please enter your height (in cm): ";
$height = trim(fgets(STDIN));
echo "Please enter your weight (in kg): ";
$weight = trim(fgets(STDIN));

// Calculate Daily Energy Intake
$daily_energy = calcDailyEnergy($gender, $age, $height, $weight);
echo "Recommended daily energy intake: $daily_energy calories\n";

// Calculate Hours of Sleep Per Day
$sleep = hoursPerSleep($age);
echo "Recommended hours of sleep per day: $sleep hours\n";

// Calculate Serving of Fruit and Vegetables
$servings = fruitVegetableServings($age);
echo "Recommended servings of fruit and vegetables per day: $servings \n";

// Exercise Routine
$exercise_routine = recommendExercise($age);
echo "Recommended Exercise: $exercise_routine \n";

// Standing 
$standing_recommend = recommendStanding($age);
echo "Standing and walking around every 30 minutes: $standing_recommend \n";

// Stretching
$stretch_recommend = recommendStretch($age);
echo "Stretching every hour: $stretch_recommend \n";

// Screen Time
$screen_time_recommend = limitScreenTime($age);
echo "Limiting screen time: $screen_time_recommend \n";

// Caffeine Intake
$caffeine_recommend = limitCaffeine($age);
echo "Limiting caffeine intake: $caffeine_recommend \n";

// Water Intake
$water_recommend = drinkWater($age);
echo "Drink plenty of water daily: $water_recommend \n";

// Healthy Foods
$food_recommend = eatHealthyFood($age);
echo "Eat a variety of healthy whole foods: $food_recommend \n";

// Processed Foods
$processed_food_recommend = limitProcessedFood($age);
echo "Limit processed and sugary foods: $processed_food_recommend \n";

// Regular Checkups
$checkup_recommend = getRegularCheckup($age);
echo "Get regular checkups: $checkup_recommend \n";

?>