import Cocoa

extension BinaryInteger {
    func binaryFormat(_ nibbles: Int) -> String {
        var number = self
        var binaryString = ""
        var counter = 0
        let totalBits = nibbles*4

        for _ in (1...totalBits).reversed() {
            binaryString.insert(contentsOf: "\(number & 1)", at: binaryString.startIndex)
            number >>= 1
            counter += 1
            if counter % 4 == 0 && counter < totalBits {
                binaryString.insert(contentsOf: " ", at: binaryString.startIndex)
            }
        }
        return binaryString
    }
}

let numberOne: Int8 = 42
let numberTwo: Int8 = 11

//AND operator
print("\(numberOne) = \(numberOne.binaryFormat(2))")
print("\(numberTwo) = \(numberTwo.binaryFormat(2))")
let andResults = numberOne & numberTwo
print("\(andResults) = \(andResults.binaryFormat(2))")

//OR Operator
print("\(numberOne) = \(numberOne.binaryFormat(2))")
print("\(numberTwo) = \(numberTwo.binaryFormat(2))")
let orResults = numberOne | numberTwo
print("\(orResults) = \(orResults.binaryFormat(2))")

//XOR Operator
print("\(numberOne) = \(numberOne.binaryFormat(2))")
print("\(numberTwo) = \(numberTwo.binaryFormat(2))")
let xorResults = numberOne ^ numberTwo
print("\(xorResults) = \(xorResults.binaryFormat(2))")

//NOT Operator
let notResults = ~numberOne
print("\(notResults) = \(notResults.binaryFormat(2))")
