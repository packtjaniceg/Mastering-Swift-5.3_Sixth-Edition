import UIKit

print("Hello World")

let name = "Jon"
let language = "Swift"

var message1 = " Welcome to the wonderful world of "
var message2 = "\(name), Welcome to the wonderful world of \(language)!"

print(message2)
print(name, message1, language, "!")


let name1 = "Jon"
let name2 = "Kailey"
let name3 = "Kara"

print(name1, name2, name3, separator:", ", terminator:"")

var line = ""

print(name1, name2, name3, separator:", ", terminator:"", to:&line)
print(line)

