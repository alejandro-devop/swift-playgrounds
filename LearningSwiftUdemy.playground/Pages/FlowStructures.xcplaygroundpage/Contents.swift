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
