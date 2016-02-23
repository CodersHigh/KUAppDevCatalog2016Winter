//
//  PortfolioTableController.swift
//  FoodTracker
//
//  Created by 유수민 on 2016. 2. 21..
//  Copyright © 2016년 Apple Inc. All rights reserved.
//

import UIKit

class PortfolioTableController: UITableViewController {
    
    var applyLists:[Exhibit] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem()
        
        
        
        
        // Load the sample data.
        loadSampleApplies()
        
        
        
        
        
    }
    
    func loadSampleApplies() {
        let photo1 = UIImage(named: "busIdea")
        let busIdeaExhibit = Exhibit(title: "버스아이디어공모전", duedate: "16.01.08", object: "서울시민", award: "~200만원", document: "PPT,사업보고서", site: "mediahub.seoul.go.kr", poster: photo1, detail: "서울시에서 개최하는 제1회 버스아이디어공모전", host: "Public", category: "Idea")
        
        let photo2 = UIImage(named: "GS25")
        let gs25ServiceIdeaExhibit = Exhibit(title: "GS25서비스아이디어공모전", duedate: "16.01.25", object: "GS25 이용고객", award: "~3000만원", document: "PPT,사업제안서", site: "gs25.gsretail.com", poster: photo2, detail: "GS25에서 개최하는 제1회 서비스 및 상품판매 아이디어공모전", host: "Private", category: "Idea")
        
        applyLists += [busIdeaExhibit, gs25ServiceIdeaExhibit]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return applyLists.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "PortfolioTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! PortfolioTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let applies = applyLists[indexPath.row]
        
        cell.titleLabel.text = applies.title
        cell.posterThumbnail.image = applies.poster
        cell.duedateLabel.text = applies.duedate
        cell.awardLabel.text = applies.award
        
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ("수상내역")
    }
    
    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return (" ")
    }
    
    
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            applyLists.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetail" {
            let applyDetailViewController = segue.destinationViewController as! PortfolioAddTableController
            
            if let selectedExhibitCell = sender as? PortfolioTableViewCell {
                let indexPath = tableView.indexPathForCell(selectedExhibitCell)!
                let selectedExhibit = applyLists[indexPath.row]
                applyDetailViewController.applyList = selectedExhibit
            }
        }
        else if segue.identifier == "AddItem" {
            print("Adding new Exhibit")
        }
    }

    
    

    @IBAction func unwindToAwardList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.sourceViewController as? PortfolioAddTableController, applyList = sourceViewController.applyList {
            let newIndexPath = NSIndexPath(forRow: applyLists.count, inSection: 0)
            applyLists.append(applyList)
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
        }
    }
    
    
    
    
}
