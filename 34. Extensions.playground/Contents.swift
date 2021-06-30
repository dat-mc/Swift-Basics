import UIKit

// -----------|
//            |
// Extensions |
//            |
// -----------|

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    func power(by value: Int) -> Int {
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
}

2.isEven
2.power(by: 8)
