import Cocoa
class BoringClass{
    
}

class Car {
    var model = ""
    var year = 0
}

class Person {
    let name:String
    var age:Int
    var nickname:String?
    
    init(name:String, age:Int, nickname:String? = nil){
        self.name = name
        self.age = age
        self.nickname = nickname
    }
}

var person1 = Person(name: "Johan", age: 23)
var person2 = Person(name: "Fred", age: 32, nickname: "T-bone")

person1.age

class Mutant:Person {
    var level: Int
    var superPower:String
    
    init(name: String, age: Int, level:Int, superPower: String, nickname: String? = nil){
        self.level = level
        self.superPower = superPower
        super.init(name: name, age: age, nickname: nickname)
    }
    
    func isMorePowerful(mutant:Mutant) ->Bool {
        return (level > mutant.level)
    }
}

var jim = Mutant(name: "Jim Neutron", age: 23, level: 7, superPower: "Flight", nickname: "Flyin Jim")
var janet = Mutant(name: "Jane Jackson", age: 32, level: 8, superPower: "Telepathy", nickname: "the Brainac")
janet.isMorePowerful(jim)

class SomeClass {
    class func typeMethod(#string:String) -> String {
        return string + "_ModifiedInClassMethod"
    }
}
var strToModify:String = "Happy String"
SomeClass.typeMethod(string: strToModify)

class SimpleClass {
    var stringProperty = "My String"
}

let variable1:SimpleClass = SimpleClass()
variable1.stringProperty = "Hello World"
let variable2:SimpleClass = variable1
variable1.stringProperty = "Changed"
variable2.stringProperty

class SimpleClass2 {
    var rect:CGRect = CGRect(x: 0.0, y: 0.0, width: 100, height: 100)
}

var newSimpleclass = SimpleClass2()
newSimpleclass.rect.size.height = 200
var rect = newSimpleclass.rect
rect.size.width = 123
newSimpleclass.rect = rect



































