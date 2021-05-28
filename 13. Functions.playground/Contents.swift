import UIKit

// ----------|
//           |
// Functions |
//           |
// ----------|

// Function structure

// functionName(parameter1, parameter2, ...) -> (returnType) {
//
// function body
//
//}

// If function return nothing
func hello() -> Void {
    print("Hello")
}

hello()

// Also you can write
func hello2() {
    print("Hello")
}

hello2()

// One parameter function
func square(a: Int) -> Int {
    return a * a
}

print(square(a: 10))

// Function without parameters but returning a value
func getValue() -> Int {
    return 15
}

print(getValue())

// Function with multiple parameters
func fullName(name: String, secondName: String) -> String {
    return "Your full name is \(name) \(secondName)"
}

print(fullName(name: "dat", secondName: "mc"))

// Function with an array as a parameter
func calcluteSum(array: [Int]) -> Int {
    var sum = 0
    for element in array {
        sum += element
    }
    return sum
}

print(calcluteSum(array: [1, 2, 3, 4, 5]))

// Variable number of parameters

// "integers" is iternal name
// "ofIntegers" is external name

func findSum(ofIntegers integers: Int...) -> Int {
    var sum = 0
    for element in integers {
        sum += element
    }
    return sum
}

print(findSum(ofIntegers: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))

// Skipping parameter name
func getValue2(_: Int) -> Int {
    return 10000
}

print(getValue2(0))

// Function returning function
func whatToDo(missed: Bool) -> ((Int) -> Int) {
    
// Also you can omit parentheses
//  func whatToDo(missed: Bool) -> (Int) -> Int {
    
    func missCountUp(input: Int) -> Int { return input + 1 }
    func missCountDown(input: Int) -> Int { return input - 1 }
    
    return missed ? missCountUp : missCountDown
}

var missedCount = 0
missedCount = whatToDo(missed: true)(missedCount)
missedCount = whatToDo(missed: false)(missedCount)
