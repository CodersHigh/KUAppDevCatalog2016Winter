//
//  CourtListTableView.swift
//  please
//
//  Created by cscoi022 on 2016. 2. 17..
//  Copyright © 2016년 cscoi022. All rights reserved.
//

import UIKit

class UserListTableView:UITableViewController{
   
   
    var userList:[userInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let paul = userInfo()
        let mike = userInfo()
        let john = userInfo()
        let any = userInfo()
        let jordan = userInfo()
        let james = userInfo()
        let onil = userInfo()
        let yong = userInfo()
        let jake = userInfo()
        let jobs = userInfo()

        paul.userName = "Paul"; paul.userPosition = userInfo.positiontype.Forwad
        mike.userName = "Mike"; mike.userPosition = userInfo.positiontype.Guard
        john.userName = "John"; john.userPosition = userInfo.positiontype.Center
        any.userName = "Any"; any.userPosition = userInfo.positiontype.Center
        jordan.userName = "Jordan"; jordan.userPosition = userInfo.positiontype.Guard
        james.userName = "James"; james.userPosition = userInfo.positiontype.Forwad
        onil.userName = "Onil"; onil.userPosition = userInfo.positiontype.Center
        yong.userName = "Yong"; yong.userPosition = userInfo.positiontype.Guard
        jake.userName = "Jake"; jake.userPosition = userInfo.positiontype.Forwad
        jobs.userName = "Jobs"; jobs.userPosition = userInfo.positiontype.Forwad
        
        
        userList = [paul,mike,john,any,jordan,james,onil,yong,jake,jobs]
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
    return userList.count
    
}
override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath)
    cell.textLabel?.text = userList[indexPath.row].userName
    cell.detailTextLabel!.text = "\(userList[indexPath.row].userPosition)"
    return cell
    }
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "players"
    }
    
    
    
}
