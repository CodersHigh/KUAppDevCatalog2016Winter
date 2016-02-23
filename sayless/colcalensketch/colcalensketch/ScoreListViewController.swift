//
//  ScoreListViewController.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 22..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import UIKit

class ScoreListViewController : UITableViewController
{
    
    var ScList: [Score]?
    
    var cellString:[String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        cellString += ["1학년 1학기","1학년 2학기"]
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 2
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath)
        cell.textLabel!.text = cellString[indexPath.row]
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "scoremodal"?:
            let view = segue.destinationViewController as! ScoreModalViewController
            view.ScListData = ScList!
            view.TitleLabelString = cellString[(self.tableView.indexPathForSelectedRow?.row)!]
            view.num = (self.tableView.indexPathForSelectedRow?.row)!
        default :
            break
        }
    }
}