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

    convenience init(url:String, searchKeyword:String, titlePocket:Set<Pocket>, updatedNumber:Int, userChecked:Bool) {
        self.init(url: url, searchKeyWord: searchKeyword)
        self.titlePocket = titlePocket
        self.updatedNumber = updatedNumber
        self.userChecked = userChecked
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
    
    // MARK : Properties
    // MARK : Types
    
    struct PropertyKey {
        static let urlKey = "url"
        static let searchKeywordKey = "searchKeyword"
        static let titlePocketKey = "titlePocket"
        static let updatedNumberKey = "updatedNumber"
        static let presentFilteredKeywordNumberKey = "presentFilteredKeywordNumber"
        static let userCheckedKey = "userChecked"

    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(url, forKey: PropertyKey.urlKey)
        aCoder.encodeObject(searchKeyword, forKey: PropertyKey.searchKeywordKey)
        aCoder.encodeObject(titlePocket, forKey: PropertyKey.titlePocketKey)
        aCoder.encodeInteger(updatedNumber, forKey: PropertyKey.updatedNumberKey)
        aCoder.encodeObject(userChecked, forKey: PropertyKey.userCheckedKey)
        
    }
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        let url = aDecoder.decodeObjectForKey(PropertyKey.urlKey) as! String
        let searchKeyword = aDecoder.decodeObjectForKey(PropertyKey.searchKeywordKey) as! String
        let titlePocket = aDecoder.decodeObjectForKey(PropertyKey.titlePocketKey) as! Set<Pocket>
        let updatedNumber = aDecoder.decodeIntegerForKey(PropertyKey.updatedNumberKey) as! Int
        let userChecked = aDecoder.decodeObjectForKey(PropertyKey.userCheckedKey) as! Bool
        self.init(url:url, searchKeyword:searchKeyword, titlePocket:titlePocket, updatedNumber:updatedNumber, userChecked:userChecked)
        
    }
    
    // MARK: Archiving Paths
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("addresslist")
    
  
}
