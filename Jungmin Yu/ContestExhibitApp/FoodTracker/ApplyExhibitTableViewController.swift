//
//  ApplyExhibitTableViewController.swift
//  FoodTracker
//
//  Created by Jane Appleseed on 5/27/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//  See LICENSE.txt for this sample’s licensing information.
//

import UIKit

class ApplyExhibitTableViewController: UITableViewController {
    // MARK: Properties
    
    var applyExhibitDetailsTableViewController: ApplyExhibitDetailsTableViewController? = nil
    
    var appliedList:[Exhibit] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        

        // Load the sample data.
        loadSampleApplies()
        
        
    }
//    
    func loadSampleApplies() {
        let photo1 = UIImage(named: "busIdea")
        let busIdeaExhibit = Exhibit(title: "버스아이디어공모전", duedate: "16.01.08", object: "서울시민", award: "~200만원", document: "PPT,사업보고서", site: "mediahub.seoul.go.kr", poster: photo1, detail: "서울시에서 개최하는 제1회 버스아이디어공모전", host: "Public", category: "Idea")
        
        let photo2 = UIImage(named: "GS25")
        let gs25ServiceIdeaExhibit = Exhibit(title: "GS25서비스아이디어공모전", duedate: "16.01.25", object: "GS25 이용고객", award: "~3000만원", document: "PPT,사업제안서", site: "gs25.gsretail.com", poster: photo2, detail: "GS25에서 개최하는 제1회 서비스 및 상품판매 아이디어공모전", host: "Private", category: "Idea")
        
        let photo3 = UIImage(named: "YoungIT")
        let youngItPlannerExhibit = Exhibit(title: "젊은IT기획자선발공모전", duedate: "16.01.22", object: "전국대학생", award: "~500만원", document: "PPT,기획서", site: "www.minwisecontest.co.kr", poster: photo3, detail: "세상을 바꿀 새로운 IT서비스 제안 공모전", host: "Private" , category: "IndustrialEngineering")
        
        
        appliedList += [busIdeaExhibit, gs25ServiceIdeaExhibit, youngItPlannerExhibit]
    }

    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appliedList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "ApplyExhibitTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ApplyExhibitTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let applies = appliedList[indexPath.row]
        
        cell.nameLabel.text = applies.title
        cell.photoImageView.image = applies.poster
        cell.duedateLabel.text = applies.duedate
        cell.awardLabel.text = applies.award
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ("전공관련 [산업공학]")
    }
    
    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return (" ")
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
