import Cocoa

var stringOne = "Hello"
for char in stringOne {
    print(char)
}

stringOne.map {
    print($0)
}

var path = "/one/two/three/four"
var length = path.count


