import Foundation

URLCache.shared.removeAllCachedResponses()

let timer = Timer(timeInterval: 1, repeats: true) { _ in
    fetch(title: "useProtocolCachePolicy", policy: .useProtocolCachePolicy)
//    fetch(title: "returnCacheDataElseLoad", policy: .returnCacheDataElseLoad)
//    fetch(title: "reloadIgnoringLocalCacheData", policy: .reloadIgnoringLocalCacheData)
//    fetch(title: "returnCacheDataDontLoad", policy: .returnCacheDataDontLoad)
    
    
}

func fetch(title: String, policy: URLRequest.CachePolicy) {
    var request = URLRequest(url: URL(string: "http://127.0.0.1:8080/cache")!)
    request.setValue(title, forHTTPHeaderField: "cache-policy")
    request.cachePolicy = policy
    
    URLSession.shared.dataTask(with: request) { data, response, error in
        guard let httpResponse = response as? HTTPURLResponse else { return }

        let headers = httpResponse.allHeaderFields
        let etag = headers["Etag"] ?? "-"
        let cc = headers["Cache-Control"] ?? "-"
        
        print("\(title)".prefix(30), String(data: data!, encoding: .utf8)!, "Status Code:", httpResponse.statusCode, "Etag:", etag, "Cache-Control:", cc)
    }.resume()
}

RunLoop.current.add(timer, forMode: .common)
RunLoop.current.run()
