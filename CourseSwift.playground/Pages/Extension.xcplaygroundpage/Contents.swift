// Extension
import Foundation

class Person {
    var hair: String
    var age: Double
    var size: Double
    var name: String
    var lastName: String
    
    init(hair: String, age: Double, size: Double, name: String, lastName: String) {
        self.hair = hair
        self.age = age
        self.size = size
        self.name = name
        self.lastName = lastName
    }
}

extension Person {
    func getFullName() -> String {
        return "\(name) \(lastName)"
    }
}

//
//var person = Person(hair: "longo", age: 28, size: 1.85, name: "Carlos", lastName: "Carmo")
//
//print(person.getFullName())


extension String {
    
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
    
    var length: Int {
        get {
            return self.count
        }
    }
}

let newString = "the old String".replace(target: "old", withString: "new")
print(newString)
print(newString.length)
