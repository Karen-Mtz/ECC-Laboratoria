import UIKit

//type inference
var unDouble = 10

//String interpolation
let nombre = "Nestor"
var unaDescripcion = "Hola, me llamo \(nombre) y este es un double: \(unDouble)"

//Arreglo vacio
var arregloVacio = [String]()
arregloVacio.append("manzana")
arregloVacio.append("uva")

for fruta in arregloVacio {
    print(fruta)
}

//Opcionales
var optionalString: String? = "Hello"
print(optionalString)
//nulo -> nil
if let variable = optionalString {
    print(variable)
} else {
    print("No hay valor")
}

//Switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("...")
case "cucumber", "watercress":
    print("tea sandwich")
//Se pueden hacer operaciones dentro del case, aqui se evalua si vegetable tiene pepper
case let x where x.hasSuffix("pepper"):
    print("red pepper")
default:
    print("Everything taste good in a soup")
}

//Enumeracion
enum Planetas: Int {
    case marte
    case jupiter
    case saturno
    case tierra
}
//rawValue, el valor asociado
Planetas.tierra.rawValue

//Funciones
//Funcion de tipo void sin flecha
func greetingVoid(firstName: String, age: Int) {
    print("Hello my name is \(firstName). I'm \(age) years old")
}
greetingVoid(firstName: "Karen", age: 24)

//Retorna
//Operador flecha -> para cuando deba retornar algo
func greeting(firstName: String, age: Int) -> String {
    let description = "Hello my name is \(firstName). I'm \(age) years old"
    return description
}
var x = greeting(firstName: "Karen", age: 24)
print(x)

//External and internal argument labels con guion bajo se usa como label argument para omitir el nombre del argumento en el llamado a la funcion
func sayHello(_firstName: String) {
    print("hello \(_firstName)")
}
sayHello(_firstName: "Karen")

//ENUMERACIONES CON FUNCIONES
//Las numeraciones deben ser finitas son un numero de opciones finitas no muy largas porque debe haber un caso para cada una
enum oceanos {
    case atlantico, pacifico, indico, antartico, artico
    //propiedades calculadas, se pueden agregar a cualquiera y van a aparecer hasta que se mande a llamar
    var descripcion: String {
        switch self {
        case.artico:
            return "Oceano Artico"
        case.antartico:
            return "Oceano Antartico"
        case.pacifico:
            return "Oceano Pacifico"
        case .indico:
            return "Oceano Indico"
        default:
            return "Oceano Atlantico"
        }
    }
}
//.Description
print(oceanos.atlantico.descripcion)

//ESTRUCTURAS
//Swift es un lenguaje orientado a protocolos, pero se puede usar tambien para programacion orientado a objetos y se pueden tener clases y estructuras (cuatro pilares de poo: abstraccion, herencia, encapsulamiento, polimorfismo)
//CLASE
class Carro {
    var numPuertas: Int
    var color: String
    init(numPuertas: Int, color: String) {
        self.numPuertas = numPuertas
        self.color = color
    }
}
//ESTRUCTURA
struct Perro {
    var nombre: String
    func correr() {
        print("\(nombre) esta corriendo")
    }
}
var perro = Perro(nombre:"Cuco")
perro.correr

