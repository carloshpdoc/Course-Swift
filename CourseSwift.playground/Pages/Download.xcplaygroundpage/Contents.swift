import Foundation

class SessionDelegate: NSObject, URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("DownloadLocation:", location)
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let progress = round(Float(totalBytesWritten) / Float(totalBytesExpectedToWrite) * 100)
        
        print("carregando: \(progress) %")
    }
}

let downloadSession = URLSession(configuration: .default, delegate: SessionDelegate(), delegateQueue: OperationQueue.main)

let urlDownload =  URL(string: "https://web-ebac-ios.herokuapp.com/download/Additional_Tools_for_Xcode_12.5(1).dmg")!

let task = downloadSession.downloadTask(with: urlDownload)

task.resume()

