//
//  userinfoclass.swift
//  please
//
//  Created by cscoi022 on 2016. 2. 18..
//  Copyright © 2016년 cscoi022. All rights reserved.
//

import Foundation

class userInfo{
    var userName:String? = nil
    var userPosition:positiontype
    enum positiontype {
        case Forwad
        case Center
        case Guard
        var typetitle:String {
            get {
                let titleString:String
                switch self {
                case .Center:
                    titleString = "Center"
                case .Forwad:
                    titleString = "Forward"
                case .Guard:
                    titleString = "Gurad"
                    
                }
                return titleString
            }
        }
    }
    init (){
        userName = "name"
        userPosition = .Forwad
    }
    
}
