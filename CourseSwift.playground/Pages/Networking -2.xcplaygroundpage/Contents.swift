import UIKit


let configuration = URLSessionConfiguration.default
let session = URLSession(configuration: configuration)

guard let url = URL(string: "https://web-ebac-ios.herokuapp.com/home") else {
    fatalError()
}

let task = session.dataTask(with: url) {  data, resp, error in
    guard let resp = resp as? HTTPURLResponse, (200..<300).contains(resp.statusCode) else {
        return
    }
    
    guard let data = data else {
        return
    }

    if let result = String(data: data, encoding: .utf8) {
        print(result)
    }
}

task.resume()
