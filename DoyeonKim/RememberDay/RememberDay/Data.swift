//
//  Data.swift
//  RememberDay
//
//  Created by DOKEN on 2016. 2. 16..
//  Copyright © 2016년 DOKEN. All rights reserved.
//

import Foundation


/*  Data Model -> Class, Enum, Struct
    Dummy Data의 Array                   */

struct oneDay {
    var year:Int
    var month:Int
    var date:Int
    
    var content:String?
    var image:String?
    var imageText:String?
    
    init(_ y:Int, _ m:Int,_ d:Int, _ con:String?, _ img:String?, _ imgT:String?){
        
        year = y
        month = m
        date = d
        
        content = con
        image = img
        imageText = imgT
    }
}

class Month {
    var year:Int = 0
    var month:Int = 0
    var date:[oneDay]?
}

var newData = oneDay(2016,2,16,"hello world","img.img",nil)

var daysData:Array<Month> = []



