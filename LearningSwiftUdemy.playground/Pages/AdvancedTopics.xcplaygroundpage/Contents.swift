//: [Previous](@previous)

import Foundation

// Casting
let myStringNumber = "100"
let myCastedNumber = Int(myStringNumber)

// Optional typing
var mySimpleString: String? = ""
mySimpleString = nil

// Optional bindings

var myOptionalStringBinding: String? = "Alejo"
var myOptionalStringBinding2: String?

if let myOtherString  = myOptionalStringBinding, let myOtherString2 = myOptionalStringBinding2 {
    print("\(myOtherString) \(myOtherString2)")
} else {
    print("Any variable is null")
}
// Force printing an optional value
print(myOptionalStringBinding!)

if myOptionalStringBinding2 != nil {
    print(myOptionalStringBinding2!)
}



/// Optional chaining
class Book {
    var pages: Int?
}

class Student {
    var name: String?
    var book: Book?
}

let student = Student()
let book = Book()
book.pages = 20
student.book = book

print(student.book?.pages)
// Optional binding (This supports else if too).
if let pages = student.book?.pages {
    print("The book has \(pages)")
} else {
    print("There is no book")
}

var myOptionalString: String?
myOptionalString = "Some"

func myFunction() {
    guard let myString = myOptionalString else {
        print("Has no value, exiting")
        return
    }
    print("Has a value: \(myString)")
}


myFunction()

// Error handling

func sum(first: Int?, second: Int?) throws -> Int {
    if first == nil {
        throw SumError.firstNumberNil
    } else if second == nil {
        throw SumError.secondNumberNil
    } else if first! < 0 || second! < 0{
        throw SumError.numberNegative(firstNumber: first!, secondNumber: second!)
    }
    
    return first! + second!
}

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

do {
    print(try sum(first: nil, second: 200))
} catch SumError.firstNumberNil {
    print("First number is null")
} catch SumError.secondNumberNil {
    print("Second number is null")
} catch SumError.numberNegative(let firstNumber, let secondNumber) {
    print("There is a negative \(firstNumber) \(secondNumber)")
}

// Type casting again

class MyClass {
    var name: String = "Alejo"
}

let myClass = MyClass()

let myArray: [Any] = ["Some", 22, myClass]

for item in myArray {
    if item is String {
        let myItem = item as! String
        print("We have a string: \(myItem)")
    } else if item is Int {
        let myItem = item as! Int
        print("We have a Int: \(myItem)")
    } else if item is MyClass {
        let myItem = item as! MyClass
        print("We have a Class: \(myItem.name)")
    }
}
print("---------------------------")
for item in myArray {
    if let myCastedItem = item as? String {
        print("We have a string \(myCastedItem)")
    } else if let myCastedItem = item as? Int {
        print("We have an int \(myCastedItem)")
    } else if let myCastedItem = item as? MyClass {
        print("We have a class \(myCastedItem.name)")
    }
}

// Nested types

struct ChessPiece {
    let color: Color
    let type: PieceType
    
    enum Color: String {
        case white = "Blanca", black = "Negra"
    }
    
    enum PieceType: String {
        case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballo", pawn = "Peón"
        struct Number {
            let number: Int
        }
        var number: Number {
            switch self {
            case .king:
                return Number(number: 1)
                <#code#>
            case .queen:
                return Number(number: 1)
                <#code#>
            case .rock:
                return Number(number: 2)
                <#code#>
            case .bishop:
                return Number(number: 2)
                <#code#>
            case .knight:
                return Number(number: 2)
                <#code#>
            case .pawn:
                return Number(number: 8)
                <#code#>
            }
        }
    }
    var description: String {
        return "La piesa es  de color \(color.rawValue) y es de tipo \(type.rawValue)"
    }
}

let myPiece = ChessPiece(color: .black, type: .rock)
print(myPiece.description)

// Extensions

let metters: Double = 5000

func mettersToKm(metters: Double) -> Double {
    return metters / 1000
}

print(mettersToKm(metters: metters))

extension Double {
    var km: Double {
        return self / 1000
    }
    var m: Double {
        return self
    }
    var cm: Double {
        return self * 100
    }
}

print(metters.km)

// Protocols
protocol PersonProtocol {
    var name: String { get set }
    var age: Int { get set }
    func fullName() -> String
}

struct Programmer: PersonProtocol {
    var name: String
    var age: Int
    var language: String
    
    func fullName() -> String {
        return "My name is \(name) Im a programmer"
    }
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var subject: String
    func fullName() -> String {
        return "My name is \(name) of subject \(subject)"
    }
}

let myProgrammer = Programmer(name: "Alejo", age: 30, language: "Swift")
let myTeacher = Teacher(name: "Juan", age: 40, subject: "Some")

print(myProgrammer.fullName())
print(myTeacher.fullName())

class FirstClass: SecondClassProtocol {
    func call() {
        print("Called first!")
    }
    
    func classSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
}

protocol SecondClassProtocol {
    func call()
}

class SecondClass {

    var delegate: SecondClassProtocol?

    func callFirst() {
        sleep(5000)
        delegate?.call()
    }
}
//
//let firstClass = FirstClass()
//firstClass.classSecond()


// Generics
/** Inout is for pass for reference */
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10
print("First: \(myFirstInt) - \(mySecondInt)")
swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print("First: \(myFirstInt) - \(mySecondInt)")

func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

print("First: \(myFirstInt) - \(mySecondInt)")
swapTwoGenerics(a: &myFirstInt, b: &mySecondInt)
print("First: \(myFirstInt) - \(mySecondInt)")

//: [Next](@next)
