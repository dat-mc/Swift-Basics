import UIKit

// ---------|
//          |
// Any type |
//          |
// ---------|

class A {
    
}

class B {
    
}

class C {
    
}

struct D {
    
}

enum E {
    case a
    case b
}

// Class objects
let a = A()
let b = A()
let c = B()
let d = B()
let e = C()

// Struct
let f = D()

// Enum
let g = E.a

// Array of any objects (any object is always class object)
let array: [AnyObject] = [a, b, c, d, e]

// Array of any types (but you cant put "nil" into it)
let array1: [Any] = [a, b, c, d, e, f, g, true, "String", array, 1.02, 0b1010]

for i in array1 {
    switch i {
    case _ as Bool:
        print("Bool")
    case _ as Int:
        print("Int")
    case _ as Double:
        print("Double")
    case _ as String:
        print("String")
    case _ as Array<Any>:
        print("Array")
    case _ as AnyObject:
        print("Object")
    default:
        print("What is that type?")
    }
}
