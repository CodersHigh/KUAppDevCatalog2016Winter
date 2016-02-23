//
//  ListModalController.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 18..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import UIKit

class ListModalController : UIViewController
{
    
    @IBOutlet weak var TitleDate: UILabel!
    @IBOutlet weak var Subject: UILabel!
    @IBOutlet weak var DataText: UITextView!
    
    
    var Datefield:[String] = []
    var subjectfield:String = ""
    var Textfiled:String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        TitleDate.text = "\(Datefield[0]).\(Datefield[1]).\(Datefield[2])"
        Subject.text = subjectfield
        DataText.text = Textfiled
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