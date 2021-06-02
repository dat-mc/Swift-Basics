import UIKit

// --------|
//         |
// Classes |
//         |
// --------|

// Example:
class Human {
    // Properties of the class object
    var name: String = "Steve"
    var age: Int = 21
    var hair: Bool = true
    
    // Methods of the class object
    func description() -> String {
        return "Hello! My name is \(name). I'm \(age)."
    }
    
}

// Create a object
let human = Human()

// Change its property
human.name = "Bob"

// Call method
human.description()

let human1 = Human()
human1.hair = false
human1.name = "John"

// Create array of objects
var array = [Human]()

array.append(human)
array.append(human1)
