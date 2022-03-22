//var players: [String] = ["Carlos", "Henrique", "João", "Sandra"] // Array
//
//if players.count <= 5 {
//    print("É menor")
//} else {
//    print("Não é menor")
//}
//
//var firstPlayer = players.min() // .first
//var lastPlayer = players.max()  // .last
//
//print([2,3,1].first)
//print([2,3,1].last)
//
//firstPlayer = players[0]
//
//let numberPlayersSlice = players[1...2]
//
//var hasPlayer = players.contains("Maria")
//
//
//// Modificando Array
//
//players.append("Maria")
//players += ["Claudio"]
//
//players.insert("Claudia", at: 1)
//
//// Remove elementos
//
//print("Antes: ",players)
//
//
//var removeElem = players.removeLast()
//print(removeElem)
//
////removeElem = players.remove(at: 3)
//
//var getIndexPlayer = players.firstIndex(of: "Henrique")
//
//var removePlayer: String = ""
//
//if let getIndexPlayer = getIndexPlayer {
//    removePlayer = players.remove(at: getIndexPlayer)
//}
//
//print("removePlayer :", removePlayer)
//print("Depois: ", players)


// Updating Elem

//var players: [String] = ["Carlos", "Henrique", "João", "Sandra"] // Array

//players[3] = "Julia"
//players[1] = "Carlos"

//players[0...2] = ["Pedro", "Luan", "Maria"]


// Movendo elementos

//let playerNewFirst = players.remove(at: 1)
//
//players.insert(playerNewFirst, at: 0)

//var indexNewFisrt = players.firstIndex(of: "Luan")
//var indexOtherPlayer = players.firstIndex(of: "Pedro")
//
//if let indexNewFisrt = indexNewFisrt, let indexOtherPlayer = indexOtherPlayer {
//    players.swapAt(indexNewFisrt, indexOtherPlayer)
//}
//
//
//for player in players {
//    print(player)
//}

//print(players)


// Dictionary

//var players: [String] = ["Carlos", "Henrique", "João", "Sandra"] -> Array


//var players: [String: Double] = ["Carlos": 20.0, "Henrique": 30.0, "João":25.0, "Sandra": 15.0]

//players = [:]
//players.isEmpty
//players.count

//if let pointsPlayer = players["Henrique"] {
//    print(pointsPlayer)
//}

// Remove chave e valor

//players["Henrique"] = nil
//players.removeValue(forKey: "Henrique")

// Adicionar chave e valor
// players["Henrique"] = 50.0

//let olPoints = players.updateValue(60.0, forKey: "Henrique")
//
//if let olPoints = olPoints {
//    print(olPoints)
//}


//for (player, points) in players {
//    print("player =>\(player) - points => \(points)")
//}

//for points in players.values {
//    print("points =>\(points)")
//}

//print(players)


// Closures

// var multiplyAnomynous: (Int, Int) -> Int

var multiplyAnomynous = { (a: Int, b: Int) -> Int in
    return a * b
}

multiplyAnomynous = { (a: Int, b: Int) -> Int in a * b }

multiplyAnomynous = { (a, b) in a * b }

multiplyAnomynous = { $0 * $1 }

let result = multiplyAnomynous(2, 5)

var players: [String] = ["Carlos", "Henrique", "João", "Sandra"] // Array

let stringLong = players.sorted {
    $0.count > $1.count
}

//print(stringLong)

//players.forEach {
//    print("\($0)")
//}

let mapName = players.map { $0.uppercased()}
print(mapName)

let filterName = players.filter { $0.count > 6 }

print(filterName)

let sum = players.reduce(0, { $0 + $1.count })
print(sum)
