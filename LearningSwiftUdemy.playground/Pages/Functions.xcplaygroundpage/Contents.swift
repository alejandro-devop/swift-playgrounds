//: [Previous](@previous)

import Foundation

func helloWorld(text: String) {
    print(text)
}

func giveMeGreetings(name: String) -> String {
    return "Hello \(name)"
}

func someSalutation(message: String = "Some col message") {
    print(message)
}

let some = giveMeGreetings(name: "Alejo Quiroz")

someSalutation();

func namesList () -> [String] {
    return ["some", "some"]
}

// Closures

let myClosure = {
    (first:Double, second: Double) -> Double in
    return first + second
}

myClosure(1, 30)


