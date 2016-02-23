//
//  scheduleViewControllars.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 17..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import UIKit

class scheduleViewControllars : UIViewController {
    
    
    @IBOutlet weak var calSegmented: UISegmentedControl!
    
    @IBOutlet weak var claimage: UIImageView!
    
    @IBAction func clasegchanged(sender: AnyObject) {
        if calSegmented .selectedSegmentIndex == 0
        {
            claimage.image = UIImage(named: "colcal")
        }
        else
        {
            claimage.image = UIImage(named: "timetable")
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "colcalmodal"?:
            let view = segue.destinationViewController as! scheduleModalViewControllars
            view.segmentedvalue = calSegmented.selectedSegmentIndex
        case "colcallist"?:
            let view = segue.destinationViewController as! ListController
            view.segmentedvalue = calSegmented.selectedSegmentIndex
        default :
            break
        }
    }
}