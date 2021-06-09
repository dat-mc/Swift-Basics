import UIKit

// ----------------|
//                 |
// Lazy properties |
//                 |
// ----------------|

func longProcessingFunc() -> String {
    return "Long process..."
}

class Processing {
    let shortProcessing: String = "Short process..."
    let mediumProccesing: String = "Medium process..."
    
    // Lazy property is always var(iable)
    // Until the property is used it will be equal to nil
    lazy var longProcessing = longProcessingFunc()
}

let process = Processing()

process.shortProcessing
process.longProcessing

process
