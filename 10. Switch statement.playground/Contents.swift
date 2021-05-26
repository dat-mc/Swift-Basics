import UIKit

// --------|
//         |
// Switch  |
//         |
// --------|

let day = 1

if day == 1 {
    print("Today is Monday")
} else if day == 2 {
    print("Today is Tuesday")
} else if day == 3 {
    print("Today is Wednesday")
} else if day == 4 {
    print("Today is Thursday")
} else if day == 5 {
    print("Today is Friday")
} else if day == 6 {
    print("Today is Saturday")
} else if day == 7 {
    print("Today is Sunday")
}

// Using switch instead of nested loops
switch day {
case 1:
    print("Today is Monday")
//    If you want get to the next case from this case then use:
//    fallthrough
case 2:
    print("Today is Tuesday")
case 3:
    print("Today is Wednesday")
case 4:
    print("Today is Thursday")
case 5:
    print("Today is Friday")
case 6:
    print("Today is Saturday")
case 7:
    print("Today is Sunday")
default:
    break
}
