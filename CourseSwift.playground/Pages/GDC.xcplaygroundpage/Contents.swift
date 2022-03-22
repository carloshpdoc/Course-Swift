import Foundation
import UIKit

let queue = DispatchQueue.global(qos: .userInteractive)

//print("2")


let queue1 = DispatchQueue(label: "queue1")
let queue2 = DispatchQueue(label: "queue2")
let queue3 = DispatchQueue(label: "queue3")

queue1.async {
    for index in 1...10 {
        print(index)
    }
}

queue2.async {
    print(11)
}

queue3.sync {
    print(12)
}

print("end")
