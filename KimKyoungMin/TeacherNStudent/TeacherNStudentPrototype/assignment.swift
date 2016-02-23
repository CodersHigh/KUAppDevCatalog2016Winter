//
//  codeData.swift
//  TeacherNStudentPrototype
//
//  Created by cscoi007 on 2016. 2. 17..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import Foundation

struct assignment {
    var title:String?
    var score:String?
    var start:NSDateFormatter?
    var end:NSDateFormatter?
    
    init(_title:String?){
        title = _title
    }
}

struct qna {
    var title:String?
    var time:NSDateFormatter?
}

struct code {
    var codeNum = ""
       init (_code:String){
        codeNum = _code
    }
}