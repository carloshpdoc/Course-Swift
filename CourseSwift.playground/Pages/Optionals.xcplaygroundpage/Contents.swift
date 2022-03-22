
import Foundation
import UIKit

var greeting: String
var age: Int
var result: Int?

greeting = "Hello, playground"
age = 28

result = Int(age)

if let result = result {
   result * 2
} else {
    "Sem valor"
}

class ViewController: UIViewController {
    var label: UILabel?
}

var optionalString: String? = nil

var haveResult = optionalString ?? "Hey"

if let unwrapped = optionalString {
    haveResult = unwrapped
} else {
    haveResult = "Hey"
}
