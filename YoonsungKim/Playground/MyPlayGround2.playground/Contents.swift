//: Playground - noun: a place where people can play

import UIKit



/*                  Structure & Class & Enumeration & Initialize

    Structure : value type, var로 선언해야 내용 바꿀 수 있음
    Class : reference type, let으로 선언해도 내용 바꿀 수 있음
*/


struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String {
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case.Report:
                    titleString = "Report"
                case.Meet:
                    titleString = "Meet"
                case.Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
    
    init (type:TaskType, owner:Employee) {
        self.type = type
        self.title = type.typeTitle
        self.owner = owner
        self.time = nil
        self.participant = nil
    }
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init (name:String) {
        self.name = name
    }
    
    convenience init (name:String, phone:String) {
        self.init(name:name)
        self.phoneNumber = phone
    }
    
    func report() {
        if let myBoss = boss {
            print("\(self.name) reported to \(myBoss.name)")
        } else {
            print("\(name) don't have boss")
        }
    }
    
    func callTaskToBoss() -> Task? {
        if let myBoss = boss, callTo = myBoss.phoneNumber {
            var callTask = Task(type: .Call, owner: self)
            return callTask
        }
        return nil
    }
}

var todayTask:[Task] = []

let me:Employee = Employee(name: "Alex", phone: "010-1234-5678")
//me.phoneNumber = "010-1234-5678"

let toby = Employee(name: "Toby")
toby.phoneNumber = "010-1111-2222"

me.boss = toby
me.report()

print("\(toby.phoneNumber)")

//var callTask = Task(title: "Call to Toby", time: 10*60, owner: me, participant : toby, type:.Call)

//var callTask = Task(type: .Call, owner: me)
var reportTask = Task(type: .Report, owner: me)
todayTask += [reportTask]
//var reportTask = Task(title : "Report to Boss", time: nil, owner:me, participant : nil, type:Task.TaskType.Report)

//callTask.participant?.phoneNumber = "011-1111-1111"
//print("\(toby.phoneNumber)")

if let callTask = me.callTaskToBoss() {
    todayTask += [callTask]
}


//var todayTask:[Task] = []
//todayTask += [callTask, reportTask]
//todayTask[1].time = 15*60
//
//callTask.title = "Call to Toby"
//
//print("today task = \(todayTask), calltask = \(callTask)")
