//
//  File.swift
//  musicsheetmanager
//
//  Created by cscoi021 on 2016. 2. 23..
//  Copyright © 2016년 cscoi021. All rights reserved.
//

import UIKit

class MetViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    @IBOutlet weak var pickerValue: UIPickerView!
    var arr:NSArray = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arr = [1]
        
        
        
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 150
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row+50)"
        
    }
    
    func pickerView(pickerView: UIPickerView,
        didSelectRow row: Int,
        inComponent component: Int)
    {
        
        
    }
    
    @IBAction func `return`(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    
    
    
    
}
