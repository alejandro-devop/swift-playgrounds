//: [Previous](@previous)

import Foundation

enum PersonalData {
    case name
    case surname
    case address
    case phone
}
var currentData: PersonalData = .name
var input: String = "Adejo"

currentData = .phone
input = "5555"

enum ComplexPersonalData {
    case name(String)
    case surname(String, String)
    case address(String, Int)
    case phone(Int)
}

var complexData: ComplexPersonalData  = .name("My name")
complexData = .address("address", 23)
print(complexData)

enum RawPersonalData: String {
    case name = "Nombre"
    case surname = "Apellidos"
    case address = "Dirección"
    case phone = "Télefono"
}

print(RawPersonalData.name.rawValue)

//: [Next](@next)
