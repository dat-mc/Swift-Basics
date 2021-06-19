import UIKit

// -------------|
//              |
// Type casting |
//              |
// -------------|

// Super class
class Furniture {
    let material: String
    
    init(material: String) {
        self.material = material
    }
}

class Bed: Furniture {
    let numberOfPlaces: Int
    
    init(material: String, numberOfPlaces: Int) {
        self.numberOfPlaces = numberOfPlaces
        super.init(material: material)
    }
}

class Cupboard: Furniture {
    let numberOfShelves: Int
    
    init(material: String, numberOfShelves: Int) {
        self.numberOfShelves = numberOfShelves
        super.init(material: material)
    }
}

var arrayOfFurniture = [Furniture]()

arrayOfFurniture.append(Bed(material: "Wood", numberOfPlaces: 2))
arrayOfFurniture.append(Bed(material: "Steel", numberOfPlaces: 1))
arrayOfFurniture.append(Bed(material: "Wood", numberOfPlaces: 2))
arrayOfFurniture.append(Bed(material: "Wood", numberOfPlaces: 2))

arrayOfFurniture.append(Cupboard(material: "Wood", numberOfShelves: 10))
arrayOfFurniture.append(Cupboard(material: "Steel", numberOfShelves: 5))
arrayOfFurniture.append(Cupboard(material: "Wood", numberOfShelves: 15))

var bed = 0
var cupboard = 0

for item in arrayOfFurniture {
    // "is" - type checking operator
    if item is Bed {
        bed += 1
    } else {
        cupboard += 1
    }
}

bed = 0
cupboard = 0

for item in arrayOfFurniture {
    if let bedForSure = item as? Bed {
        print("Bed has \(bedForSure.numberOfPlaces) number of places and made of \(bedForSure.material)")
        bed += 1
    }
}
