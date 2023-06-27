//  Aging Gracefully
//  Swift File
//
//  Created by John Doe

import UIKit
import Foundation

//MARK: Protocols
protocol Ageable {
    var age: Int { get set }
    func ageBy(years: Int) -> Int
}

//MARK: Classes
class Person: Ageable {
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func ageBy(years: Int) -> Int {
        age += years
        return age
    }
}

class ElderlyPerson: Ageable {
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func ageBy(years: Int) -> Int {
        age += (years * 2)
        return age
    }
}

//MARK: Structs
struct Age {
    var age: Int
}

struct AgeRange {
    var min: Int
    var max: Int
}

//MARK: Constants
let minimumAge = AgeRange(min: 0, max: 21)
let middleAge = AgeRange(min: 22, max: 59)
let elderlyAge = AgeRange(min: 60, max: 99)

//MARK: Functions
func calculateAgeGroup(age: Int) -> Any {
    switch age {
    case minimumAge.min...minimumAge.max:
        return "Young"
    case middleAge.min...middleAge.max:
        return "Middle-aged"
    case elderlyAge.min...elderlyAge.max:
        return "Elderly"
    default:
        return "Not aged gracefully"
    }
}

func agePerson(person: Ageable, years: Int) {
    let agedPerson = person.ageBy(years: years)
    let ageGroup = calculateAgeGroup(age: agedPerson)
    print("Person's age is now \(agedPerson). They are now \(ageGroup)")
}

//MARK: Usage
let john = Person(age: 21)
let jane = ElderlyPerson(age: 66)

agePerson(person: john, years: 5)
agePerson(person: jane, years: 5)