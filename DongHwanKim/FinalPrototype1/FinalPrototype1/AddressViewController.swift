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

    
    var networkController = NetworkManager.sharedManager
    var row:Int = 0;
    var detailItems:Array<Pocket> = []
    
    
    func addressInsert(newAddress:OneLineAddress) ->() {
        AddressList.append(newAddress)
    }
    
    func fetchAndUpdate(completionHandler: (() -> Void)!) {
        
        AddressList.map({ (oneLineAddress) in
            networkController.fetchTags(oneLineAddress) { (error, newPocket) in
                self.networkController.updateData(oneLineAddress, newPocket: newPocket)
                self.tableView.reloadData()
                completionHandler()

            }
        })
        
    }
    
    
    
    @IBAction func InstantUpdate(sender: AnyObject) {
        self.fetchAndUpdate(){}
        self.tableView.reloadData()

    }
    
    
    
    
    
    override func viewDidLoad() {
        //tableView.registerClass(CustomCell.self, forCellReuseIdentifier:"Cell")
        super.viewDidLoad()
        if let savedAddressList = loadAddressList() {
            AddressList += savedAddressList
        }
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()

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
        return AddressList.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let identifier:String = "AddressCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath:indexPath)
        //print("indexPath = section:\(indexPath.section) row:\(indexPath.row)")
        
        if let addressKeyword = AddressList[indexPath.row].searchKeyword {
            if let keywordlabel = (cell as! CustomCell).keyword {
                keywordlabel.text = addressKeyword
            }
        }
        if let updatetime = AddressList[indexPath.row].latestUpdatedTime {
            if let timelabel = (cell as! CustomCell).updatetime {
                timelabel.text = updatetime
            }
        }
        
        if let updatednumber:Int = AddressList[indexPath.row].updatedNumber {
            if let numberlabel = (cell as! CustomCell).updatenumber {
                numberlabel.text = String(updatednumber)
            }
            
        }
        
        //if let addressUpdateNumber = AddressList[indexPath.row].updatedNumber {
        // cell.detailTextLabel!.text = String(AddressList[indexPath.row].updatedNumber)
        //}
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        // let indexPath = tableView.indexPathForSelectedRow!
        // let currentCell = tableView.cellForRowAtIndexPath(indexPath)! as UITableViewCell
        
        AddressList[indexPath.row].updatedNumber = 0
        AddressList[indexPath.row].userChecked = true
        // detailItems = Array(AddressList[indexPath.row].titlePocket)
        //performSegueWithIdentifier("detail", sender: self)

        
      /*  if let url = NSURL(string: AddressList[indexPath.row].url) {
            UIApplication.sharedApplication().openURL(url)
        }*/
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "insert" {
            let nav = segue.destinationViewController as! UINavigationController
            let add = nav.topViewController as! InsertViewController
            add.delegate = self
        }
        if segue.identifier == "detail" {
            
            let index = self.tableView.indexPathForSelectedRow!
            let detail = segue.destinationViewController as! DetailViewController
            
            detailItems = Array(AddressList[index.row].titlePocket)
            detail.ItemList = detailItems
            
        }
    }
    
 

    
    // add delegate
    
    func InsertViewControllerDidCancel(controller: InsertViewController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func InsertViewControllerDidFinish(controller: InsertViewController, data: OneLineAddress) {
        
            self.dismissViewControllerAnimated(true, completion: nil)
            self.addressInsert(data)
            saveAddressList()
            self.tableView.reloadData()
    
    }
    
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            AddressList.removeAtIndex(indexPath.row)
            saveAddressList()
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
        self.tableView.reloadData()
    }
    
    func saveAddressList() {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(AddressList, toFile: OneLineAddress.ArchiveURL.path!)
        if !isSuccessfulSave {
            print("Failed to address list...")
        }
    }
    
    func loadAddressList() -> [OneLineAddress]? {
        return NSKeyedUnarchiver.unarchiveObjectWithFile(OneLineAddress.ArchiveURL.path!) as? [OneLineAddress]
    }
    

    
}

class CustomCell:UITableViewCell {
    @IBOutlet weak var keyword: UILabel!
    @IBOutlet weak var updatetime: UILabel!
    @IBOutlet weak var updatenumber: UILabel!

    
}

