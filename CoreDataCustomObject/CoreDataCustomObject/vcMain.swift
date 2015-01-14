import UIKit
import CoreData

class vcMain: UIViewController {

    @IBOutlet var txtUsername : UITextField
    @IBOutlet var txtPassword : UITextField

    @IBAction func btnSave_clicked(sender : AnyObject) {
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext
        
        let enti = NSEntityDescription.entityForName("Users", inManagedObjectContext: context)
        
        var newUser = Users(entity: enti, insertIntoManagedObjectContext: context)
        newUser.username = txtUsername.text
        newUser.password = txtPassword.text
        
        context.save(nil)
        println(newUser)
        
    }
    
    @IBAction func btnLoad_Clicked(sender : AnyObject) {
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext
        
        let request = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "username = %@", txtUsername.text)
        
        var results:NSArray = context.executeFetchRequest(request, error: nil)
        
        if results.count > 0 {
            for user in results{
            var thisUser = user as Users
            println("The users username is \(thisUser.username)")
            }
            println("\(results.count) found!")
        }else{
            println("No Results Found")
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
