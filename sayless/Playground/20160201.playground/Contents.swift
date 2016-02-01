//: Playground - noun: a place where people can play

import UIKit


///////구조체


_={
    
    struct Task {
        var title:String//?
        var time:Int?
    }
    
    var callTask = Task(title: "Call to Randy", time: 10*60)
    //var reportTask = Task()
    var reportTask = Task(title:"Report to Boss", time: nil)
    
    var todayTask:[Task] = []
    todayTask += [callTask, reportTask]
    todayTask[1].time = 15*60
    
    callTask.title = "Call to Toby"
    print("today task = \(todayTask) \r\n callTask = \(callTask)")
    
}



////class

_={
    
    class Employee {
        var name:String?
        var phoneNumber:String?
        var boss:Employee?
    }
    
    struct Task {
        var title:String
        var time:Int?
        
        var owner:Employee
        var participant:Employee?
    }
    
    let me:Employee = Employee()
    me.name = "Alex"
    me.phoneNumber = "010-1234-5678"
    
    let toby:Employee = Employee()
    toby.name = "Toby"
    toby.phoneNumber = "011-5678-1234"
    toby.boss = me
    
    var callTask = Task(title: "Call to Toby", time: 10*60, owner:me, participant:toby)
    var reportTask = Task(title:"Report to Boss", time: nil, owner:me, participant:nil)
    callTask.participant?.phoneNumber = "010-5678-1234"
    
    var todayTask:[Task] = []
    todayTask += [callTask, reportTask]
    todayTask[1].time = 15*60
    todayTask[0].participant?.phoneNumber = "010-5678-1234"
    
    print("toby's phoneNumber is \(toby.phoneNumber!)\r\nreport")
}




////