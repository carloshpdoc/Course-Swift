//Struct

import Foundation

struct User {
    let firstName: String
    let lastName: String
    var email: String
    var isActive: Bool
    var age: Int
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func printFullName() {
        print("\(firstName) \(lastName)")
    }
    
    mutating func activeUser() {
        isActive = true
    }
}

var user = User(firstName: "Carlos", lastName: "Carmo", email: "gmail@gmail.com", isActive: false, age: 27)
//print(user.isActive)
//print(user.firstName)
//print(user.fullName)
//user.printFullName()
//
//user.email = "meu@email.com"
//
//print(user.email)
//
//user.activeUser()
//
//print(user.isActive)

var a = 5
var b = a

print(a)
print(b)

a = 10
print(a)
print(b)
