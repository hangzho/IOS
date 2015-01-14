import Cocoa

func swapTwoInts<T>(inout a:T, inout b:T){
    let c = a
    a = b
    b = c
}

var a = 1, b = 3
swapTwoInts(&a, &b)
a
b

//struct Stack<T> {
//    var items = T[]()
//    mutating func push(item:T){
//        items.append(item)
//    }
//    mutating func pop(){
//        items.removeLast()
//    }
//}
//
//var stringStack = Stack(items:["Cat","Dog"])
//stringStack.push("Rabbit")
//stringStack
//stringStack.pop()
//stringStack

func findIndex<T:Equatable>(array:T[],valueToFind:T) -> Int? {
    for(index, value) in enumerate(array){
        if value == valueToFind {
            return index
        }
    }
    return nil
}


let doubleIndex = findIndex([3.14,0.1,0.25], 0.1)

protocol Container{
    typealias ItemType
    mutating func append(ItemType)
    var count: Int{get}
    subscript(i:Int) -> ItemType{get}
}

func allItemsMatch<C1 :Container, C2 : Container where C1.ItemType == C2.ItemType, C1.ItemType:Equatable>(someContainer:C1, anotherContainer:C2) -> Bool {
    if someContainer.count != anotherContainer.count {
        return false
    }
    for i in 0..someContainer.count {
        if someContainer[i] != anotherContainer[i]{
            return false
        }
    }
    return true
}

struct Stack<T>:Container{
        var items = T[]()
        mutating func push(item:T){
            items.append(item)
        }
        mutating func pop(){
            items.removeLast()
        }
    mutating func append(item:T){
        self.push(item)
    }
    var count:Int{
    return items.count
    }
    subscript(i:Int) -> T{
    return items[i]
    }
}

var bunchOfStrings = Stack<String>()
bunchOfStrings.append("zhou")
bunchOfStrings.push("hang")

var bunchOfStrings2 = Stack(items: ["zhou","hang"])

allItemsMatch(bunchOfStrings, bunchOfStrings2)



































