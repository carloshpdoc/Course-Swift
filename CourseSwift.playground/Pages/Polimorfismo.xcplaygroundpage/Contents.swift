// Polimorfismo


func addNums(a: Int, b: Int) -> Int {
    return a + b
}

func addNums(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}

//

print(addNums(a: 10, b: 20))
print(addNums(a: 10, b: 20, c: 30))


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


var animal: Animal = Cat()
animal.makeNoise()

animal = Dog()
animal.makeNoise()

animal = Animal()
animal.makeNoise()
