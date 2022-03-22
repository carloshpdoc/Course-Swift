import Foundation

var greeting = "Hello, playground"


func printGreet(_ say: String, _ name: String)-> String {
    return say + " - " + name
}

var test: String = printGreet(greeting, "Carlos")


func greet(person: String, from hometown: String) -> String {
    return "1 - Hello \(person)! from \(hometown)."
}

func greet(person: String, from hometown: String) -> Int {
    return 2
}

var teste: String = greet(person: "Carlos", from: "Rio")





