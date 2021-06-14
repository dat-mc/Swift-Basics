import UIKit

// ------|
//       |
// Enums |
//       |
// ------|

enum Move: Int {
    // Cases is the main part of the enum
    case forward = 1
    case backward = 0
    case left = 2
    case right = 3
}

let direction = Move.forward.rawValue

enum Device {
    case iPad, iPhone, MacBook(color: String)
    
    var year: Int {
        switch self {
            case .iPad: return 2007
            case .iPhone: return 2016
            case .MacBook(let color) where color == "Space Grey": return 2021
            case .MacBook: return 2020
        }
    }
}

let prodYear = Device.MacBook(color: "Space Grey").year

// Nested enum
enum Hero {
    enum Weapon: Int {
        case sword = 4
        case hand = 1
        
        var damage: Int {
            return rawValue * 100
        }
    }
    
    enum HeroClass {
        case rogue
        case mage
        case warrior
    }
}

let weapon = Hero.Weapon.sword.damage

// Indirect enum
indirect enum Lunch {
    case salad
    case soup
    case meal(Lunch, Lunch)
}

let lunch = Lunch.meal(.salad, .soup)
