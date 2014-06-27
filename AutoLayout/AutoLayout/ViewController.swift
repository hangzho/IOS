//
//  ViewController.swift
//  AutoLayout
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
    @IBOutlet var showLabel : UILabel
    @IBOutlet var datePicker : UIDatePicker
    @IBAction func displayDay(sender : AnyObject) {
        var chosen:NSDate = datePicker.date
        var formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        var weekday = formatter.stringFromDate(chosen)
        var msg = "this is a " + weekday
        showLabel.text = msg
        
    }


}

