//
//  oneLineAddress.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 18..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import UIKit

typealias Time = (h:Int, m:Int)

@objc class OneLineAddress : NSObject, NSCoding{
    
    // user에게 input을 받아 초기화
    var url:String!
    var searchKeyword:String!

    // http response로부터 값을 받아 초기화
    var titlePocket:Set<Pocket> = []
    
    // update시 초기화
    var updatedNumber:Int = 0
    var presentFilteredKeywordNumber:Int?
    var userChecked:Bool = true
    
    var latestUpdatedTime:String?
    
    init(url:String, searchKeyWord:String) {
        self.url = url
        self.searchKeyword = searchKeyWord
    }


    
    func instantUpdate(newPocket:Set<Pocket>) {
        if self.userChecked {
            self.presentFilteredKeywordNumber = newPocket.count
            self.updatedNumber = newPocket.subtract(self.titlePocket).count
            self.titlePocket = self.titlePocket.union(newPocket)
            self.userChecked = false
        }
        
        if self.updatedNumber != 0 {
            let notification = UILocalNotification()
            notification.alertBody = "\(self.searchKeyword) has new \(self.updatedNumber) items updated"
            notification.alertAction = "open"
            notification.soundName = UILocalNotificationDefaultSoundName
            notification.userInfo = ["Keyword": self.searchKeyword, ]
            UIApplication.sharedApplication().scheduleLocalNotification(notification)
            
            let now = NSDate()
            let dateFormatter = NSDateFormatter()
            dateFormatter.locale = NSLocale(localeIdentifier: "ko_KR")
            dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
            self.latestUpdatedTime = dateFormatter.stringFromDate(now)
            
            
            // print(dateFormatter.stringFromDate(now))
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
    }
}
