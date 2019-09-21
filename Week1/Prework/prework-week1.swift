  //i. PRINT HELLO WORLD:  
     print("Hello, world!")

//ii. SIMPLE VALUES

//let para costates, var para variables
    var myVariable = 42
    myVariable = 50
    let myConstant = 42
//Se puede especificar el tipo escribiéndolo después de la variable y dos puntos
    let implicitInteger = 70
    let implicitDouble = 70.0
    let explicitDouble: Double = 70
//Create a constant with an explicit type of Float and a value of 4.
    let experimentConstant: Float = 4
//Si se necesita convertir el valor de una variable a otro tipo de dato se especifica
    let label = "The width is "
    let width = 94
    let widthLabel = label + String(width)
//Para incluir valores en strings se usa \()
    let apples = 3
    let oranges = 5
    let appleSummary = "I have \(apples) apples."
    let fruitSummary = "I have \(apples + oranges) pieces of fruit."
//Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.
    var name = Karen
    let greeting = "Hello, \(name), nice to meet you"
//Para Strings que ocupan varias lineas se usan tres comillas y se quita la identación
    let quotation = """
    I said "I have \(apples) apples."
    And then I said "I have \(apples + oranges) pieces of fruit."
    """
//Crear arrays con [] 
    var shoppingList = ["catfish", "water", "tulips"]
    shoppingList[1] = "bottle of water"

    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
    ]
    occupations["Jayne"] = "Public Relations"
//Agregar elementos
    shoppingList.append("blue paint")
    print(shoppingList)
//Crear array vacío
    let emptyArray = [String]()
    let emptyDictionary = [String: Float]()
//
    shoppingList = []
    occupations = [:]
//if y switch para condicionales for-in, while y repeat-while para loops 
    let individualScores = [75, 43, 103, 87, 12]
    var teamScore = 0
    for score in individualScores {
        if score > 50 {
            teamScore += 3
        } else {
            teamScore += 1
        }
    }
    print(teamScore)
   
//En un if la condicional debe ser un boleano. Se puede usar let  en una condicional para
//trabajar con valores que tal vez falten, para marcarlos como opcionales se usa un ?
    var optionalString: String? = "Hello"
    print(optionalString == nil)
    // Prints "false"

    var optionalName: String? = "John Appleseed"
    var greeting = "Hello!"
    if let name = optionalName {
        greeting = "Hello, \(name)"
    }
//Se pueden asignar valores opcionales y valores disponibles con ?? si no está el opcional, se usa el dispoible 
    let nickName: String? = nil
    let fullName: String = "John Appleseed"
    let informalGreeting = "Hi \(nickName ?? fullName)"
//Switches soportan cualquier tipo de data
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
//for-in para iterar en arrays
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
//while para repetir el blucle hasta que una condición cambie (la condición puede
//estar hasta el final para asegurar que se corrió el loop al menos una vez
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
//
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
//enum para crear una enumeracion, las enumeraciones pueden tener métodos asociados a ellas
    enum Rank: Int {
        case ace = 1
        case two, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king

        func simpleDescription() -> String {
            switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
            }
        }
    }
    let ace = Rank.ace
    let aceRawValue = ace.rawValue
//De forma predeterminada los valores se inicializan en cero y se aumentan uno a uno, pero se pueden
//especificar con rawValue
    if let convertedRank = Rank(rawValue: 3) {
        let threeDescription = convertedRank.simpleDescription()
    }


