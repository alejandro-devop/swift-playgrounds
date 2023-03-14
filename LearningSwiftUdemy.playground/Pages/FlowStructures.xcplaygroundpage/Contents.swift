//: [Previous](@previous)

import Foundation

// Switch
let country = "ES"

switch country {
case "ES": print("España")
case "MX": print("Mexico")
case "US": print("United states")
default:
    print("Invalid option")
}

let age = 20

switch age {
case 0,1,3:
    print("You're a baby")
case 3...10:
    print("Your're a child")
case 11..<16:
    print("You're a teenager")
case 16..<70:
    print("You're an adult")
case 70..<10:
    print("You're a grandpa")
default:
    print("Too old 😱")
}

enum PersonalData {
    case name
    case surname
    case address
    case phone
}

let userData: PersonalData = .name

switch userData {
case .name:
    print("Editing name")
case .surname:
    print("Editing Surname")
case .address:
    print("Editing Address")
case .phone:
    print("Editing Phone")
}


// For
var counter = 0;

for num in 0...10 {
    counter += num
    print("Number \(num)")
}

var countries = ["mx": "mexico", "co": "Colombia"]

for (country, val) in countries {
    print("\(country) = \(val)")
}

var age2 = 10;
while age2 < 18 {
    print("You're still being under 18")
    age2 += 1
}

var otherNumbers = [1, 2, 3, 4, 6, 8, 8, 8]
var totalOfElements = otherNumbers.count - 1

repeat {
    otherNumbers.remove(at: totalOfElements)
    totalOfElements -= 1
} while(otherNumbers.count > 0)

//: [Next](@next)
