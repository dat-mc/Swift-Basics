import UIKit

// -----|
//      |
// Sets |
//      |
// -----|

// Different ways to declare sets
let firstSet = Set<String>()
let secondSet: Set<String> = []
var thirdSet: Set = [1, 2, 4, 5]

// Inserting values
thirdSet.insert(10)

// Is set empty?
thirdSet.isEmpty

// Count members in set
thirdSet.count

// Remove member
thirdSet.remove(1)

// Does the set contain a member?
thirdSet.contains(10)

let setOne: Set = [1, 2, 3, 4]
let setTwo: Set = [4, 5, 6]

// Union of sets
let allValues = setOne.union(setTwo).sorted()

// Intersection of sets
let intersectionArray = setOne.intersection(setTwo)

// Non-repeated values in sets
let nonRepeated = setOne.symmetricDifference(setTwo).sorted()

// Unique members in setOne
let uniqueInSetOne = setOne.subtracting(setTwo).sorted()

// Unique members in setTwo
let uniqueInSetTwo = setTwo.subtracting(setOne).sorted()
