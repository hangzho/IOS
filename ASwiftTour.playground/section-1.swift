// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let myConstant = 42

let implictInteger = 70

let implictDouble = 70.0

let explicitDouble: Double = 70.0

let explicitFloat:Float = 70.0

let label = "The width is"

let width = 94

let widthLabel = label + String (width)

let apples = 3
let oranges  = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

var shopingList = ["catfish", "water", "tulips", "blue paint"]
shopingList[1]
shopingList[1] = "bottle of water"
shopingList[1]
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

let emptyArray = String[]()
let emptyDictionary = Dictionary<String, Float>()
shopingList = []

let individualScores = [72, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores{
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore

var optionalString:String? = "Hello"
optionalString == nil

var optionalName: String? = "Johan Zhou"
var greeting = "Hello!"
if let name = optionalName{
    greeting = "Hello, \(name)"
}else{
    greeting = "This is null"
}

let vegetable = "Red pepper"
switch vegetable{
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cumcumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tasetes good in soup."
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
        }
    }
}
largest

var largest2 = 0
var kind2:String = ""
for (kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest2{
            largest2 = number
            kind2 = kind
        }
    }
}
largest2
kind2

var n = 2;
while (n < 100){
    n = n * 2;
}
n

var m = 2;
do{
m = m * 2;
}while (m < 100)
m

var firstForLoop = 0
for i in 0..3{
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 3; i++ {
    secondForLoop += i
    }
secondForLoop

func greet(name:String, day: String) ->String {
    return "Hello \(name), today is \(day)."
}
greet("Johan","Tyesday")

func getGasPrices() -> (Double, Double, Double){
    return (3.59, 3.69, 3.79)
}
getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}
sumOf()
sumOf(42,597,12)

func avrOf(numbers:Int...) ->Double{
    var sum = 0
    var i = 0
    for number in numbers{
        sum += number
        i++
    }
    return (Double(sum) / Double(i))
}

avrOf()
avrOf(42,597,12)

func returnFifteen() ->Int{
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() ->(Int ->Int){
    func addOne(number :Int) ->Int{
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list:Int[],condition:Int->Bool)->Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number:Int) ->Bool{
    return number < 10
}
var numbers = [10, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

numbers.map({
    (number:Int) -> Int in
    let result = 3 * number
    return result
    })

numbers.map({
    number in 3 * number
    }
)

sort([1,5,3,12,2]){$0>$1}

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NameShape {
    var numberOfSides:Int = 0
    var name:String
    init(name:String){
        self.name = name
    }
    
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides."
    }
}
class Square:NameShape{
    var sideLength:Double
    
    init(name: String, sideLength:Double){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String{
        return "A squre with sides of length \(sideLength)."
    }
}
let test = Square(name: "My test squre", sideLength: 5.2)
test.area()
test.simpleDescription()

class EquilateralTriangle: NameShape {
    var sideLength:Double = 0.0
    
    init(sideLength:Double, name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double{
    get{
        return 3.0 * sideLength
    }
    set{
        sideLength = newValue / 3.0
    }
    
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 9.9
triangle.perimeter

class TriangleAndSquare{
    var triangle:EquilateralTriangle{
    willSet{
        square.sideLength = newValue.sideLength
    }
    }
    var square:Square{
    willSet{
        triangle.sideLength = newValue.sideLength
    }
    }
    init(size:Double, name:String){
        square = Square(name: name, sideLength: size)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(name: "Lager square", sideLength: 50)
triangleAndSquare.triangle.sideLength

class Counter{
    var count:Int = 0
    func incrementBy(amount:Int, numberOfTimes times:Int){
        count += amount * times
    }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 8)

let optionalSquare:Square? = Square(name: "Optional square", sideLength: 2.5)
let sideLength = optionalSquare?.sideLength

enum Rank :Int{
    case Ace
    case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String{
        switch self{
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}
let ace = Rank.Seven
let aceRawValue = ace.toRaw()
ace.simpleDescription()
if let convertedRank = Rank.fromRaw(3){
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit{
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String{
        switch self{
        case .Spades:
            return "spades"
        case .Hearts:
            return "heart"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

struct Card{
    var rank:Rank
    var suit:Suit
    func simpleDescription() -> String{
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank:.Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success{
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}
switch failure{
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}

protocol ExampleProtocol {
    var simpleDescription: String{ get}
    mutating func adjust()
}

class SimpleClass: ExampleProtocol{
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust(){
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimplesStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust(){
        simpleDescription += " (adjusted)"
    }
}

var b = SimplesStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol{
    var simpleDescription: String{
    return "The number \(self)"
    }
    mutating func adjust(){
        self += 42
    }
}
7.simpleDescription

let protocolValue: ExampleProtocol = a;
protocolValue.simpleDescription

func repeat<ItemType>(item: ItemType, times: Int) -> ItemType[]{
    var result = ItemType[]()
    for i in 0..times{
        result += item
    }
    return result
}
repeat(2, 3)

enum OptionalValue<T>{
    case None
    case Some(T)
}
var possibleInteger:OptionalValue<Int> = .None
possibleInteger = .Some(100)

func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element:Equatable, T.GeneratorType.Element == U.GeneratorType.Element>(lhs: T, rhs: U) -> Bool{
    for lhsItem in lhs{
        for rhsItem in rhs{
        if lhsItem == rhsItem {
            return true
            }
        }
    }
    return false
}
anyCommonElements([1,2,3], [3])




































