//
//  oneLineAddress.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 18..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import Foundation

typealias Time = (h:Int, m:Int)

@objc class OneLineAddress : NSObject, NSCoding{
    
    // user에게 input을 받아 초기화
    var url:String!
    var searchKeyword:String!
    var updatePeriod:Time!

    // http response로부터 값을 받아 초기화
    var titlePocket:Set<String> = []
    
    // update시 초기화
    var updatedNumber:Int?
    var presentFilteredKeywordNumber:Int?
    var userChecked:Bool = true
    
    var latestUpdatedTime:Time?
    
    init(url:String, searchKeyWord:String) {
        self.url = url
        self.searchKeyword = searchKeyWord
    }

    convenience init(url:String, searchKeyWord:String, updatePeriod:Time) {
        self.init(url: url, searchKeyWord: searchKeyWord)
        self.updatePeriod = updatePeriod
    }
    
    func instantUpdate(newPocket:Set<String>) {
        if self.userChecked {
            self.presentFilteredKeywordNumber = newPocket.count
            self.updatedNumber = newPocket.subtract(self.titlePocket).count
            self.titlePocket = self.titlePocket.union(newPocket)
            self.userChecked = false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
    }
}
