//COMPLEX TYPES

//ARRAYS
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

print(beatles[1])

//SETS
//Crear un set directamente de un array
let colors = Set(["red", "green", "blue"])
//items duplicados son ignorados 
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//TUPLES
var name = (first: "Taylor", last: "Swift")
//Accediendo al valor por posición númerica
name.0
//ACcediendo al valor por su nombre
name.first

//USOS:

/*If you need a specific, fixed collection of 
related values where each item has a precise 
position or name, you should use a tuple:*/

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

/*item is in there extremely quickly, 
you should use a set:*/
let set = Set(["aardvark", "astronaut", "azalea"])

/*If you need a collection of values 
that can contain duplicates, or the order 
of your items matters, you should use an array:*/
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//DICTIONARIES 
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
//default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
//retorna nill:
favoriteIceCream["Charlotte"]
//retorna default value:
favoriteIceCream["Charlotte", default: "Unknown"]

//EMPTY COLLECTIONS
//diccionario vacío con strings como keys y values
var teams = [String: String]()
//agregando entradas
teams["Paul"] = "Red"
//array vacio con integers
var results = [Int]()
//set vacío
var words = Set<String>()
var numbers = Set<Int>()

//ENUMERATIONS
enum Result {
    case success
    case failure
}
//para usarse se debe usar alguno de los dos valores
let result4 = Result.failure
//VALORES ASOCIADOS
//Permiten agregar detalles adicionales a cada caso
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
//RawValues
//agrega valores enteros a cada caso
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
//se asignan desde el 0
let earth = Planet(rawValue: 2)
//Se pueden asisgnar numeros especificos a cada caso
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

//https://www.hackingwithswift.com/sixty/2/11/complex-types-summary

//OPERADORES ARITMETICOS
let firstScore = 12
let secondScore = 4
//SUMA RESTA 
let total = firstScore + secondScore
let difference = firstScore - secondScore
//MULTIPLICACION DIVISION
let product = firstScore * secondScore
let divided = firstScore / secondScore
//RESTO DE UNA DIVISION
let remainder = 13 % secondScore

//OPERATOR OVERLOADING
//Suma de enteros
let meaningOfLife = 42
let doubleMeaning = 42 + 42
//Unión de strings
let fakers = "Fakers gonna "
let action = fakers + "fake"
//Unión de strigs
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//OPERADORES COMPUESTOS
//Combina un operador con una asignación. 
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
//Se realiza la operación y se asigna 
//el resultado a la variable

//OPERADORES COMPARACIÓN
let firstScore = 6
let secondScore = 4
//== != IGUALES NO IGUALES
firstScore == secondScore
firstScore != secondScore
//MAYOR MENOR
firstScore < secondScore
firstScore >= secondScore
//Funcionan con strings con el orden albafetico
"Taylor" <= "Swift"

//CONDICIONALES
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}
//else
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
//else if
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//OPERADORES COMBINADOS
let age1 = 12
let age2 = 21
//&& AND
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
//|| OR
if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

//OPERADOR TERARIO
/*Trabaja con tres valores al mismo tiempo
checks a condition specified in the first value, 
and if it’s true returns the second value, but if
its false returns the third value.*/
let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

//SWITCH
/*write your condition once, then list all possible
outcomes and what should happen for each of them.*/
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
//falltrought
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//RANGOS
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

//https://www.hackingwithswift.com/sixty/3/10/operators-and-conditions-summary

//LOOPS
//for
let count = 1...10
for number in count {
    print("Number is \(number)")
}
//for en arrays
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}
//sin constante se usa _
print("Players gonna ")

for _ in 1...5 {
    print("play")
}

//WHILE
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

//REPEAT
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

//BREAKS
var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

//NESTED LOOP
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
//exit
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
//second condition y break
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//SKIPPING ITIMES DE UN LOOP
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

//https://www.hackingwithswift.com/sixty/4/8/looping-summary

//FUNCIONES
/*Fuciones empiezan con func + el nombre + ()
+ el cuerpo de la función */
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

//run 
printHelp()

//PARAMETROS
func square(number: Int) {
    print(number * number)
}
/*give each parameter a name, 
then a colon, then tell Swift the
type of data it must be. All this
goes inside the parentheses after 
your function name.*/
func square(number: Int) {
    print(number * number)
}
//run
square(number: 8)

//RETUNRNING DATA
func square(number: Int) -> Int {
    return number * number
}
//run
let result = square(number: 8)
//return saved
print(result)

//PARAMETER LABELS
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

//OMITIENDO
func greet(_ person: String) {
    print("Hello, \(person)!")
}
//run
greet("Taylor")

//DEFAULT PARAMETERS
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
//run
greet("Taylor")
greet("Taylor", nicely: false)

//VARIADIC FUNCTIONS
/*hey accept any number of
parameters of the same type
make any parameter variadic
by writing ... after its type.*/
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
//run
square(numbers: 1, 2, 3, 4, 5)

//THROWINGS FUNCTIONS
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}
//RUNNING
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//INOUT PARAMETERS
//Parametros que se pueden cambiar en una función
func doubleInPlace(number: inout Int) {
    number *= 2
}

//https://www.hackingwithswift.com/sixty/5/11/functions-summary

//STRUCS
/* can be given their own variables and constants,
and their own functions, then created and used 
however you want.*/

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
