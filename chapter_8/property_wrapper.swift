import Foundation

@propertyWrapper
struct Trimmed {
    private var str: String = ""

    var wrappedValue: String {
        get { str }
        set { str = newValue.trimmingCharacters(in: .whitespacesAndNewlines) }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

struct EmployeeStruct {
    @Trimmed var firstName = ""
    @Trimmed var lastName = ""
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

let employee1 = EmployeeStruct(firstName: "  Jon  ", lastName: " Hoffman   ")

