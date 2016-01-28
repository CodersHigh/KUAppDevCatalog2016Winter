//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var ratings:[Double] = [3,4,5,8]

func ratingsCalculator (history:[Double]) ->(average:Double, min:Double, max:Double){
    var sum = 0.0, min = history[0], max = history[0]
    for value in history {
        if min > value {min = value}
        if max < value {max = value}
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

print(ratingsCalculator(ratings))

/* leapYear문제 실패 2016.1.28

var year = 2016

var year2: Int = year % 4

if year2 {
     print("\(year)은 윤년이 아닙니다.")

}

*/

/*var year2

if var year2 = year % 4 {
    print("\(year)은 윤년이 아닙니다.")

} /*else{
    if var year3: Int = year % 100{
        
    } else if var year4: Int = year % 400{
        print("\(year)는 윤년입니다.")
    } else {print("\(year)은 윤년입니다.")
    }
}


/*    if var year3: Int = year % 100 {
        if var year4: Int = year % 400{
            print("\(year)는 윤년입니다.")
        }
        else {
            print("\(year)은 윤년이 아닙니다.")
        }
    }
}
else {print("\(year)는 윤년이 아닙니다.")
    } 
*/*/*/


class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
}

struct Task {
    var title:String!
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
}
let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010"

let toby = Employee()
toby.name = "Toby"
toby.phoneNumber = "010010"

var callTask = Task(title:"call to Randy", time:10*60, owner: me, participant: toby)
var reportTask = Task(title: "Report to Boss", time: nil, owner: me, participant: nil)
var todayTask: [Task] = []
todayTask += [callTask, reportTask]

//callTask.participant?.phoneNumber = "01020020002"
//toby.phoneNumber = "01033333333"
//print("\(toby.phoneNumber)")

callTask.title = "call to Toby"
toby.phoneNumber = "456456"

print("\(todayTask)")
print("\(callTask)")











