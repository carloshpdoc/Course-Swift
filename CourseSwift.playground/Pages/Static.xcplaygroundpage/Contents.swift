class Animal {
    static var nums = 0
    
    init() {
        Animal.nums += 1
    }
}

let dog = Animal()
Animal.nums

let cat = Animal()
Animal.nums


class Singleton {
    static let sharedInstance = Singleton()
    
    private init() { }
    
    func facaQualquerCoisa() { }
}

Singleton.sharedInstance.facaQualquerCoisa()
Singleton.sharedInstance.facaQualquerCoisa()
