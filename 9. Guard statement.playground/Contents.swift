import UIKit

// ----------------|
//                 |
// Guard statement |
//                 |
// ----------------|

func function(a: Int, b: Int) {
    guard a == b else { return } // If a != b the function will abort execution
    guard b == 11 else { return } // Same as above but only when b != 11
}

function(a: 5, b: 5)

//--------------------------------
//Using guard
for i in 1...5 {
    guard i != 4 else { continue }
    print(i)
}
print("\n")

// Using if
//for i in 1...5 {
//    if i == 3 {
//        break
//    }
//    print(i)
//}
//--------------------------------

// Also you can break cycle
for i in 1...5 {
    guard i != 4 else { break }
    print(i)
}
