import UIKit

// ----------------------------|
//                             |
// While & repeat-while cycles |
//                             |
// ----------------------------|

var timer = 10
print("Counting down...")
// While cycle check condition before running code
while timer > 0 {
    print(timer)
    timer -= 1
}
print("Start! 🚀\n")

timer = 10
print("Counting down...")
// Repeat-while cycle DOESN'T check condition for first iteration
repeat {
    print(timer)
    timer -= 1
} while timer > 0
print("Start! 🚀")
