// Enum - Enumeration

enum AppleProducts: String{
    case iPhone
    case iPad
    case Macbook
    case Watch
}

enum PizzaCategory: String{
    case classic
    case specialty
    case glutenFree
}

let specialtyPizza = PizzaCategory.specialty
let myFavoritePizza: PizzaCategory = .classic

// Struct - Structure

struct Pizza{
    let name: String
    let cost: Double
    let category: PizzaCategory
}

let myPizza = Pizza(name: "Double-Double", cost: 12.99, category: .specialty)

print("I would like to order a \(myPizza.name).")

// Class

class PizzaPlace {
    var name: String
    var address: String
    private(set) var pizzas: [Pizza]
    
    // Create Initializer
    init(name : String, address: String){
        self.name = name
        self.address = address
        self.pizzas = []
    }
    
    func add(pizza: Pizza){
        pizzas.append(pizza)
    }
}

let myPizzaPlace = PizzaPlace(name: "My Pizza Co.", address: "2408 Ashe Road")

let hawaiianClassic = Pizza(name: "Hawaiian Classic", cost: 12.99, category: .classic)
let chickenAlfredo = Pizza(name: "Call me Alfredo", cost: 15.99, category: .specialty)
let margaritaPizza = Pizza(name: "Margarita Senorita", cost: 15.99, category: .glutenFree)

myPizzaPlace.add(pizza: hawaiianClassic)
myPizzaPlace.add(pizza: chickenAlfredo)
myPizzaPlace.add(pizza: margaritaPizza)

//Difference between Value Types and Reference Types

// Struct = Value Type
struct Ticket {
    var name: String
}

var ticket = Ticket(name: "Bob")
print(ticket.name)

var ticketCopy = ticket

ticketCopy.name = "Clay"

print(ticketCopy.name)

func changeTicketName(ticket: Ticket){
    var updateTicket = ticket
    updateTicket.name = "John"
    print("Updated Ticket: \(updateTicket.name)")
}

print("Ticket: \(ticket.name)")
changeTicketName(ticket: ticket)
print("Ticket: \(ticket.name)")

// Reference Types: class

class City{
    var name: String
    var population: Int
    
    init(name:String, population:Int){
        self.name = name
        self.population = population
    }
}

let bakersfield = City(name: "Bakersfield", population: 200_800)

let bak = bakersfield
bak.name = "BAK"

print("Bakersfield: \(bakersfield.name)")
print("BAK: \(bak.name)")

func increasePopulation(city: City){
    city.population = city.population + 1
}

print("Bakersfield population: \(bakersfield.population)")
increasePopulation(city: bakersfield)
print("Bakersfield population: \(bakersfield.population)")

class Vacuum {
    var isOn: Bool
    var isPluggedIn: Bool
    var rugHeight: Int
    var isSelfDriving: Bool
    var attachements: [String]
    
    init(isSelfDriving: Bool = false, attachments: [String] = []){
        self.isOn = false
        self.isPluggedIn = false
        self.rugHeight = 5
        self.isSelfDriving = isSelfDriving
        self.attachements = attachments
    }
}

let sharkVacuum = Vacuum(isSelfDriving: false, attachments: ["Dusting Brush", "Crevice Tool"])

let roombaVacuum = Vacuum(isSelfDriving: true)


// Optionals

var myString : String? = "Clayton"

// If your office is close and you don't own a car"
var myCar: String? = nil

// I've changed jobs and now I do have a car
myCar = "Subaru"

// I get into a car accident and total my car
myCar = nil

// I got insurance money to get another car
myCar = "Tesla"

// I have 4 kids and have to get a minivan
myCar = "Toyota Sienna"

// if let statement to unwrap an optional value
let subtotalString = "58.95"

if let subtotal = Double(subtotalString){
    let tip = subtotal * 0.20
    let total = subtotal + tip
    print("Total: \(total) \n\tsubtotal:\(subtotal)\n\ttip: \(tip)")
} else {
    print("\(subtotalString) is not a valid ammount.")
}

// Force unwrap an optional value (ONLY DO IF SURE THE VALUE IS NOT SET TO NIL!!)

var yearsOld: Int? = 25

if yearsOld != nil {
    let approximateDaysOld = 365 * yearsOld!
    print("Wow! You are \(approximateDaysOld) days old.")
} else {
    print("You have entered an invalid number of years.")
}

if let yearsOld = yearsOld{
    let approximateDaysOld = 365 * yearsOld
    print("Wow! You are \(approximateDaysOld) days old.")
} else {
    print("You have not entered an age.")
}
