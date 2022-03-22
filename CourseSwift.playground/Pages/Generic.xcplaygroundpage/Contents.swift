// Generic

import Foundation

func swapTwoValueS<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var someValue = "Carlos"
var anotherValue = "Swift"

swapTwoValueS(&someValue, &anotherValue)

//print(someValue, anotherValue)


struct Stack<Element> {
    var items: [Element] = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var house = Stack<String>()
house.push("Carlos")
house.push("Henrique")
house.push("Swift")

print(house.items)

