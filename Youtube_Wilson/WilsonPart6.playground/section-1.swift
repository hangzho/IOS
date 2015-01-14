import Cocoa

func sayHello(){
    println("Hello from the function")
}
sayHello()
var aString : String
var sayHelloClosure: () -> () = {
    println("Hello from the closure")
}
sayHelloClosure = sayHello
sayHelloClosure()

func introToFriends(friendOne:String, friendTwo:String) -> String{
    return "\(friendOne) I'd like you to meet my other friend \(friendTwo)"
}
var intro = introToFriends("Jim", "Pam")
intro

var combine: (String, String) -> String

//combine = {
//    a,b -> String in
//    return a + b
//}

//combine = {
//    a,b -> String in a + b
//}

//combine = { $0 + $1 }
//
//combine("Hello","World")

let hasPrefixAndSuffix: (String, String, String) -> Bool = {
    var hasPrefix = $0.hasPrefix($1)
    var hasSuffix = $0.hasSuffix($2)
    return hasPrefix && hasSuffix
}

hasPrefixAndSuffix("Jim - Bob", "Jim", "Bob")


let aBunchOfInts = [1,2,3,4,5,6,7,8,9,10]
func reverseSorterFunc(numberOne:Int, numberTwo:Int) -> Bool {
    if numberOne < numberTwo {
        return false
    }
    return true
}
sort(aBunchOfInts, reverseSorterFunc)

let forwardSortClosure: (Int, Int) -> Bool = {
    (numberOne:Int, numberTwo:Int) -> Bool in
    if numberOne < numberTwo
    {
        return true
    }
    return false
}
sort(aBunchOfInts, forwardSortClosure)
sort(aBunchOfInts, { $0 > $1 })

let arrayOfInts = [1,2,3,4,5,6,7,8,9]

let digitNames = [
    0:"Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four", 5:"Five", 6:"Six", 7:"Seven", 8:"Eight", 9:"Nine"
]
let stringArray = arrayOfInts.map(){
    (number:Int) -> String in
    var returnString:String = digitNames[number]! //raw value
    var length = countElements(returnString)
    
    if length < digitNames.count {
        returnString = digitNames[length]!
    }
    return returnString
}
stringArray

//what's this for?
class SomeClass {
    var someProperty = "Hello world"
    
    @lazy var propertyWithClosure: String = {
        [unowned self]() -> String in
        return self.someProperty + ", nice to meet you"
    }()
    
    @lazy var someClosureProperty: () -> String = {
        [unowned self] in
        var modified = self.someProperty + ", how are you?"
        return modified
    }
}




































