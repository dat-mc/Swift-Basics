import UIKit

// -------|
//        |
// Arrays |
//        |
// -------|

// Different ways to declare arrays
let firstArray = Array<Int>()
let secondArray = [Int]()

// You'll see this way more often
let thirdArray: [Int] = []

var fourthArray = [1, 2, 3, 4, 5]
var fifthArray = [Int](repeating: 5, count: 10)

// Replace multiple elements with one
// Elements from 0 to 4 (5 elements in total) change to 10
fifthArray[0...4] = [10]

// Is array empty?
fifthArray.isEmpty

// Count elements in array
fifthArray.count

// Add element
fifthArray.append(15)

// Insert element
fifthArray.insert(1000, at: 0)

// Remove element
// Also you can save it
let removedElement = fifthArray.remove(at: 0)

// Remove first element
fifthArray.removeFirst()

// Remove last element
fifthArray.removeLast()

// Reverse array
fourthArray.reverse()

// Sort array
fourthArray.sort()

// Shuffle array
fourthArray.shuffle()
