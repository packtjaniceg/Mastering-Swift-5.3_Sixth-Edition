import Cocoa

var str = "Hello, playground"

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


let numberOne: UInt8 = 24

let resultsLeft = numberOne << 1
let resultsRight = numberOne >> 1

let resultsLeft3 = numberOne << 3
let resultsRight4 = numberOne >> 4

print("24  \(numberOne.binaryFormat(2))")
print("<<  \(resultsLeft.binaryFormat(2))")
print(">>  \(resultsRight.binaryFormat(2))")
print("<<3 \(resultsLeft3.binaryFormat(2))")
print(">>4 \(resultsRight4.binaryFormat(2))")



