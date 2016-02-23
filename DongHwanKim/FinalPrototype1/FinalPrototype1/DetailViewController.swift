//
//  DetailViewController.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 23..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import UIKit

class DetailViewController:UITableViewController {
    
    var ItemList:Array<Pocket> = []
    // var ItemArray:Array<Pocket> []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemList.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DetailCell", forIndexPath:indexPath)
        //print("indexPath = section:\(indexPath.section) row:\(indexPath.row)")
        
        cell.textLabel?.text = ItemList[indexPath.row].title
        return cell;
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

         if let url = NSURL(string: ItemList[indexPath.row].url) {
        UIApplication.sharedApplication().openURL(url)
        }

    }
    
}
