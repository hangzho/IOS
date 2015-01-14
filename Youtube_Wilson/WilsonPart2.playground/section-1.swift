import Cocoa

func sayHelloTo(#name:String) -> String{
    println("Hello \(name)")
    return "Well, Hello to you too!"
}
sayHelloTo(name: "Johan")

func sumAndCeiling(a:Int, b:Int) -> (Int , Int){
    var ceiling = a > b ? a : b
    var sum = a + b
    return (sum, ceiling)
}
var total = sumAndCeiling(14, 52)
total.0
total.1

func sumAndFloor(a:Int, b:Int) -> (sum:Int , floor:Int){
    var floor = a < b ? a : b
    var sum = a + b
    return (sum, floor)
}
var floorTuple = sumAndFloor(13, 4)
floorTuple.sum
floorTuple.floor

func double(number:Int) ->Int{
    return number * 2
}
func triple(number:Int) ->Int{
    return number * 3
}
func modifyInt(#number :Int, #modifier:Int -> Int) ->Int{
    return modifier(number)
}
modifyInt(number: 15, modifier: double)
modifyInt(number: 15, modifier: triple)

func buildIncrementor() -> (() -> Int){
    var count = 0
    func incrementor() -> Int {
        ++count
        return count
    }
    return incrementor
}
var incrementor = buildIncrementor()
incrementor()
incrementor()
incrementor()

func average(#numbers:Int...) ->Int{
    var total = 0
    for n in numbers{
        total += n
    }
    return total / numbers.count
}
average(numbers: 12,13,14)

func joinString(#strings: String[]) -> String{
    var returnStr = ""
    for str in strings {
        returnStr += str
    }
    return returnStr
}
func joinString(#strings: String...) -> String{
    return joinString(strings: strings)
}
var arrayOfstrings = ["I", "am", "an", "Array"]
joinString(strings: arrayOfstrings)
joinString(strings: "I","am", "Johan")

func incrementNumber(inout #number:Int, increment:Int = 1){
    number += increment
}
var ourInt = 1
incrementNumber(number: &ourInt)
incrementNumber(number: &ourInt)
ourInt










































