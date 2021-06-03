import UIKit

// ---------------|
//                |
// Initialization |
//                |
// ---------------|

class Human {
    var name: String
    var age: Int
    var hair: Bool
    
    func description() -> String {
        return "Hello! My name is \(name). I'm \(age)."
    }
    
    // Initializer
    init(name: String, age: Int, hair: Bool) {
        self.name = name
        self.age = age
        self.hair = hair
    }
    
}

// Create a object
let human = Human(name: "John", age: 30, hair: false)
