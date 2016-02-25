//
//  GameListTableView.swift
//  please
//
//  Created by cscoi022 on 2016. 2. 22..
//  Copyright © 2016년 cscoi022. All rights reserved.
//

import UIKit

class GameListTableView:UITableViewController{

    var gameList:[gameInfo] = []
    override func viewDidLoad(){
            format.dateFormat = "MM/dd HH"
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
        return gameList.count
}
    
}