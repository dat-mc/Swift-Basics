import UIKit

// --------------------|
//                     |
// Computed properties |
//                     |
// --------------------|

class Rectangle {
    let height: Int
    let width: Int
    let depth: Int
    
    // Computed property
    var volume: Int {
        return height * width * depth
    }
    
    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
    
}

let rectangle = Rectangle(height: 10, width: 10, depth: 5)
rectangle.volume
