import Cocoa

var str = "Hello, playground"



var cities1 = ["London", "Paris", "Seattle", "Boston", "Moscow"]
var cities2 = ["London", "Paris", "Tulsa", "Boston", "Tokyo"]

let diff = cities2.difference(from: cities1)
/*
for change in diff {
    switch change {
    case .remove(let offset, let element, _ ):
        print("Remove: " +  String(offset) + " " + element)
        cities2.remove(at: offset)
    case .insert(let offset, let element, _):
        print("inseert: " + String(offset) + " " + element)
        cities2.insert(element, at: offset)
    }
}
*/
for change in diff {
    switch change {
    case .remove(let offset, let element, _ ):
        print("Remove: " +  String(offset) + " " + element)
        cities2.remove(at: offset)
    default:
        break
    }
}


print(cities2)


var scores1 = [100, 81, 95, 98, 99, 65, 87]
var scores2 = [100, 98, 95, 91, 83, 88, 72]

let diff2 = scores2.difference(from: scores1)
var newArray = scores1.applying(diff2) ?? []

print(newArray)





