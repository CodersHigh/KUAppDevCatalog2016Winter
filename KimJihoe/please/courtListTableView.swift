//
//  courtListTableView.swift
//  please
//
//  Created by cscoi022 on 2016. 2. 22..
//  Copyright © 2016년 cscoi022. All rights reserved.
//

import UIKit

class courtListTableview:UITableViewController{
    var courtList:[courtinfo] = []
    
    override func viewDidLoad(){
        let seoul = courtinfo()
        seoul.courtType = courtinfo.courtFloor.Cement
        seoul.courtRims = 4
        seoul.courtLocation = (37.5490172819592,126.993354963278)
        seoul.courtName = "남산"
        let busan = courtinfo()
        busan.courtType = courtinfo.courtFloor.Urethane
        busan.courtRims = 2
        busan.courtLocation = (35.2116282065645,129.090894189853)
        busan.courtName = "부산"
        let jongno = courtinfo()
        jongno.courtLocation = (37.5706509107484,126.997889037486)
        jongno.courtRims = 6
        jongno.courtType = courtinfo.courtFloor.Asphalt
        jongno.courtName = "종로"
        
        let anam = courtinfo()
        anam.courtRims = 4
        anam.courtType = courtinfo.courtFloor.Urethane
        anam.courtLocation = (37.5874976671028,127.033651828683)
        anam.courtName = "닭장"
        let sinchon = courtinfo()
        sinchon.courtRims = 8
        sinchon.courtType = courtinfo.courtFloor.Urethane
        sinchon.courtLocation = (37.5599372721401,126.937034208994)
        sinchon.courtName = "연대"
        let jamsil = courtinfo()
        jamsil.courtRims = 2
        jamsil.courtType = courtinfo.courtFloor.Wood
        jamsil.courtLocation = (37.510239105256,126.996099598278)
        jamsil.courtName = "한강 공원"
        let mokil = courtinfo()
        mokil.courtRims = 4
        mokil.courtType = courtinfo.courtFloor.Sand
        mokil.courtLocation = (37.5258428860634,126.921666870043)
        mokil.courtName = "여의도 공원"
        courtList += [seoul,busan,jongno,anam,sinchon,jamsil,mokil]
        
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
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courtList.count+1
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
         var identifier:String = ""
        
        if indexPath.row < courtList.count {
        identifier = "Cell"
        } else {
        identifier = "New"
        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath:indexPath)
        
        switch identifier {
        case "Cell":
        cell.textLabel!.text = courtList[indexPath.row].courtName
        cell.detailTextLabel!.text = "\(courtList[indexPath.row].courtType)"
        case "New":
        if let newLabel = (cell as! NewcourtCell).newcourtLabel {
        newLabel.text = "새로운 코트 추가"
        }
        default: ()
        }
        return cell
    }
   
}

class NewcourtCell:UITableViewCell{
    
    @IBOutlet weak var newcourtLabel: UILabel!
}
