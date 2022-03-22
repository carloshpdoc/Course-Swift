import Foundation

// Value Reference

class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is removed")
    }
}

var dog: Animal? = Animal(name: "dog")
print(dog!.name)
dog = nil
// Typer value

//struct Animal {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//var dog = Animal(name: "dog")
//var cat = dog
//
//print(dog.name)
//print(cat.name)
//
//dog.name = "bird"
//
//print(cat.name)
