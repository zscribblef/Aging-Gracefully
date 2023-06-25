#include <iostream>
#include <string>
#include <algorithm>
 
using namespace std;
 
// A function to calculate the max of two numbers
int getMax(int x, int y)   
{ 
   if (x > y) 
   { 
     return x;
   }else
   { 
     return y; 
   } 
} 
 
// A function to calculate the area of a rectangle
int getArea(int length, int width)
{
   return length * width;
}
 
// A function to check if a number is prime
bool isPrime(int n) 
{ 
   for (int i = 2; i < n; i++)
   {
       if (n % i == 0)
       {
           return false;
       }
   } 
   return true;           
}
 
// A function to calculate the nth Fibonacci number
int Fibonacci(int n) 
{ 
   if (n <= 1) 
   { 
      return n; 
   }
   return Fibonacci(n-1) + Fibonacci(n-2); 
}  
 
// A function to calculate the factorial of a number
int getFactorial(int n) 
{
   int res = 1; 
   for (int i = 2; i <= n; i++) 
   { 
       res *= i;
   } 
   return res;
} 
 
// A function to check if a number is even or odd
string isEvenOdd(int n) 
{ 
   if (n % 2 == 0)
   {
       return "even";
   }else
   {
       return "odd";
   }
}
 
// A function to get the GCD of two numbers
int gcd(int x, int y) 
{ 
   if (y == 0) 
   { 
      return x; 
   } 
   return gcd(y, x % y);  
}
 
// A function to find the least common multiple of two numbers
int lcm(int x, int y)
{
   return (x*y)/gcd(x , y);
}
 
// A function to reverse a string
string reverseString(string s) 
{
   int n = s.length();
   string rev = "";
   for (int i = n - 1; i >= 0; i--)
   {
       rev = rev + s[i]; 
   }
   return rev;
}
 
// A function to check if two strings are anagrams
bool checkAnagram(string s1, string s2) 
{ 
   sort(s1.begin(), s1.end()); 
   sort(s2.begin(), s2.end());
   return s1 == s2; 
}
 
// A function to convert string to lowercase 
string convertToLower(string s) 
{ 
   for(int i = 0; s[i]; i++) 
   { 
      s[i] = tolower(s[i]); 
   } 
   return s;
}
 
// A function to check if the year is leap or not
bool isLeapYear(int year) 
{ 
   if (year % 400 == 0) 
   { 
      return true; 
   }
   else if (year % 100 == 0)
   {
      return false; 
   }
   else if (year % 4 == 0)
   { 
      return true; 
   } 
   else
   {
      return false;
   } 
} 

// A function to calculate age in years
int calculateAge(int birthYear)
{
   int age = 0;
   age = 2019 - birthYear;
   return age;
}  

// A function to calculate number of days in a month
int getNumDaysInMonth(int year, int month)
{
   if (month == 2)
   {
       // If it's a leap year, February has 29 days, 
       // else it has 28 days
       if (isLeapYear(year))
       {
           return 29;
       }
       else
       {
           return 28;
       }
   }
  
   // The remaining months have
   // either 30 or 31 days
   if (month == 4 || month == 6
           || month == 9 || month == 11)
       return 30;
   else
       return 31;
}

// A function to check if the person is eligible for voting or not
bool isEligibleForVoting(int age)
{
   if (age >= 18)
   {
       return true;
   }
   else
   {
       return false;
   }
}

// A function to find the number of alignments available for a person
int getNumberOfAilments(int age)
{
   int n = 0;
   if (age > 64)
   {
       n++;
   }
   if (age > 74)
   {
       n++;
   }
   if (age > 84)
   {
       n++;
   }
   if (age > 94)
   {
       n++;
   }
   return n;
}

// A function to identify ways to age gracefully
void agingGracefully(int age)
{
   cout << "Aging gracefully is a journey of a lifetime" << endl;
   cout << "Here are some of the steps to age gracefully:" << endl;
   cout << "\t1. Take care of your mental health: This includes managing stress,"
        << "\n\t\tidentifying and managing any mental health issues,"
        << "\n\t\tand staying involved socially and intellectually." << endl;
   cout << "\t2. Get regular medical checkups: Regular visits to the doctor"
        << "\n\t\tis important to maintain your health and catch any health"
        << "\n\t\tissues early. In addition, discuss your dietary and"
        << "\n\t\texercise needs with your doctor." << endl;
   cout << "\t3. Exercise regularly: Studies show that regular exercise"
        << "\n\t\tis beneficial for both physical and mental health. Find"
        << "\n\t\texercises you enjoy and aim for at least 30 minutes"
        << "\n\t\tof physical activity daily." << endl;
   cout << "\t4. Eat healthy: Eating a nutritious diet full of whole foods,"
        << "\n\t\tlean proteins, and plenty of fruit and vegetables is key"
        << "\n\t\tto maintaining good health. Avoid processed junk food and"
        << "\n\t\tsugary drinks." << endl;
   cout << "\t5. Get enough sleep: Sleep helps our body and mind function"
        << "\n\t\tproperly. Aim for 7-8 hours of sleep per night." << endl;
   cout << "\t6. Maintain relationships: Investing in your relationships,"
        << "\n\t\tconnecting with people, and building a strong support"
        << "\n\t\tsystem can help you age gracefully." << endl;
   cout << "\t7. Make lifestyle changes: Making small lifestyle changes"
        << "\n\t\tsuch as quitting smoking, limiting alcohol consumption,"
        << "\n\t\tand avoiding drugs can help you age gracefully." << endl;
   cout << "\t8. Connect with nature: Spending time in nature has been"
        << "\n\t\tshown to have numerous health benefits. Take time to"
        << "\n\t\tto appreciate the beauty around you and reconnect with"
        << "\n\t\tyour environment." << endl;
   cout << "\t9. Practice mindfulness: Mindfulness is the practice of"
        << "\n\t\tbeing fully present and aware of your current experience. It"
        << "\n\t\tcan help you be more mindful of your decisions and how you"
        << "\n\t\ttreat your body" << endl;
}

// Driver program
int main()
{
   int birthYear = 0;
   cout << "Enter your birth year: ";
   cin >> birthYear;
   int age = calculateAge(birthYear);
   cout << "Your age is " << age << " years " << endl;
   cout << "You are " << isEligibleForVoting(age) << " for voting." << endl;
   cout << "Number of ailments you are likely to get in the coming years are " 
        << getNumberOfAilments(age) << endl;
   agingGracefully(age);
   return 0;
}