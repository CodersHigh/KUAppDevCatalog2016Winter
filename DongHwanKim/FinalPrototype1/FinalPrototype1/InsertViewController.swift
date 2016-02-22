//
//  InsertViewController.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 20..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import UIKit

/*
typealias time = (h:Int, m:Int)
var inputUrl:String?
var inputKeyword:String?
var inputPeriod:time?
*/

class InsertViewController:UITableViewController {
    
    var delegate: InsertViewControllerDelegate?

    
    @IBOutlet weak var inputUrl: UITextField!
    @IBOutlet weak var inputKeyword: UITextField!
    @IBOutlet weak var hour: UITextField!
    @IBOutlet weak var minute: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }

    @IBAction func cancel(sender: AnyObject) {
        // hide keyboard
        self.inputUrl.resignFirstResponder()
        self.inputKeyword.resignFirstResponder()
        self.hour.resignFirstResponder()
        self.minute.resignFirstResponder()
        
        // notify delegate of cancellation
        self.delegate!.InsertViewControllerDidCancel(self)
    }
    
    @IBAction func done(sender: AnyObject) {
        // hide keyboard
        self.inputUrl.resignFirstResponder()
        self.inputKeyword.resignFirstResponder()
        self.hour.resignFirstResponder()
        self.minute.resignFirstResponder()
        
        guard let url = inputUrl.text, searchKeyword = inputKeyword.text
        //, stringHour = hour.text, stringMinute = minute.text, hour = Int(stringHour), minute = Int(stringMinute)
            else {
                return
        }
        let newAddress = OneLineAddress(url: url, searchKeyWord: searchKeyword)//, updatePeriod: (hour, minute))
        
        // notify delegate of finish
        self.delegate!.InsertViewControllerDidFinish(self, data: newAddress)
    
        }
    
}