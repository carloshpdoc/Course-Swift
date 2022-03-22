import Foundation

var greeting = "Hello,"

let firstIndex = greeting.startIndex

let lastIndex = greeting.index(greeting.startIndex, offsetBy: 4)

let firstChar = greeting[firstIndex]
let lastChar = greeting[lastIndex]

print(firstChar)
print(lastChar)


let withoutInterpolation = "sem interpolação"

let rawString = #"Teste com raw string \#(withoutInterpolation). Esse é um dos usos!"#

print(rawString)

let name = "Carlos Henrique"

let spaceIndex = name.firstIndex(of: " ")!
let firstname = name[name.index(after: spaceIndex)...]

print(firstname)

