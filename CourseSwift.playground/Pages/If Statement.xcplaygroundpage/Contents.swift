import Foundation

let name = "Carlos"

if name == "Carls" {
    print(name)
} else if name != "Henrique" {
    print("Henrique")
    
} else {
    print("Nenhum")
}

var x = name == "Carlos" ? "Carlos" : "Henrique"

print(x)

let day = 2

if day > 2 {
    print("sim")
} else if day < 2 {
    print("é")
} else {
    print("2")
}

if 8 < 9 && 8 > 9 {
    print("if")
} else {
    print("else")
}
