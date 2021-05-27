import UIKit

// -------------|
//              |
// For-in cycle |
//              |
// -------------|

for i in 1...5 {
    print(i)
}
print("\n")

// For-in cycle through array
let myArray = [1, 2, 3, 4, 5]
for element in myArray {
    print(element)
}
print("\n")

let myArray2 = ["Hello", "world", "!"]
for element in myArray2 {
    print(element)
}
print("\n")

// For-in cycle through string
let someString = "Hello, world!"
for char in someString {
    print(char)
}
print("\n")

// For-in cycle through dictionary
let namesAndAges = ["John": 21, "Bill": 18, "Jane": 19]
for (name, age) in namesAndAges {
    print("\(name), \(age)")
}
print("\n")

// Get index and element in array
for (index, element) in myArray.enumerated() {
    print(index, element)
}
