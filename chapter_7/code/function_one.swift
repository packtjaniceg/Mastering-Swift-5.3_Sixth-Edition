import Foundation

func sayHello(name: String) -> Void {
    let retString = "Hello " + name
    print(retString)
}


func sayHello2(name: String) ->String {
    let retString = "Hello " + name
    return retString
}

sayHello(name:"Jon")

var message = sayHello2(name:"Jon")
print(message)
sayHello2(name:"Jon")


@discardableResult func sayHello3(name: String) ->String {
    let retString = "Hello " + name
    return retString
}

sayHello3(name:"Jon")

func sayHello4(name: String) -> String {
    "Hello " + name
}

sayHello4(name: "Jon")

func sayHello4(name: String) -> String {
    "Hello " + name
}

sayHello4(name: "Jon")
