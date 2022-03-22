// Closure with escaping
import Foundation

func doSomething(using closure: @escaping () -> Void) {
    DispatchQueue.main.async {
        closure()
    }
}
