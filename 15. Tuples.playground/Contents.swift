import UIKit

// -------|
//        |
// Tuples |
//        |
// -------|

let one = 1
let two = 2
let three = 3

// Tuple structure
// (value1, value2, ...)

let tuple = (one, two, three)
print(tuple)

let person = (19, "Steve")
print(person.0, person.1)

let (first, second, third) = (1, 2, 3)
print(first, second, third)

let pencil = (color: "green", length: 20, weight: 4)
print(pencil.color, pencil.length, pencil.weight)

let (pencilColor, pencilLength, pencilWeight) = pencil
