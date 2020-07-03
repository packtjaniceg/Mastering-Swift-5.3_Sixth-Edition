import Cocoa

class Animal {
    internal var landAnimal = false
    internal var landAttack = false
    internal var landMovement = false
    
    internal var seaAnimal = false
    internal var seaAttack = false
    internal var seaMovement = false
    
    internal var airAnimal = false
    internal var airAttack = false
    internal var airMovement = false
    
    internal var hitPoints = 0
    
    init() {
        landAnimal = false
        landAttack = false
        landMovement = false
        airAnimal = false
        airAttack = false
        airMovement = false
        seaAnimal = false
        seaAttack = false
        seaMovement = false
        hitPoints = 0
    }
    
    func isLandAnimal() -> Bool {
        return landAnimal
    }
    func canLandAttack() -> Bool {
        return landAttack
    }
    func canLandMove() -> Bool {
        return landMovement
    }
    func isSeaAnimal() -> Bool {
        return seaAnimal
    }
    func canSeaAttack() -> Bool {
        return seaAttack
    }
    func canSeaMove() -> Bool {
        return seaMovement
    }
    func isAirAnimal() -> Bool {
        return airAnimal
    }
    func canAirAttack() -> Bool {
        return airAttack
    }
    func canAirMove() -> Bool {
        return airMovement
    }
    func doLandAttack() {}
    func doLandMovement() {}
    func doSeaAttack() {}
    func doSeaMovement() {}
    func doAirAttack() {}
    func doAirMovement() {}
    func takeHit(amount: Int) {
        hitPoints -= amount
    }
    func hitPointsRemaining() -> Int {
        return hitPoints
    }
    func isAlive() -> Bool {
        return hitPoints>0 ? true : false
    }
    
    
}


class Lion: Animal {
    override init() {
        super.init()
        landAnimal = true
        landAttack = true
        landMovement = true
        hitPoints = 20
    }
    override func doLandAttack() {
        print("Lion Attack")
    }
    override func doLandMovement() {
        print("Lion Move")
    }
}

class Alligator: Animal {
    override init() {
        super.init()
        landAnimal = true
        landAttack = true
        landMovement = true
        seaAnimal = true
        seaAttack = true
        seaMovement = true
        hitPoints = 35
    }
    override func doLandAttack() {
        print("Alligator Land Attack")
    }
    override func doLandMovement() {
        print("Alligator Land Move")
    }
    override func doSeaAttack() {
        print("Alligator Sea Attack")
    }
    override func doSeaMovement() {
        print("Alligator Sea Move")
    }
    
}


var animals = [Animal]()
animals.append(Alligator())
animals.append(Alligator())
animals.append(Lion())

for (index, animal) in animals.enumerated() {
    if animal.isAirAnimal() {
        print("Animal at \(index) is Air")
    }
    if animal.isLandAnimal() {
        print("Animal at \(index) is Land")
    }
    if animal.isSeaAnimal() {
        print("Animal at \(index) is Sea")
    }
}

