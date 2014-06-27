import Cocoa

func outer(howmuch:Int) -> () -> Int{
    var total = 0
    func inner() -> Int {
        total += howmuch
        return total
    }
    return inner
}
let incrementBy5 = outer(5)

incrementBy5()
incrementBy5()
incrementBy5()
incrementBy5()

let incrementBy5Again = incrementBy5
incrementBy5Again()
