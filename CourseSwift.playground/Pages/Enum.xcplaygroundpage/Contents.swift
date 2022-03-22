// Enum

//enum MoveDirection: Int {
//    case forward
//    case back
//    case left
//    case right
//}
//
//
//var move: MoveDirection = .left
//
//
//func doMove(_ movement: MoveDirection) {
//    switch move {
//    case .forward:
//        print("movemos para frente")
//    case .back:
//        print("movemos para trás")
//    case .left:
//        print("movemos para esquerda")
//    case .right:
//        print("movemos para direita")
//    }
//}
//
//doMove(.left)

// Associeted Values

enum Medir {
    case peso(Double)
    case idade(Int)
    case tamanho(width: Double, height: Double)
}

var medir = Medir.tamanho(width: 19, height: 20)
var medir2 = Medir.peso(91.5)

func printEnum(_ medir: Medir) {
    switch medir {
    case .idade(let age):
        print("minha idade é: \(age)")
    case .peso(let weight):
        print("meu peso é: \(weight)")
    case .tamanho(let height, let width):
        print("minha altura \(height), meu comprimento \(width)")
    }
}

printEnum(medir)
printEnum(medir2)
