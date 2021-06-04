import UIKit

// ------------|
//             |
// Inheritance |
//             |
// ------------|

class Human {
    // Properties
    var name: String
    
    // Methods
    func sayHello() -> String {
        return "Hello! My name is \(name)"
    }
    
// Use "final" to prevent inheritance
    
//    final class Human {
//      code
//    }

//    final func sayHello() -> String {
//        return "Hello! My name is \(name)"
//    }
    
    //Initializer
    init(name: String) {
        self.name = name
    }
    
}

// Сlass Child inherited from class Human
class Child: Human {
    var toy: String
    
    // Edit method
    override func sayHello() -> String {
        // Save original method received from "super class" (Human)
        let originalText = super.sayHello()
        return originalText + " and I have a toy \(self.toy)"
    }
    
    init(name: String, toy: String) {
        self.toy = toy
        super.init(name: name)
    }
    
}

let child = Child(name: "Jane", toy: "Horse")
child.sayHello()
