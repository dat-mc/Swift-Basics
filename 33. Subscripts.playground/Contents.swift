import UIKit

// -----------|
//            |
// Subscripts |
//            |
// -----------|

struct Workplace {
    var workPlace: [String]
    
    subscript(index: Int) -> String? {
        get {
            switch index {
                case 0..<workPlace.count: return workPlace[index]
                default: return nil
            }
        }
        set {
            switch index {
                case 0..<workPlace.count: return workPlace[index] = newValue ?? ""
                default: break
            }
        }
    }
}

let workplace = Workplace(workPlace: ["Lamp", "PC", "Table", "Chair"])
workplace.workPlace[2]
workplace[2]
