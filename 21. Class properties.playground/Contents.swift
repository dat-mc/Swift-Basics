import UIKit

// -----------------|
//                  |
// Class properties |
//                  |
// -----------------|

class Car {
    let products: Int
    let people: Int
    let pets: Int
    
    // Class properties
    class var selfWeight: Int { return 1500 }
    class var maxWeight: Int { return 2000 }
    
    var totalWeight: Int {
        return products + people * 100 + pets * 10 + Car.selfWeight
    }
    
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}

let car = Car(products: 100, people: 4, pets: 3)

let maxWeight = Car.maxWeight
let carWeight = Car.selfWeight

let totalWeight = car.totalWeight

if totalWeight > maxWeight {
    print("Car is overloaded by \(totalWeight - maxWeight)")
} else {
    print("You can drive")
}
