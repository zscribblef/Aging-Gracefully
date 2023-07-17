#!/usr/bin/perl
 
# This program reads the US Census Bureau's Population
# estimates and calculates the number of people aging
# gracefully in the United States each year.
 
# Read in the population estimates from the US Census
# Bureau
open(POPULATION, "census_data.txt") ||
   die "Can't open population file: $!\n";
 
# Initialize the total count of people aging gracefully
$graceful_pop = 0;
 
# Read the population data one line at a time
while (<POPULATION>) {
   chomp;
 
   # Split the line into separate fields
   ($year,$total_pop,$older_than_65) = split(/\t/);
 
   # Calculate the number of people aging gracefully
   # during this year
   $graceful_this_year = $older_than_65 - $total_pop/2;
 
   # Add this year's contribution to the total
   $graceful_pop += $graceful_this_year;
}
 
# Close the file
close(POPULATION);
 
# Print the total number of people aging gracefully in
# the US each year
print "The total number of people aging gracefully in the US";
print "each year is $graceful_pop.\n";
 
# Calculate the average number of people aging gracefully
# in the US each year
$graceful_avg = $graceful_pop / 10;
 
# Print the average number of people aging gracefully in
# the US each year
print "The average number of people aging gracefully in the US";
print "each year is $graceful_avg.\n";
 
# Open the output file
open(GRACEFUL_OUT, ">graceful_pop.csv") ||
   die "Can't open output file: $!\n";
 
# Print the title line
print GRACEFUL_OUT "Year,Graceful Population\n";
 
# Read the population estimates again
open(POPULATION, "census_data.txt") ||
   die "Can't open population file: $!\n";
 
# Print each year's contribution to the total
while (<POPULATION>) {
   chomp;
 
   # Split the line into separate fields
   ($year,$total_pop,$older_than_65) = split(/\t/);
 
   # Calculate the number of people aging gracefully
   # during this year
   $graceful_this_year = $older_than_65 - $total_pop/2;
 
   # Print this year's contribution to the output file
   print GRACEFUL_OUT "$year,$graceful_this_year\n";
}
 
# Close the files
close(POPULATION);
close(GRACEFUL_OUT);