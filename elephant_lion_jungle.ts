let person = {
    age: 0
};

person.age = function() {
    return this.age ++;
};

person.getAge = function() {
    return this.age;
};

person.getYounger = function() {
    this.age = this.age - 1;
};

person.ageUpByYears = function(years) {
    this.age = this.age + years;
};

person.ageDownByYears = function(years) {
    this.age = this.age - years;
};

person.isYounger = function(otherPerson) {
    return this.age < otherPerson.age;
};

person.isOlder = function(otherPerson) {
    return this.age > otherPerson.age;
};

let parent = Object.create(person);

parent.getBabiesAge = function() {
    return this.age / 2;
};

let grandparent = Object.create(parent);

grandparent.getGrandchildrenAge = function() {
    return this.age / 4;
};

let greatGrandparent = Object.create(grandparent);

greatGrandparent.getGreatGrandchildrenAge = function() {
    return this.age / 8;
};

let greatGreatGrandparent = Object.create(greatGrandparent);

greatGreatGrandparent.getGreatGreatGrandchildrenAge = function() {
    return this.age / 16;
};

let greatGreatGreatGrandparent = Object.create(greatGreatGrandparent);

greatGreatGreatGrandparent.getGreatGreatGreatGrandchildrenAge = function() {
    return this.age / 32;
};

let greatGreatGreatGreatGrandparent = Object.create(greatGreatGreatGrandparent);

greatGreatGreatGreatGrandparent.getGreatGreatGreatGreatGrandchildrenAge = function() {
    return this.age / 64;
};

let greatGreatGreatGreatGreatGrandparent = Object.create(greatGreatGreatGreatGrandparent);

greatGreatGreatGreatGreatGrandparent.getGreatGreatGreatGreatGreatGrandchildrenAge = function() {
    return this.age / 128;
};

let greatGreatGreatGreatGreatGreatGrandparent = Object.create(greatGreatGreatGreatGreatGrandparent);

greatGreatGreatGreatGreatGreatGrandparent.getGreatGreatGreatGreatGreatGreatGrandchildrenAge = function() {
    return this.age / 256;
};

let greatGreatGreatGreatGreatGreatGreatGrandparent = Object.create(greatGreatGreatGreatGreatGreatGrandparent);

greatGreatGreatGreatGreatGreatGreatGrandparent.getGreatGreatGreatGreatGreatGreatGreatGrandchildrenAge = function() {
    return this.age / 512;
};

let greatGreatGreatGreatGreatGreatGreatGreatGrandparent = Object.create(greatGreatGreatGreatGreatGreatGreatGrandparent);

greatGreatGreatGreatGreatGreatGreatGreatGrandparent.getGreatGreatGreatGreatGreatGreatGreatGreatGrandchildrenAge = function() {
    return this.age / 1024;
};