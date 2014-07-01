//
//  PhotosTableViewController.swift
//  PhotoViewer
//
//  Created by Johan on 7/1/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit


class PhotosTableViewController: UITableViewController {
    
    var currentPhoto:Photo?
    var photos = NSMutableArray()
    
    init(style: UITableViewStyle) {
        super.init(style: style)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create array

        var pic  = Photo(name: "Emerald Bay",filename: "emeraldbay",notes: "Emerald Bay, one of Lake Tahoe's most popular and photogenic locations.")
        photos.addObject(pic)
        
        pic  = Photo(name: "A Joshua Tree",filename: "A Joshua Tree",notes: "A Joshua Tree in the Mojave Desert")
        photos.addObject(pic)
        
        pic = Photo(name: "Sunset in Ventura",filename: "sunset",notes: "Romantic sunset at the beach")
        photos.addObject(pic)
        
        pic = Photo(name: "Snowman at Lake Tahoe",filename: "snowman",notes: "Lake Tahoe gets 400 inches of snow every year.")
        photos.addObject(pic)
        
        pic = Photo(name: "Red Rock",filename: "redrock",notes: "Spectacular formations at Red Rock Canyon State Park")
        photos.addObject(pic)

        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photos.count
    }


    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        let cell = tableView?.dequeueReusableCellWithIdentifier("joe", forIndexPath: indexPath) as UITableViewCell
        // Configure the cell...
        var indNo = indexPath?.row
        var current = photos.objectAtIndex(indNo!)
        cell.textLabel.text = current.name
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView?, canEditRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView?, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath?) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView?, moveRowAtIndexPath fromIndexPath: NSIndexPath?, toIndexPath: NSIndexPath?) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView?, canMoveRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
