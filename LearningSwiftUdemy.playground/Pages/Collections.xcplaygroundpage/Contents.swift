//: [Previous](@previous)

import Foundation

// Arrays
var arrayOfNumbers: [Int] = [1, 2, 3, 5, 6,]

// Add numbers
arrayOfNumbers.append(7)
// Insert elements at specific position
arrayOfNumbers.insert(0, at: 0)
arrayOfNumbers.insert(4, at: 4)

// Dictionaries
let clasicDictionary = Dictionary<Int, String>()
var modernDictionary = [Int: String]()

modernDictionary = [0001: "Some", 0002: "Another"]
modernDictionary[0003] = "And another"

print(modernDictionary)
print(modernDictionary[1] as Any)

modernDictionary[4] = "Different value"
// Removing
modernDictionary[4] = nil
modernDictionary.removeValue(forKey: 3)
print(modernDictionary)

// Tuples

var person: (String, String, Int, Double) = ("Alejo", "Quiroz", 30, 1.69)
print(person)
print(person.0)

// Detructuring values
var (name, lastname, age, height) = person
var otherPerson = (firstName: "Some cool name", lastName: "Quiroz", age: 30, height: 1.69)
print(otherPerson.lastName)
