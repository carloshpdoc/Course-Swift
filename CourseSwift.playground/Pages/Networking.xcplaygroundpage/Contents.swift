import UIKit
import Foundation

let sharedSession = URLSession.shared
sharedSession.configuration.allowsCellularAccess
sharedSession.configuration.allowsCellularAccess = false
sharedSession.configuration.allowsCellularAccess


let myDefaultConfiguration = URLSessionConfiguration.default
let epConfig = URLSessionConfiguration.ephemeral
let backConfig = URLSessionConfiguration.background(withIdentifier: "EBAC")

myDefaultConfiguration.allowsCellularAccess = false
myDefaultConfiguration.allowsCellularAccess

myDefaultConfiguration.allowsExpensiveNetworkAccess = true
myDefaultConfiguration.allowsConstrainedNetworkAccess = true

let myDefaultSession =  URLSession(configuration: myDefaultConfiguration)
myDefaultSession.configuration.allowsConstrainedNetworkAccess

let defaultSession = URLSession(configuration: .default)
defaultSession.configuration.allowsCellularAccess

