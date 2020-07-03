import Foundation

struct Name: Equatable {
    var firstName = ""
    var lastName = ""

}

let name1 = Name(firstName: "Jon", lastName: "Hoffman")
let name2 = Name(firstName: "John", lastName: "Hoffman")
let name3 = Name(firstName: "Jon", lastName: "Hoffman")

name1 == name2
name1 == name3
