//
//  ApplyExhibitDetailsTableViewController.swift
//  FoodTracker
//
//  Created by 유수민 on 2016. 2. 21..
//  Copyright © 2016년 Apple Inc. All rights reserved.
//

import UIKit

class ApplyExhibitDetailsTableViewController: UITableViewController, UINavigationControllerDelegate {
    // MARK: Properties
    
    
    var applyList:[Exhibit] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the sample data.
        loadSampleApplies()
    }
    
    func loadSampleApplies() {
        let photo1 = UIImage(named: "busIdea")
        let busIdeaExhibit = Exhibit(title: "버스아이디어공모전", duedate: "16.01.08", object: "서울시민", award: "~200만원", document: "PPT,사업보고서", site: "mediahub.seoul.go.kr", poster: photo1, detail: "서울시에서 개최하는 제1회 버스아이디어공모전", host: "Public", category: "Idea")
        
        let photo2 = UIImage(named: "GS25")
        let gs25ServiceIdeaExhibit = Exhibit(title: "GS25서비스아이디어공모전", duedate: "16.01.25", object: "GS25 이용고객", award: "~3000만원", document: "PPT,사업제안서", site: "gs25.gsretail.com", poster: photo2, detail: "GS25에서 개최하는 제1회 서비스 및 상품판매 아이디어공모전", host: "Private", category: "Idea")
        
        let photo3 = UIImage(named: "YoungIT")
        let youngItPlannerExhibit = Exhibit(title: "젊은IT기획자선발공모전", duedate: "16.01.22", object: "전국대학생", award: "~500만원", document: "PPT,기획서", site: "www.minwisecontest.co.kr", poster: photo3, detail: "세상을 바꿀 새로운 IT서비스 제안 공모전", host: "Private" , category: "IndustrialEngineering")
        
 
        applyList += [busIdeaExhibit, gs25ServiceIdeaExhibit, youngItPlannerExhibit]
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
        return applyList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "ApplyExhibitDetailsTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ApplyExhibitDetailsTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let applies = applyList[indexPath.row]
        
        cell.detailsLabel.text = applies.title
        cell.subjectLabel.text = applies.award
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ("IndustrialEngineering")
    }
    
    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return (" ")
    }

    
    
}

class ApplyExhibitDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
}
