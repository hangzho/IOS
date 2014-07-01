//
//  ViewController.swift
//  AlertMe
//
//  Created by Johan on 6/27/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func alert(sender : AnyObject) {
        let myAlert:UIAlertView = UIAlertView()
        myAlert.title = "Alert"
        myAlert.message = "Here's a message"
        myAlert.addButtonWithTitle("Understod")
        myAlert.show()
        
    }
}

