// Type Casting


class Animal {
    func makeNoise() {
        print("Durrr")
    }
}

class Cat: Animal {
    
    override func makeNoise() {
        print("Miauuuu")
    }
}

class Dog: Animal {
    
    override func makeNoise() {
        print("Au au au")
    }
}

let pets = [Dog(), Cat(), Dog(), Dog(), Cat()]

for pet in pets {
//    if let dog = pet as? Dog {
//        dog.makeNoise()
//    }
    
    switch pet {
        case let dog as Dog:
            dog.makeNoise()
        case let cat as Cat:
            cat.makeNoise()
        default:
            break
    }
}


