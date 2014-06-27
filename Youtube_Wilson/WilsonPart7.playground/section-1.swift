import Cocoa
enum SomeEnum{
    
}

enum CompassPoint {
    case North
    case South
    case East
    case West
}

CompassPoint.East

enum Matter {
    case Solid, Liquid, Gas
}

var directionToHead = CompassPoint.North
directionToHead = .West

var currentMatter = Matter.Gas

switch currentMatter{
case .Solid:
    println("It's Solid")
case .Liquid:
    println("It's Liquid")
case .Gas:
    println("It's Gas")
}

enum Computer {
    //RAM Processor
    case Desktop(Int, String)
    //Screen size
    case Laptop(Int)
    //weight height and width
    case Phone(Int, Int, Int)
    //width height
    case Tablet
}

var computer = Computer.Desktop(8, "i7")
switch computer {
case .Desktop(let ram, let processor):
    println("Was desktop with \(ram)gb of Ram AND A \(processor) processor ")
default:
    println("No idea")
}


enum Planet:Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

Planet.Earth.toRaw()

Planet.fromRaw(3) == Planet.Earth

var thisPlanet:Planet? = Planet.fromRaw(100)

if let possiblePlanet = thisPlanet{
    switch possiblePlanet{
    case .Jupiter:
        println("It is Jupiter")
    default:println("It is other planet")
    }
}else
{
    println("No this planet here")
}






























