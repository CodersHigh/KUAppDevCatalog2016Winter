//
//  MoneyListViewController.swift
//  MoneyConverter
//
//  Created by cscoi021 on 2016. 2. 17..
//  Copyright © 2016년 cscoi021. All rights reserved.
//

import UIKit

class SheetListViewController:UITableViewController{
    
    //ViewControoler-Scene LifeCycle
    
    var mySheet:[Sheet] = []
    var tableHeaderView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let spring = Sheet()
        spring.title = "Spring"
        spring.beat = 90
        
        
        let summer = Sheet()
        summer.title = "Summer"
        summer.beat = 45
        
        mySheet += [spring,summer]
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
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySheet.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath)
        cell.textLabel!.text = mySheet[indexPath.row].title
        
        
        cell.imageView?.image = UIImage(named: "sheet1")
        return cell
    }
    
    
}
class TotalMoneyCell:UITableViewCell{









}

