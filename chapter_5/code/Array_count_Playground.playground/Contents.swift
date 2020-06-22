import Cocoa

let arrayOne = [95, 90, 75, 80,60]
let count = arrayOne.filter{ $0 >= 90 }.count
count

var city = ["Boston", "London", "Chicago", "Atlanta"]
let count1 = city.filter{$0.range(of:"o") != nil}.count
count1
