//: Playground - noun: a place where people can play

import UIKit

struct Task
{
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    
    enum TaskType
    {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String
            {
            get
            {
                let titleString:String
                switch self
                {
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                    
                }
                
                return titleString
            }
            
        }
        
    }
    
    init (type:TaskType, owner:Employee)
    {
        self.type = type
        self.title = type.typeTitle
        self.owner = owner
        self.time = nil
        self.participant = nil
        
    }
    
}

class Employee
{
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init (name:String)
    {
        self.name = name
    }
    convenience init (name:String, phone:String)
    {
        self.init(name:name)
        self.phoneNumber = phone
    }
    
    func report(owner:Employee)
    {
        if let myBoss = owner.boss
        {
            print("\(self.name) reported to \(myBoss.name)")
            
        }
        else
        {
            print("\(name) don't have boss")
        }
    }
    
    func callTaskToBoss() -> Task?
    {
        if let myBoss = boss, callTo = myBoss.phoneNumber
        {
            var callTask = Task(type: .Call, owner: self)
            return callTask
        }
        return nil
    }
}

var todayTask:[Task] = []

let me:Employee = Employee(name: "Alex", phone: "010-3423-3562")
let toby:Employee = Employee(name: "Toby")
toby.phoneNumber = "011-4895-8193"

var callTask = Task(type: .Call, owner: me)
callTask.time = 10*60
todayTask += [callTask]
var reportTask = Task(type: .Report, owner: me)
todayTask += [reportTask]

callTask
reportTask



me.boss = toby
me.report(me)


if let callTask = me.callTaskToBoss()
{
    todayTask += [callTask]
}

print(todayTask)


























































