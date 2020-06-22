import Cocoa

var speed = 300000000
switch speed {
case 300000000:
    print("Speed of light")
case 340:
    print("Speed of sound")
default:
    print("Unknown speed")
}


var char : Character = "e"
switch char {
case "a", "e", "i", "o", "u":
    print("letter is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m","n", "p", "q", "r", "s", "t", "v", "w","x", "y", "z":
    print("letter is a consonant")
default:
    print("unknown letter")
}




var studentId = 4
var grade = 57
switch grade {
case 90...100:
    print("Grade is an A")
case 80...89:
    print("Grade is a B")
case 70...79:
    print("Grade is an C")
case 55...69 where studentId == 4:
    print("Grade is a D for student 4")
case 60...69:
    print("Grade is a D")
case 0...59:
    print("Grade is a F")
default:
    print("Unknown Grade")
}


enum Product {
    case Book(String, Double, Int)
    case Puzzle(String, Double)
}
var order = Product.Book("Mastering Swift 4", 49.99, 2017)
switch order {
case .Book(let name, let price, let year):
    print("You ordered the book \(name): \(year) for \(price)")
case .Puzzle(let name, let price):
    print("You ordered the Puzzle \(name) for \(price)")
}


enum Planets {
    case Mercury, Venus, Earth, Mars, Jupiter
    case Saturn, Uranus, Neptune, pluto
}

var planetWeLiveOn = Planets.Earth
var furthestPlanet = Planets.Neptune
//var newPlanet = Planets.pluto

// Using the switch statement
switch planetWeLiveOn {
case .Mercury:
    print("We live on Mercury, it is very hot!")
case .Venus:
    print("We live on Venus, it is very hot!")
case .Earth:
    print("We live on Earth, just right")
case .Mars:
    print("We live on Mars, a little cold")
case .Jupiter, .Saturn, .Uranus, .Neptune:
    print("Where do we live?")
@unknown default:
    print("Unknown planet")
}


let myDog = ("Maple", 4)

switch myDog {
case ("Lily", let age):
    print("Lily is my dog and is \(age)")
case ("Maple", let age):
    print("Maple is my dog and is \(age)")
case ("Dash", let age):
    print("Dash is my dog and is \(age)")
default:
    print("unknown dog")
}

switch myDog {
case(_, 0...1):
    print("Your dog is a puppy")
case(_, 2...7):
    print("Your dog is middle aged")
case(_, 8...):
    print("Your dog is getting old")
default:
    print("Unknown")
}

let myNumber = 10
switch myNumber {
case _ where myNumber.isMultiple(of: 2):
    print("Divisible by 2")
case _ where myNumber.isMultiple(of: 3):
    print("Divisible by 3")
default:
    print("No Match")
}
