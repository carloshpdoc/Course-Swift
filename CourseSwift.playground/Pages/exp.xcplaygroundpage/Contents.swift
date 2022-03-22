import Foundation

enum Router {
    case CreateUser([String: AnyObject])
    case ReadUser(String)
    case DestroyUser(String)

    var method: String {
        switch self {
        case .CreateUser:
            return "CreateUser"
        case .ReadUser:
            return "ReadUser"
        case .DestroyUser:
            return "DestroyUser"
        }
    }

    var path: String {
        switch self {
        case .CreateUser:
            return "/users"
        case .ReadUser(let username):
            return "/users/\(username)"
        case .DestroyUser(let username):
            return "/users/\(username)"
        }
    }
}

var test = Router.ReadUser("asasdasdas")
print(test.path)
print(test.method)
