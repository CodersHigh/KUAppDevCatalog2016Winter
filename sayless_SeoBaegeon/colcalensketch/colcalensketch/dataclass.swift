//
//  dataclass.swift
//  colcalensketch
//
//  Created by cscoi016 on 2016. 2. 16..
//  Copyright © 2016년 cscoi016. All rights reserved.
//

import Foundation

class Schedule
{
    var date:[String] = ["0","0","0"]
    var textfield:String = ""
    
    
    init(_ _date:[String],_ _textfield:String)
    {
        date = _date
        textfield = _textfield
    }
    func valueString() -> String {
        return "\(date[0]).\(date[1]).\(date[2]) " + " \(textfield)"
    }
}

class Homework : Schedule
{
    var subject:String = ""
    init(_ _date:[String],_ _textfield:String,_  _subject:String)
    {
        super.init(_date, _textfield)
        subject = _subject
    }
    override func valueString() -> String {
        return "\(date[0]).\(date[1]).\(date[2]) " + " \(subject)" + " \(textfield)"
    }
}

class Score
{
    var date:[String] = ["0","0"]
    var name:String = ""
    var type:String = ""
    var subjectScore:Int = 3
    var myScore:String = "A+"
    init(_ _date:[String],_ _name:String,_ _type:String,_ _subjectScore:Int,_ _myScore:String)
    {
        date = _date
        name = _name
        type = _type
        subjectScore = _subjectScore
        myScore = _myScore
    }
    
    func scorechange() -> Double
    {
        switch self.myScore
        {
            case "A+": return 4.5
            case "A": return 4.0
            case "B+": return 3.5
            case "B": return 3.0
            case "C+": return 2.5
            case "C": return 2.0
            case "D+": return 1.5
            case "D": return 1.0
            default: return 0.0
        }
    }
}

var subjectName:[String] = ["자료구조","이산수학","컴퓨터구조","컴퓨터시스템","컴퓨터그래픽스","논리설계","공학수학","계산이론","인공지능","기계학습","분산처리","인터렉티브콘텐츠입문","게임프로그래밍","졸업프로젝트"]
var subjectType:[String] = ["전필","전선","핵교","선교","기타"]