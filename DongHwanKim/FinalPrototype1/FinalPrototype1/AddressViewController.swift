//
//  AddressViewController.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 19..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import UIKit

class AddressViewController:UITableViewController, InsertViewControllerDelegate {
    // ViewController-Scene LifeCycle

    var AddressList:Array<OneLineAddress> = []
    var dataController = DataController()
    var row:Int = 0;
    
    func addressInsert(newAddress:OneLineAddress) ->() {
        AddressList.append(newAddress)
    }
    
    func fetchAndUpdate(completionHandler: (() -> Void)!) {
        
        AddressList.map({ (oneLineAddress) in
        dataController.fetchTags(oneLineAddress) { (error, newPocket) in
            self.dataController.updateData(oneLineAddress, newPocket: newPocket)
        }
        
        })
    
    }

    
    @IBAction func InstantUpdate(sender: AnyObject) {
        // self.fetchAndUpdate(){}
        self.tableView.reloadData()

    }
    
    
    // View가 로드되었을 때 아이폰에 있는 아카이브로부터 AddressList를 읽어들어온다.
    // 아카이브로부터 save/load는 나중에 구현
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
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
        return AddressList.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath)
        //print("indexPath = section:\(indexPath.section) row:\(indexPath.row)")
        
        if let addressKeyword = AddressList[indexPath.row].searchKeyword {
            cell.textLabel?.text = addressKeyword
        }
        
        
        if let addressUpdateNumber = AddressList[indexPath.row].updatedNumber {
            cell.detailTextLabel!.text = String(addressUpdateNumber)
        }
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        AddressList[indexPath.row].updatedNumber = 0
        AddressList[indexPath.row].userChecked = true
        if let url = NSURL(string: AddressList[indexPath.row].url) {
            UIApplication.sharedApplication().openURL(url)
        }
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
            let nav = segue.destinationViewController as! UINavigationController
            let add = nav.topViewController as! InsertViewController
            add.delegate = self
    }
    
    // add delegate
    
    func InsertViewControllerDidCancel(controller: InsertViewController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func InsertViewControllerDidFinish(controller: InsertViewController, data: OneLineAddress) {
        
            self.dismissViewControllerAnimated(true, completion: nil)
            self.addressInsert(data)
            self.tableView.reloadData()
    
    }
    
}
