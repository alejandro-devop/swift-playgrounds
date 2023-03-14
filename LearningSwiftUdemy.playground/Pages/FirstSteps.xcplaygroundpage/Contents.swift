import UIKit

/**
 * First steps with swift, this is an example of multi-line comments
 */
// single line comments
let greeting = "Hello, playground" // Simple variable declaration
let age:Int = 30 // Declaration specifying the type
/**
 * **Note**: Swift supports implicit and explicit type inference, which means you don't have to specify the type
 * but you can do it by folloing the syntax of typescript `var variable: Type = [value]`
 */

let imAConstant = "My value never change"
var imAVariable = "My value may change"
let multiLineString = """
    My content must preserve its
    line breaks and tabs
"""
let withSpecialChars = "\u{E9}"
let withEmojies = "🤗"
var stringConcat = "Some " + " Another string"
stringConcat += " Adding more..."

let name = "Alejo"
// String interpolation
print("Hi my name is \(name). ")

// Simple print to console
print(greeting)

//: [Next](@next)
