import UIKit

// ---------------|
//                |
// Basic operators|
//                |
// ---------------|

// Assigment operator
let theAnswer = 42

// Arithmetic operators

var firstNum = 42 + 1
var secondNum = 42 - 1
var thirdNum = 42 / 2
var fourtNum = 42 * 2

// Compound operators

firstNum += 1 // Same as firstNum = firstNum + 1, etc.
secondNum -= 1
thirdNum /= 2
fourtNum *= 2

// Comparison operators

let valueOne = 5
let valueTwo = 10

// Less or equal
valueOne <= valueTwo

// More or equal
valueOne >= valueTwo

// Not equal
valueOne != valueTwo

// Equal
valueOne == valueTwo

// Less
valueOne < valueTwo

//More
valueOne > valueTwo

// Nil coalescing operator

let someName: String? = nil

// If someName has string return someName, else nil
let unwrappedName = someName ?? "Anonymous"

// Unary operator

let someNumber = 10

-someNumber

// Ternary operator

let bool = true

let ternaryOp = bool ? 5 : 10

//Same as:
//if bool {
//  ternaryOp = 5
//} else {
//  ternaryOp = 10
//}

// Logical operators

let value1 = false
let value2 = true

// Logical AND
value1 && value2

// Logical OR
value1 || value2

// Logical NOT
!value1

// Range operators

// Including 5
1...5
// Not including 5
1..<5

// Try it!

//for i in 1...5 {
// print(i)
//}
