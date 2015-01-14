var airports = ["EWR":"Newark", "JFK":"John F Kennedy"]
airports.updateValue("zhouhang", forKey: "JFK")
if var remove = airports.removeValueForKey("JFK"){
    println("\(remove)")
}
