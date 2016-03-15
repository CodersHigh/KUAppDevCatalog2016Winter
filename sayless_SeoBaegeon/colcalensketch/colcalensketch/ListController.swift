//
//  ListController.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 18..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import UIKit

class ListController : UITableViewController
{
    var tableScheduleData:[Schedule] = []
    var tableHomeworkData:[Homework] = []
    
    let sc1 = Schedule(["2016","02","10"],"밥약")
    let sc2 = Schedule(["2016","02","11"],"미팅")
    let sc3 = Schedule(["2016","02","13"],"교수님")
    let sc4 = Schedule(["2016","02","14"],"팀플")
    let sc5 = Schedule(["2016","02","15"],"데모발표")
    
    let hw1 = Homework(["2016","02","10"],"컴구 팀플 중간 보고서 제출", "컴퓨터구조")
    let hw2 = Homework(["2016","02","11"],"BST 과제 제출", "자료구조")
    let hw3 = Homework(["2016","02","13"],"언리얼 과제", "인터렉티브콘텐츠입문")
    let hw4 = Homework(["2016","02","14"],"졸프 제출", "졸업프로젝트")
    let hw5 = Homework(["2016","02","15"],"겜프 최종 발표\n유니티 마무리 하기!!" ,"게임프로그래밍")
    
    var segmentedvalue: Int?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        tableScheduleData += [sc1,sc2,sc3,sc4,sc5]
        tableHomeworkData += [hw1,hw2,hw3,hw4,hw5]
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
        if (segmentedvalue == 0)
        {
            return tableScheduleData.count
        }
        else
        {
            return tableHomeworkData.count
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath)
        if(segmentedvalue == 0)
        {
            cell.textLabel!.text = tableScheduleData[indexPath.row].valueString()
        }
        else
        {
            cell.textLabel!.text = tableHomeworkData[indexPath.row].valueString()
        }
        return cell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "listmodal"?:
            let view = segue.destinationViewController as! ListModalController
            
            if (segmentedvalue == 0)
            {
                
                view.Datefield = tableScheduleData[(self.tableView.indexPathForSelectedRow?.row)!].date
                view.subjectfield = ""
                view.Textfiled = tableScheduleData[(self.tableView.indexPathForSelectedRow?.row)!].textfield
            }
            else
            {
                view.Datefield = tableHomeworkData[(self.tableView.indexPathForSelectedRow?.row)!].date
                view.subjectfield = tableHomeworkData[(self.tableView.indexPathForSelectedRow?.row)!].subject
                view.Textfiled = tableHomeworkData[(self.tableView.indexPathForSelectedRow?.row)!].textfield
            }
        default :
            break
        }
    }
    
}