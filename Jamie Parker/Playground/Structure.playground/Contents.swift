//: Playground - noun: a place where people can play

import UIKit

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
}

struct Task{
    var title:String
    var time:Int?
    var owner : Employee
    var participant : Employee?
}

let me:Employee = Employee()
me.name = "Jamie Parker"
me.phoneNumber = "016-540-5844"

let Toby:Employee = Employee()
Toby.name = "Toby"
Toby.phoneNumber = "011-5678-1234"

var callTask = Task(title: "Call to Toby", time : 10*60, owner:me, participant: Toby)
var reportTask = Task(title: "report to Boss", time: nil, owner:me, participant: nil)

callTask.participant?.phoneNumber = "010-6510-5844"

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String?
}
let hd = Resolution(width: 1920, height: 1080)

// let은 변수의 포인터 주소값을 고정시키는 것이다.
/* 긴주석 */
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0



