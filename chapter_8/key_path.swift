import Foundation

struct EmployeeStruct {
    var firstName = ""
    var lastName = ""
    var salaryYear: Double = 0.0 {
        willSet(newSalary) {
            print("About to set salaryYear to \(newSalary)")
        }
        didSet {
            if salaryWeek>oldValue {
                print("\(firstName) got a raise.")
            }else {
                print("\(firstName) did not get a raise.")
            }
        }
    }
    
    
    var salaryWeek: Double {
        get{
            return self.salaryYear/52
        }
        set{
            self.salaryYear = newValue*52
        }
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.salaryYear = 0.0
    }
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = 0.0
    }
    init(firstName: String, lastName: String, salaryYear: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = salaryYear
    }
    
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
    
    mutating func giveRase(amount: Double) {
        self.salaryYear += amount
    }
    
}

let employee1 = EmployeeStruct(firstName: "Jon", lastName: "Hoffman", salaryYear: 90000)
let employee2 = EmployeeStruct(firstName: "Kailey", lastName: "Hoffman", salaryYear: 32000)
let employee3 = EmployeeStruct(firstName: "Kara", lastName: "Hoffman", salaryYear: 28000)

let employeeCollection = [employee1, employee2, employee3]

let names = employeeCollection.map(\.firstName)

