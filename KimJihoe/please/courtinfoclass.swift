//
//  courtinfoclass.swift
//  please
//
//  Created by cscoi022 on 2016. 2. 22..
//  Copyright © 2016년 cscoi022. All rights reserved.
//

import Foundation
import MapKit

class courtinfo {
    var courtLocation : (Double,Double)? = (0,0)
    var courtRims : Int? = 0
    var courtType : courtFloor
    var courtName : String = ""
    
    enum courtFloor {
        case Urethane
        case Asphalt
        case Wood
        case Sand
        case Cement
        
        var typeTitle:String{
            get {
                let titleString:String
                switch self {
                case.Urethane:
                    titleString = "Urethane"
                case.Asphalt:
                    titleString = "Asphalt"
                case.Wood:
                    titleString = "Wood"
                case.Sand:
                    titleString = "Sand"
                case.Cement :
                    titleString = "Cement"
                }
                return titleString
            }
        }
    }
    init () {
        courtType = .Urethane
    }
}

