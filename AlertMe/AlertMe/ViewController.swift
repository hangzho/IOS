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
        var myAlert:UIAlertView = UIAlertView(title: "alert", message: "hello test alert", delegate: nil, cancelButtonTitle: "Okey", otherButtonTitles: nil, nil)
        myAlert.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

