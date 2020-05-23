
protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird maks a new bird in a shell")
        }
    }
}
    

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the air")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents")
    }
    
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water")
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air")
    }
}

struct FlyingMeseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myAirplane = Airplane()

let museum = FlyingMeseum()
museum.flyingDemo(flyingObject: myAirplane)

