import UIKit

// ---------------|
//                |
// Error handling |
//                |
// ---------------|

enum PossibleErrors: Error {
    case NotInStock
    case NotEnoughMoney
}

struct Book {
    let price: Int
    var count: Int
}

class Library {
    var deposit = 11
    var libBooks = ["Book1": Book(price: 10, count: 1), "Book2": Book(price: 20, count: 0), "Book3": Book(price: 15, count: 3)]
    
    func getBook(name: String) throws {
        guard var book = libBooks[name] else {
            throw PossibleErrors.NotInStock
        }
        
        guard book.count > 0 else {
            throw PossibleErrors.NotInStock
        }
        
        guard book.price <= deposit else {
            throw PossibleErrors.NotEnoughMoney
        }
        
        deposit -= book.price
        book.count -= 1
        libBooks[name] = book
        
        print("You got the book: \(name)!")
    }
}

let library = Library()

try library.getBook(name: "Book1")
library.deposit

do {
    try library.getBook(name: "Book1")
} catch PossibleErrors.NotEnoughMoney {
    print("Not enough money!")
} catch PossibleErrors.NotInStock {
    print("Book not in stock!")
}

var attempt = 0
func myFunc(param: Int) -> Int {
    // Then deferred actions will be executed
    
    // 2.
    defer {
        attempt += 2
    }
    
    // 1.
    defer {
        attempt *= 2
    }
    
    // Will return the value first
    switch param {
        case 0: return 100
        case 1: return 200
        default: return 400
    }
}

myFunc(param: attempt) // Return 100
attempt // Return attempt * 2 + 2 (2)
