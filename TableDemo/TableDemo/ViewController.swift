//
//  ViewController.swift
//  TableDemo
//
//  Created by Johan on 6/27/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var courseDetails : NSDictionary = NSDictionary()
    var justCourseNames : NSArray = NSArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url:NSURL = NSBundle.mainBundle().URLForResource("courses", withExtension: "plist")
        courseDetails = NSDictionary.dictionaryWithContentsOfURL(url)
            justCourseNames = courseDetails.allKeys
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel.text = "this is a cell"
        return cell
    }


}

