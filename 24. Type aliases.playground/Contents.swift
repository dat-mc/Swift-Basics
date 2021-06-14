import UIKit

// -------------|
//              |
// Type aliases |
//              |
// -------------|

typealias Meter = Int
typealias Kilogram = Int

let length: Meter = 50
let weight: Kilogram = 100

typealias DoubleInt = (Int, Int)

let someDoubleInt: DoubleInt = (0, 1)

typealias KeyValue = [Int: String]

var dictionary: KeyValue = [:]
dictionary[0] = "SomeValue"
type(of: dictionary)
