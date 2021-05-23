import UIKit

// -------------|
//              |
// Dictionaries |
//              |
// -------------|

// Different ways to declare dictionaries
let firstDict = Dictionary<String, String>()
let secondDict = [String: String]()
let thirdDict: [String:String] = [:]

var countries = [1: "Russia",
                 2: "Japan",
                 3: "USA"]

// Count elements in dictionary
countries.count

// Is our dictionary empty?
countries.isEmpty

// Update element by key
countries.updateValue("France", forKey: 2)

// Ways to remove element
countries[2] = nil
let deletedValue = countries.removeValue(forKey: 1)

// Clear dictionary
countries.removeAll()
// Or
countries = [:]
