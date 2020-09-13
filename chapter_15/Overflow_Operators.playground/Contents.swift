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

let add: UInt8 = UInt8.max &+ 1
let sub: UInt8 = UInt8.min &- 1
let mul: UInt8 = 42 &* 10

print("\(add): \(add.binaryFormat(2))")
print("\(sub): \(sub.binaryFormat(2))")
print("\(mul): \(mul.binaryFormat(2))")
