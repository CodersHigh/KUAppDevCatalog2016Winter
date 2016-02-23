//
//  optionTableViewCodeManagement.swift
//  TeacherNStudentPrototype
//
//  Created by cscoi007 on 2016. 2. 18..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//


import UIKit


class optionTableViewCodeManagement:UITableViewController{
    
    var myCode:[code] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let teacher1 = code(_code: "T763234")
        let student2 = code(_code: "Student")
        let parent3 = code(_code: "Parent")
        
        
        myCode += [teacher1,student2,parent3]
        
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
        return myCode.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",forIndexPath: indexPath)
        cell.textLabel!.text = myCode[indexPath.row].codeNum
        if (indexPath.row == 0) {
        } else {
            cell.imageView?.image = UIImage(named: "plus")
        }

        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "CodeManagement"
    }
    
    
    
}
