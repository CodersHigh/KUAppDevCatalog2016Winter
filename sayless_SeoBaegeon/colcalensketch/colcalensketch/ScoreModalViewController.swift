//
//  ScoreModalViewController.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 22..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import UIKit

class ScoreModalViewController : UIViewController
{
    var ScListData:[Score] = []
    var TitleLabelString = ""
    var num = 0
    

    @IBOutlet weak var ttl: UILabel!
    
    @IBOutlet weak var sub1: UILabel!
    @IBOutlet weak var sub2: UILabel!
    @IBOutlet weak var sub3: UILabel!
    @IBOutlet weak var sub4: UILabel!
    
    @IBOutlet weak var sub1in: UILabel!
    @IBOutlet weak var sub2in: UILabel!
    @IBOutlet weak var sub3in: UILabel!
    @IBOutlet weak var sub4in: UILabel!
    
    @IBOutlet weak var sub1sc: UILabel!
    @IBOutlet weak var sub2sc: UILabel!
    @IBOutlet weak var sub3sc: UILabel!
    @IBOutlet weak var sub4sc: UILabel!
    
    @IBOutlet weak var ttsc: UILabel!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ttl.text = TitleLabelString
        
        if(num == 0)
        {
            sub1.text = ScListData[0].name
            sub2.text = ScListData[1].name
            sub3.text = ScListData[2].name
            sub4.text = ScListData[3].name
            
            sub1in.text = ScListData[0].type
            sub2in.text = ScListData[1].type
            sub3in.text = ScListData[2].type
            sub4in.text = ScListData[3].type
            
            sub1sc.text = ScListData[0].myScore
            sub2sc.text = ScListData[1].myScore
            sub3sc.text = ScListData[2].myScore
            sub4sc.text = ScListData[3].myScore
            
            ttsc.text = "\((ScListData[0].scorechange() + ScListData[1].scorechange() + ScListData[2].scorechange() + ScListData[3].scorechange())/4)"
        }
        else
        {
            sub1.text = ScListData[4].name
            sub2.text = ScListData[5].name
            sub3.text = ScListData[6].name
            sub4.text = ScListData[7].name
            
            sub1in.text = ScListData[4].type
            sub2in.text = ScListData[5].type
            sub3in.text = ScListData[6].type
            sub4in.text = ScListData[7].type
            
            sub1sc.text = ScListData[4].myScore
            sub2sc.text = ScListData[5].myScore
            sub3sc.text = ScListData[6].myScore
            sub4sc.text = ScListData[7].myScore
            
            ttsc.text = "\((ScListData[4].scorechange() + ScListData[5].scorechange() + ScListData[6].scorechange() + ScListData[7].scorechange())/4)"
        }
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
}