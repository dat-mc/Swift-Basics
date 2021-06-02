import UIKit

// ----------|
//           |
// Optionals |
//           |
// ----------|

// Optional type means that variable values can be null
var fuel: Int? = 20

// Force unwrap
// (!)Note: If the variable is nil, the application will crash
//print(fuel!)

// Better to use optional binding
if let availableFuel = fuel {
    print("\(availableFuel) liters left")
} else {
    print("No fuel data available")
}

// Also you can use a guard
func checkFuel() {
    guard let availableFuel = fuel else {
        print("No fuel data available")
        return
    }
    print("\(availableFuel) liters left")
}

checkFuel()
