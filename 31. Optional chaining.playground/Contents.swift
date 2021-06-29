import UIKit

// ------------------|
//                   |
// Optional chaining |
//                   |
// ------------------|

class Person {
    let job: Job? = Job()
    let workers: [Worker]? = [Worker()]
}

class Worker {
    let name = "John"
    func work() {
        print("Working...")
    }
}

class Job {
    let salary: Salary? = Salary()
}

class Salary {
    let salary = 100000
    
    func showSalary() -> String {
        return "\(salary)"
    }
}

let person = Person()

// Such a record can be shortened
if let job = person.job {
    if let salary = job.salary {
        salary.salary
    }
}

if let job = person.job, let salary = job.salary {
    salary.salary
}

// Аnd this is an optional chain
let salary = person.job?.salary?.salary
let anotherSalary = person.job?.salary?.showSalary()

var workersArray = person.workers

workersArray?.append(Worker())
workersArray
