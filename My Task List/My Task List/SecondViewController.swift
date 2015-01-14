//
//  SecondViewController.swift
//  My Task List
//
//  Created by Johan on 6/30/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask : UITextField
    @IBOutlet var txtDesc : UITextField
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask_Click(sender : UIButton) {
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        //get rid of keyborad
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        //jump to first view
        self.tabBarController.selectedIndex = 0
    }

    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder()
        return true
    }

}

