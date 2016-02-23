//
//  ScoreViewController.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 22..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import UIKit

class ScoreViewController : UIViewController {
    
    
    
    @IBOutlet weak var gfms: UILabel!
    @IBOutlet weak var gsms: UILabel!
    @IBOutlet weak var hgms: UILabel!
    @IBOutlet weak var sgms: UILabel!
    @IBOutlet weak var ams: UILabel!
    @IBOutlet weak var gfas: UILabel!
    @IBOutlet weak var gsas: UILabel!
    @IBOutlet weak var hgas: UILabel!
    @IBOutlet weak var sgas: UILabel!
    @IBOutlet weak var aas: UILabel!
    
    
    @IBOutlet weak var scorebutton: UIButton!
    
    
    var ScoreList:[Score] = []
    
    let Score1 = Score(["1","1"],subjectName[0],subjectType[0],3,"B+")
    let Score2 = Score(["1","1"],subjectName[1],subjectType[0],3,"A")
    let Score3 = Score(["1","1"],subjectName[2],subjectType[0],3,"A")
    let Score4 = Score(["1","1"],subjectName[3],subjectType[1],3,"B+")
    let Score5 = Score(["1","2"],subjectName[4],subjectType[1],3,"A+")
    let Score6 = Score(["1","2"],subjectName[5],subjectType[0],3,"B")
    let Score7 = Score(["1","2"],subjectName[6],subjectType[1],3,"C+")
    let Score8 = Score(["1","2"],subjectName[7],subjectType[1],3,"C")
    
    
    
    var gfmsTotal = 0
    var gsmsTotal = 0
    var hgmsTotal = 0
    var sgmsTotal = 0
    var amsTotal = 0
    
    var gfasvalue = 0.0
    var gsasvalue = 0.0
    var hgasvalue = 0.0
    var sgasvalue = 0.0
    var aasvalue = 0.0
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ScoreList += [Score1,Score2,Score3,Score4,Score5,Score6,Score7,Score8]
        
        for i in ScoreList
        {
            if i.type == subjectType[0]
            {
                gfmsTotal += i.subjectScore
                gfasvalue += i.scorechange()*Double(i.subjectScore)
            }
            else if i.type == subjectType[1]
            {
                gsmsTotal += i.subjectScore
                gsasvalue += i.scorechange()*Double(i.subjectScore)
            }
            else if i.type == subjectType[2]
            {
                hgmsTotal += i.subjectScore
                hgasvalue += i.scorechange()*Double(i.subjectScore)
            }
            else if i.type == subjectType[3]
            {
                sgmsTotal += i.subjectScore
                sgasvalue += i.scorechange()*Double(i.subjectScore)
            }
        }
        
        amsTotal = gfmsTotal + gsmsTotal + hgmsTotal + sgmsTotal
        aasvalue = gfasvalue + gsasvalue + hgasvalue + sgasvalue
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        gfms.text = "\(gfmsTotal)" + "/15"
        gsms.text = "\(gsmsTotal)" + "/90"
        hgms.text = "\(hgmsTotal)" + "/9"
        sgms.text = "\(sgmsTotal)" + "/16"
        ams.text = "\(gfmsTotal+gsmsTotal+hgmsTotal+sgmsTotal)" + "/130"
        
        if (gfmsTotal == 0){gfmsTotal = 1}
        if (gsmsTotal == 0){gsmsTotal = 1}
        if (hgmsTotal == 0){hgmsTotal = 1}
        if (sgmsTotal == 0){sgmsTotal = 1}
        if (amsTotal == 0){amsTotal = 1}
        
        gfas.text = "\(gfasvalue/Double(gfmsTotal))"
        gsas.text = "\(gsasvalue/Double(gsmsTotal))"
        hgas.text = "\(hgasvalue/Double(hgmsTotal))"
        sgas.text = "\(sgasvalue/Double(sgmsTotal))"
        aas.text = "\(aasvalue/Double(amsTotal))"
        
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "Scorelist"?:
            let view = segue.destinationViewController as! ScoreListViewController
            view.ScList = ScoreList
        default :
            break
        }
    }
}