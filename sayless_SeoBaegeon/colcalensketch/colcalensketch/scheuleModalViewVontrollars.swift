//
//  scheuleModalViewVontrollars.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 18..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import UIKit

class scheduleModalViewControllars : scheduleViewControllars,UIPickerViewDelegate, UIPickerViewDataSource
{
    @IBOutlet weak var ModalTitle: UILabel!
    
    var segmentedvalue: Int?
    
    @IBOutlet weak var subjectTitle: UILabel!
    @IBOutlet weak var subjectpicker: UIPickerView!
    
    var pickerData:[String] = [String]()
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.subjectpicker.delegate = self
        self.subjectpicker.dataSource = self
        
        pickerData = subjectName
        
        if(segmentedvalue == 0)
        {
            ModalTitle.text = "일 정"
            subjectTitle.text = ""
            pickerData = []
        }
        else
        {
            ModalTitle.text = "과 제"
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
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}