
import Foundation

enum Direction {
    case left
    case right
}

protocol ActionVehicle {
    func accelerate()
    func stop()
}

struct tstName {
    var url: String
    var method: AnyObject
    var parameters: AnyObject?
    var decoder: AnyObject
}

protocol Vehicle {
    func turn(_ direction: Direction)
    var name: String { get set }
    func para(param: tstName)
    init(initalVehicle: String)
}

class Bike: Vehicle {
    func para(param: tstName) {

    }
    
    var peddling = false
    var brakesApplied = false
    var name: String
    var direction: Direction
    
    required init(initalVehicle: String) {
        name = initalVehicle
        direction = .right
    }

    func accelerate() {
        print("acelerar")
        peddling = true
        brakesApplied = false
    }
    
    func stop() {
        print("parar")
        brakesApplied = true
        peddling = false
    }

}

extension Bike: ActionVehicle {
    
    func turn(_ direction: Direction) {
        self.direction = direction
        print(direction)
    }
}


var bike = Bike(initalVehicle: "Caloi")
bike.accelerate()
bike.turn(.left)
print(bike.peddling)
