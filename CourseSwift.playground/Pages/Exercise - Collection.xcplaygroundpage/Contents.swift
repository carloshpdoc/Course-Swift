var language = "Objc"

let code = { [language] in
    print(language)
}

language = "Swift"

let newCode = code
newCode()

import Foundation

let d = ["john": 23, "james": 24, "vincent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0 }
type(of: x)
print(x)
