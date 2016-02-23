//
//  optionTableView.swift
//  TeacherNStudentPrototype
//
//  Created by cscoi007 on 2016. 2. 17..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit



class optionTableViewCodeConnection:UITableViewController{
    
    

    
    var student1 = code(_code: "S458241")
    var student2 = code(_code: "S845217")
    var parent3 = code(_code: "P255545")
    
    var myCode:[String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        myCode += [student1.codeNum,student2.codeNum,parent3.codeNum]
     
            // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func backToMaster(segue:UIStoryboardSegue) {
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCode.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var identifier:String = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath)
        
        
        cell.textLabel!.text = myCode[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "CodeConnection"
    }
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            myCode.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}


