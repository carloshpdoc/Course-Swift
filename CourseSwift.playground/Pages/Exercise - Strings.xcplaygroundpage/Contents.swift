import Foundation
import UIKit

// 1) Qual das seguintes atribuição são validas?
var name: String? = "Carlos"
//var age: Int = nil
let kilometer: Float = 26.7
var lastName: String? = nil


// 2) - Faça o unwrap com segurança com a constante, `number` e print com a condição mais legível.
var numericalString = "3"
var number = Int(numericalString)

print("\(number) is the magic number.")

// 3) - Se alteramos o valor da variavel numericalString para "cinco" e executar o playground, o que acontecerá?
// a - Vai funcionar sem problemas
// b - Não vai funcionar
// c - acredito que não funcione.


// 4) - A classe UIViewController possui uma propriedade chamada tabBarController. A propriedade tabBarController é opcional do tipo UITabBarController ?. O próprio tabBarController contém um tabBar como propriedade. Complete o código abaixo preenchendo o uso apropriado do encadeamento opcional para acessar a propriedade da barra de guias.

var viewController = UIViewController()
if let tabBar = viewController.tabBarController?.tabBar {
    print("Aqui tem uma tab bar.\(tabBar)")
} else {
    print("Aqui não tem uma tab bar controller.")
}
