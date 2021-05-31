import UIKit

// ---------|
//          |
// Closures |
//          |
// ---------|

// Closures are similar to lambdas in other programming languages

func hello() {
    print("Hello")
}

//  ||
//  ||
// \||/
//  \/
 
let closure = {
    print("Hello")
}

func repeatPlease(closure: () -> ()) {
    for _ in 0...2 {
        closure()
    }
}

repeatPlease(closure: closure)
print("\n")
// Or

repeatPlease(closure: {
    print("Hello")
})
print("\n")
// Or

repeatPlease {
    () -> () in print("Hello")
}

let unsortedArray = [31, 30, 20, 57, 100, 40, 23, 1, 0]

let sortedArray = unsortedArray.sorted {
    (firstNum: Int, secondNum: Int) -> Bool in
    return firstNum < secondNum
}
