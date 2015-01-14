//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Johan on 7/1/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
//    var photos :NSMutableArray?
    var currentPhoto : Photo?
    var str :String = ""
    @IBOutlet var currentImage : UIImageView
    
//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        var c = currentPhoto!.filename
        //var d = str
        // Do any additional setup after loading the view.
       
        var image :UIImage = UIImage(named: c)
        currentImage.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        var ivc = segue.destinationViewController as InfoViewController
        ivc.currentPhoto = self.currentPhoto
    }

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
}
