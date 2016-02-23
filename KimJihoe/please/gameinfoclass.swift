//
//  gameinfoclass.swift
//  please
//
//  Created by cscoi022 on 2016. 2. 22..
//  Copyright © 2016년 cscoi022. All rights reserved.
//

import Foundation


let format = NSDateFormatter()
var today = format.stringFromDate(NSDate())

class gameInfo{
    var gameTitle : String?
    var playerNumbers:Int = 1
    var courtGame:courtinfo = courtinfo()
    var gameTime:NSDateFormatter?
    
}

