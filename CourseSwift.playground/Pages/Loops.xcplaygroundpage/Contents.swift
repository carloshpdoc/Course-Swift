import Foundation


var count = 7
var sum = 0

//while true {
//   print(count)
//   count += 1
//
//    if count == 10 {
//        break
//    }
//}

//repeat {
//    print(count)
//    count += 1
//} while count < 7
//
//let range = 0..<4

//
//for x in 0...count {
//    print(x)
//    sum += x
//}
//
//for _ in 0..<count {
//    var c = count + 1
//    sum += c
//}
//
//print(sum)


var txt = ""

switch count {
    case 0:
        txt = "0"
    case 2:
        txt = "2"
    case 3, 7:
        txt = "3"
    default:
        txt = "default"
}

print(txt)
