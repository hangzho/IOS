//
//  ViewController.swift
//  AzureTest
//
//  Created by Johan on 6/29/14.
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

    @IBAction func showJoe(sender : AnyObject) {
        var clientjoe = AppDelegate().client
        var itemTable:MSTable = clientjoe.tableWithName("Item")
        
        
    }

}

