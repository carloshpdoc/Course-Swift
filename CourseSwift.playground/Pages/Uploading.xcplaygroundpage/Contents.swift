import Foundation
import UIKit
import Darwin

class SessionDelegate: NSObject, URLSessionDataDelegate {
    func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData bytesSent: Int64, totalBytesSent: Int64, totalBytesExpectedToSend: Int64) {
        
        let progress = round(Float(totalBytesSent) / Float(totalBytesExpectedToSend) * 100)
        
        print("carregando: \(progress) %")
    }
}

let image = UIImage(named: "image.jpeg")
let imageData = image?.jpegData(compressionQuality: 1.0)
let upload = URL(string: "https://web-ebac-ios.herokuapp.com/upload")!

var request = URLRequest(url: upload)
request.httpMethod = "Post"

let boundary = UUID().uuidString
request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")

var data = Data()
data.append("\r\n--\(boundary)\r\n".data(using: .utf8)!)
data.append("Content-Disposition: form-data; name=\"photo\"; filename=\"image.jpeg\"\r\n".data(using: .utf8)!)
data.append("Content-Type: image/jpeg\r\n\r\n".data(using: .utf8)!)

data.append(imageData!)

data.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)

let session = URLSession(configuration: .default, delegate: SessionDelegate(), delegateQueue: OperationQueue.main)

let task = session.uploadTask(with: request, from: data)
{ (data, response, error) in
    let response = String(data: data!, encoding: .utf8)
   
    if let error = error {
        print(error.localizedDescription)
    }

    print("response ==> \(String(describing: response))")
}

 task.resume()
