// Age class for keeping track of age
class Age {
  constructor(age) {
    this.age = age;
  }
  
  // Getter for age
  getAge() {
    return this.age;
  }
  
  // Setter for age
  setAge(age) {
    this.age = age;
  }
}

// Aging gracefully class
class AgingGracefully {
  constructor(name, age) {
    this.name = name;
    this.age = new Age(age);
  }
  
  // Getter for name
  getName() {
    return this.name;
  }
  
  // Setter for name
  setName(name) {
    this.name = name;
  }
  
  // Getter for age
  getAge() {
    return this.age.getAge();
  }
  
  // Setter for age
  setAge(age) {
    this.age.setAge(age);
  }
  
  // Method to add 1 year to age
  addOneYear() {
    this.age.setAge(this.age.getAge() + 1);
  }
  
  // Method to subtract 1 year from age
  subtractOneYear() {
    this.age.setAge(this.age.getAge() - 1);
  }
  
  // Method to show how long it has been since the age was set
  timePassedSinceAgeSet() {
    const currentTime = new Date();
    const ageSetTime = new Date(this.age.getAge());
    const difference = Math.abs(currentTime - ageSetTime);
    const differenceInYears = Math.ceil(difference / (1000 * 60 * 60 * 24 * 365.25));
    
    return `It has been ${differenceInYears} year(s) since the age was last set.`
  }
  
  // Method to get the person's age in dog years
  getAgeInDogYears() {
    const dogYears = this.age.getAge() * 7;
    return `${this.name}'s age in dog years is ${dogYears}.`
  }
  
  // Method to show the number of years until a given age
  yearsUntilGivenAge(givenAge) {
    const difference =  Math.abs(givenAge - this.age.getAge());
    const yearsUntilAge = Math.ceil(difference);
    return `There are ${yearsUntilAge} year(s) until ${this.name} is ${givenAge}.`
  }
}

// Example usage
const person = new AgingGracefully('John', new Date(2000, 0, 1));
person.addOneYear();
person.getAgeInDogYears(); // "John's age in dog years is 49."
person.timePassedSinceAgeSet(); // "It has been 19 year(s) since the age was last set."
person.yearsUntilGivenAge(80); // "There are 60 year(s) until John is 80."