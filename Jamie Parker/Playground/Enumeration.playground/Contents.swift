//: Playground - noun: a place where people can play

import UIKit

class Employee {
    var name : String?
    var phoneNumber:String?
    var boss:Employee?
    
    //Designated Initializer
    init (name:String){
        self.name = name
    }
    
    convenience init (name:String, phone: String) {
        self.init(name:name)
        self.phoneNumber = phone
    }
}

struct Task {
    var title : String
    var time : Int?
    var owner: Employee
    var participnat : Employee?
    var type : TaskType
enum TaskType {
    case Call
    case Report
    case Meet
    case Support
    
    var typeTitle : String{
        get {
            let titleString : String
            switch self{
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
    }}

let me : Employee = Employee(name : "Alex", phone:"010-1234-5678")
var you : Employee = Employee(name : "Sammy")

class article
{
    var title : String?
    var content : String?
    var tag : String?
}
class Place
{
    var name : String?
    var latitude : Double?
    var longitude : Double?
}

class Museum : Place
{
    var fare : Double?
    var openHours : String?
}














