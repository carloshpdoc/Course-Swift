import Foundation

class Recipe {
    let title: String
    unowned let cooker: Cooker
    weak var chef: Chef?
    
    init(title: String, cooker: Cooker) {
        self.title = title
        self.cooker = cooker
    }
    
    lazy var description: () -> String = { [weak self] in
        "\(self?.title) by \(self?.cooker.name)"
    }
    
    deinit {
        print("Goodbye Recipe \(title)")
    }
}

class Chef {
    let name: String
    var recipes: [Recipe] = []
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Goodbye Chef \(name)!")
    }
}

class Cooker {
    let name: String
    var recipes: [Recipe] = []
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Goodbye Cooker \(name)")
    }
}

let description: () -> String
do {
  let cooker = Cooker(name: "Henrique")
  let recipe = Recipe(title: "Gerenciamento de memória",
                        cooker: cooker)
    description = recipe.description
}
print(description())
