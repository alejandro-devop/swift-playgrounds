//: [Previous](@previous)

import Foundation

// Structs (Types)

struct squares {
    var width = 10
    var height = 10
    func area() -> Int {
        return width * height
    }
}

var mySquare = squares()
mySquare.width
mySquare.area()

// Classes

class Car {
    var color = "black"
    var wheels = 4
    var price = 0
    var on = false
    
    func turnOn() -> Bool {
        print("Starting the engine...")
        on = true
        return on
    }
}

var myCar = Car()
myCar.turnOn()

/**
 * Difference between classes and structures
 * 
 */

//: [Next](@next)
