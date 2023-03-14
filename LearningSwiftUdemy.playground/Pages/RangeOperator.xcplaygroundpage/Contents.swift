//: [Previous](@previous)

import Foundation

let exampleArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var subArray = exampleArray[...5]
var anotherArray = exampleArray[5...]
var anotherArray2 = exampleArray[4...6]
var aRange = 1...5
var aRangeToArray = Array(aRange)

print(subArray)

//: [Next](@next)
