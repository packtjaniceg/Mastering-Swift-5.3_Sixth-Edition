import Cocoa

struct Dice {
    var highValue: Int
    var lowValue: Int
    
    func callAsFunction() -> Int {
        Int.random(in: lowValue...highValue)
    }
}

let d6 = Dice(highValue: 6, lowValue: 1)
let roll = d6()
let d20 = Dice(highValue: 20, lowValue: 1)
d20()
