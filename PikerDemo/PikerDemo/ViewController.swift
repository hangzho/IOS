//
//  ViewController.swift
//  PikerDemo
//
//  Created by Johan on 6/27/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int{
        return 1
        //one column
    }
    
    func pickerView(pickerView: UIPickerView!,
        numberOfRowsInComponent component: Int) -> Int{
            return moods.count
            //how many rows
    }
    
    var moods = ["Happy", "Sad", "Maudlin", "Ecstatic"]
    
    func pickerView(pickerView: UIPickerView!,
        titleForRow row: Int,
        forComponent component: Int) -> String!{
            return moods[row]
            //data for each row
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

