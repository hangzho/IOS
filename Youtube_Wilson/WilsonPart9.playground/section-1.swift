import Cocoa

protocol MyProtocol {
    var someProp:String{get set}
}
class AdopterClass:MyProtocol {
    var someProp:String
    init(someProp:String){
        self.someProp = someProp
    }
}

protocol Humanizable {
    func eat()
    func drink(howmuch:Int) -> Bool
}

class Human:Humanizable {
    func eat(){
        println("The human eating right now")
    }
    
    func drink(howmuch: Int) -> Bool {
        println("The human drank \(howmuch)cups of water")
        return true
    }
}

var fred = Human()
fred.eat()
fred.drink(5)

protocol Toggleable {
    mutating func toggle()
}

enum OnOffSwitch:Toggleable {
    case Off, On
    mutating func toggle() {
        switch self{
        case .Off:
            self = .On
        case .On:
            self = .Off
        }
    }
}
var wallSwitch = OnOffSwitch.Off
wallSwitch == OnOffSwitch.Off
wallSwitch.toggle()
wallSwitch == OnOffSwitch.Off
wallSwitch == OnOffSwitch.On


protocol Walkable {
    var name:String {get set}
    func walk(#steps:Int)
}

class Hum:Walkable {
    var name = "Human"
    func walk(#steps: Int) {
        println("The \(self.name) is walking \(steps) steps")
    }
}

class Dog:Walkable {
    var name = "Dog"
    func walk(#steps: Int) {
        println("The \(self.name) is walking \(steps) steps")
    }
    func bark(){
        println("Woof")
    }
}

class PlayTime {
    func takeAWalk(walkable:Walkable){
        println("Taking the \(walkable.name) for a walk")
        walkable.walk(steps: 10)
        if let dog = walkable as? Dog{
            dog.bark()
        }
    }
}

var palytime = PlayTime()
var dog = Dog()
palytime.takeAWalk(dog)





var mixeArray:AnyObject[] = ["3", 2,1 ,dog]
for something:AnyObject in mixeArray {
    println("haha")
}

protocol Exercisable:Walkable {
    func run(#miles:Double)
}

class TrackStar:Exercisable {
    var name = "human"
    func run(#miles: Double){
        
    }
    func walk(#steps:Int){
        
    }
}

protocol Joggable {
    func jog(#miles:Double)
}

func exercizerToutine(exercizer: protocol<Walkable,Joggable>){
    exercizer.jog(miles: 5.2)
    exercizer.walk(steps: 5000)
}
































