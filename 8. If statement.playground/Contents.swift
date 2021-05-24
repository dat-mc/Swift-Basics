import UIKit

// -------------|
//              |
// If statement |
//              |
// -------------|

let a = 10
let b = 5

if a == b {
    print("A = B")
} else if a < b {
    print("B more then A by \(b - a)")
} else if a > b {
    print("A more then B by \(a - b)")
}

let condition = true
var statement = ""

if condition {
    statement = "True statement executed"
} else {
    statement = "False statement executed"
}

// Using the ternary operator
statement = condition ? "True statement executed" : "False statement executed"

// a == b
// a != b
// a > b
// a >= b
// a < b
// a <= b
// a ~= b
