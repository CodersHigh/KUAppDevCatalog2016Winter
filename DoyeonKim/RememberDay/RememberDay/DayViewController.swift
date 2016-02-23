//
//  DayViewController.swift
//  RememberDay
//
//  Created by DOKEN on 2016. 2. 17..
//  Copyright © 2016년 DOKEN. All rights reserved.
//

import UIKit


var oneMonth : [oneDay] = []

class DayViewController:UITableViewController{
    
    
    var detailViewController: DetailViewController? = nil
    var objects = [AnyObject]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        self.tableView.rowHeight = 90.0
        
        let feb16 = oneDay(2016,2,16,"hello world","Fox.img",nil)
        let feb17 = oneDay(2016,2,17,"I watched volleyball","Volley.img",nil)
        let feb18 = oneDay(2016,2,18,"welsh Corgi numna guiyeoungut...","dog",nil)
        let feb19 = oneDay(2016,2,19,"Start of the day","Cake",nil)
        let feb20 = oneDay(2016,2,20,"Wine","Wine",nil)
        let feb21 = oneDay(2016,2,21,"Beer","Beer1",nil)
        
        oneMonth += [feb16,feb17,feb18,feb19,feb20,feb21]

        
        /*let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
*/
        
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
    override func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int{
        return oneMonth.count+objects.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        if indexPath.row < oneMonth.count
        {
            cell.textLabel?.text =  String(oneMonth[indexPath.row].month)+" . "+String(oneMonth[indexPath.row].date) + "\t" + oneMonth[indexPath.row].content!
            
            cell.imageView?.image = UIImage(named: oneMonth[indexPath.row].image!)
            cell.imageView?.frame = CGRect(x: 0,y: 0,width: 10,height: 50)

        }
        else{
            let object = objects[indexPath.row-oneMonth.count] as! String
            cell.textLabel?.text = object
            cell.imageView?.image = UIImage(named: "Empty")
            
            cell.imageView?.frame = CGRect(x: 0,y: 0,width: 50,height: 50)
        }
        

        
        
        return cell
    }
    
    func insertNewObject(sender: AnyObject) {
        
        //데이터 추가
        objects.insert(NSDate(), atIndex: 0)
        
        //테이블 뷰 애니메이션
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        //애니메이션이 필요없다면 그냥 리로드
        //self.tableView.reloadData()
    }
    
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! NSDate
                let controller = segue.destinationViewController as! DetailViewController
                controller.detailItem = object
                //controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                //controller.navigationItem.leftItemsSupplementBackButton = true
            }
        } else if segue.identifier == "" {
            
        }
    }
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        

        if editingStyle == .Delete {
            objects.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    }