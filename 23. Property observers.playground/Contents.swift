import UIKit

// -------------------|
//                    |
// Property observers |
//                    |
// -------------------|

class Employee {
    var accessLevel: Int = 0 {
        // When value is assigned:
        // (!) If you don't pass the new default variable name it will be "newValue"
        willSet(level) {
            print("New access level: \(level)")
        }
        
        // After value assign:
        // (!) If you don't pass the new default variable name it will be "oldValue"
        didSet(level) {
            accessToDB = accessLevel > 0 // Returns bool
            print("Old access level: \(level)")
        }
    }
    
    var accessToDB: Bool = false
    
    init(accessLevel: Int) {
        self.accessLevel = accessLevel
    }
}

let employee = Employee(accessLevel: 0)

employee.accessLevel = 1

employee.accessLevel = 5

employee.accessLevel = 10
