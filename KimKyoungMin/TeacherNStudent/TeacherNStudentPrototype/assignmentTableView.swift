//
//  assignmentTableView.swift
//  TeacherNStudentPrototype
//
//  Created by cscoi007 on 2016. 2. 18..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit


class assignmentTableView:UITableViewController{
    
    var myAssignment:[assignment] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myAssignment.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCellWithIdentifier("assignmentCell",forIndexPath: indexPath)
        cell2.textLabel!.text = myAssignment[indexPath.row].title
//        if (indexPath.row == 0) {
//            cell.imageView?.image = UIImage(named: "minus")
//        } else {
//            cell.imageView?.image = UIImage(named: "plus")
//        }
        
        
        return cell2
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Assignment"
    }
    
    class totalAssignmentCell:UITableViewCell{
        @IBOutlet weak var AssignmentTitleLable: UILabel!
        @IBOutlet weak var AssignmentScoreLable: UILabel!
        @IBOutlet weak var AssignmentStartLable: UILabel!
        @IBOutlet weak var AssignmentEndLable: UILabel!
        @IBOutlet weak var AssignmentUISwitch: UISwitch!
        
    }
    
}
