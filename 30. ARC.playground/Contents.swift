import UIKit

// ------|
//       |
// A R C |
//       |
// ------|

class Person {
    weak var dog: Dog?
    
    deinit {
        print("Person is free")
    }
}

class Dog {
    var person: Person?
    
    deinit {
        print("Dog is free")
    }
}

let firstScope = true
let secondScope = true

//------------- First scope -------------
if firstScope {
    
    //------------- Second scope -------------
    if secondScope {
        
        let person = Person()
        let dog = Dog()
        
        // Deinitialization won't work due to cross-referencing
        // But if we make the properties weak it will work
        person.dog = dog
        dog.person = person
        
        print("Second scope ended")
    }
    //------------- Second scope end -------------
    
    print("First scope ended")
}
//------------- First scope end -------------

print("Finish")
