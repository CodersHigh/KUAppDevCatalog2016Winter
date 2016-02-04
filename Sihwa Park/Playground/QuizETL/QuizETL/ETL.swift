//
//  ETL.swift
//  QuizETL
//
//  Created by cscoi011 on 2016. 2. 3..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import Foundation

class ETL
{
    func transform(oldDictionary:Dictionary<Int,
        Array<String>>) -> Dictionary<String, Int>
    {
        var returnDictionary :Dictionary<String, Int> = [:]
        
        for (value, keys) in oldDictionary
        {
            for key in keys
            {
                returnDictionary[key.lowercaseString] = value
            }
        }
        return returnDictionary
    }
}