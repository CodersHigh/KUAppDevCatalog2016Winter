//
//  Pocket.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 23..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import Foundation

class Pocket:Hashable {
    
    var title:String
    var url:String
    
    var hashValue: Int {
      return self.title.hashValue
    }
    
    init(title:String, url:String) {
        self.title = title
        self.url = url
    }
  }

func == (left:Pocket, right:Pocket) -> Bool {
    return left.title == right.title
}
