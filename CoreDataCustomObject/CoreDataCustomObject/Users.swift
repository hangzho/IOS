import UIKit
import CoreData

@objc (Users)
class Users: NSManagedObject {
   
    @NSManaged var username:String
    @NSManaged var password:String
    
}
