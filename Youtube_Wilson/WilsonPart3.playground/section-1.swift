struct GeoPoint {
    var latitude = 0.0
    var longitude = 0.0
}

var newGeoPoint = GeoPoint()
newGeoPoint.latitude = 42.8572
newGeoPoint.latitude = -12.4222

var mumberwiseGeopoint = GeoPoint(latitude: 12.324, longitude: 29.1111)

struct Point{
    var x:Int, y:Int
}
struct Size{
    var widt:Int, height:Int
}
struct Rect{
    var origin:Point, size:Size
    
    func center() -> Point{
        var x = origin.x + (size.widt / 2)
        var y = origin.y + (size.height / 2)
        return Point(x: x, y: y)
    }
}
var orgin = Point(x: 0, y: 0)
var size = Size(widt: 100, height: 100)
var rect = Rect(origin: orgin, size: size)
rect.size.widt = 80
var center = rect.center()
rect.size.height = 1
var point1 = Point(x: 10, y: 10)
var point2 = point1
point2.x = 20
point1.x
point2.x


struct Foo{
    var someProperty = 0.0
    mutating func incrementSomeProperty(increment:Double = 1){
        self.someProperty += increment
    }
}
var myFoo = Foo()
myFoo.incrementSomeProperty()
myFoo.someProperty
myFoo.incrementSomeProperty(increment: 2)
myFoo.someProperty
































