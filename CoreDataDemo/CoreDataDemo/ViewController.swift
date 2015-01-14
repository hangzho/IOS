import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    @IBAction func btnSave(){
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate) as AppDelegate
        var context: NSManagedObjectContext = appDel.managedObjectContext

        var newUser: AnyObject = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
        newUser.setValue(String(txtUsername.text), forKey: "username")
        newUser.setValue(String(txtPassword.text), forKey: "password")
        
        context.save(nil)
        println(newUser)
        println("Object saved")
    }
    
    @IBAction func btnLoad(){
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate) as AppDelegate
        var context: NSManagedObjectContext = appDel.managedObjectContext
        
        var request = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        
        request.predicate = NSPredicate(format: "username = %@", "" + txtUsername.text)
        
        var results:NSArray = context.executeFetchRequest(request, error: nil)
        
        if results.count > 0 {
            var res = results[0] as NSManagedObject
            //txtUsername.text = res.valueForKey("username") as String
            txtPassword.text = res.valueForKey("password") as String
        }else{
            println("no result")
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
