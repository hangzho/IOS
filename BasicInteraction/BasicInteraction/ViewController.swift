//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Johan on 6/26/14.
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
    @IBOutlet var simpleTextField : UITextField
    @IBOutlet var simpleLabel : UILabel
    @IBAction func changeLabel(sender : AnyObject) {
        var contents = simpleTextField.text
        simpleLabel.text = "Hello " + contents
        
        simpleTextField.resignFirstResponder()
    }
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        var contents = simpleTextField.text
        simpleLabel.text = "Hello " + contents
        textField.resignFirstResponder()
        return true
    }

}

