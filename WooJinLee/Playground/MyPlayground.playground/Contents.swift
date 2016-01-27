//: Playground - noun: a place where people can play

import UIKit
/*
let greeting:String = "Hello"
var name = "WooJin"
print("\(greeting)\(name)")
print("32+64 =\(32+64)")

var names = ["WooJin1", "Woojin2", "WooJin3"]
let myname = "WOOJIN"



for name in names{
    print("\(greeting)! \(name) from \(myname)")
}

let maxspeed:Int = 110

var currentspeed = 100
currentspeed += 10
//currentspeed = 105.7는 오류남. 왜? 처음에 Int로 currentspeed를 인식했는데 105.7은 double(Float)이니까.
//한 type 변수는 항상 그 type을 유지. 다른 type 넣을거면 변수 하나 그 타입으로 하나 더 만들어야.   

var gpsspeed:Double = 105.7
print("\(currentspeed)")

let pi = 3.14
let divider:Double = 2
let pi_2 = 3.14/divider

let time1 = ( 9, 0, 48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11,51,5)
time2.h

let duration = (time1, time2)
//let(start, end)=duration
//let endHour = end.h

//typealias Time = (h:Int,m:Int,s:Int)
//typealias Duration = (start:Time, end:Time)

let Time1:(h:Int, m:Int, s:Int) = (9 , 10 ,23)
let Time2:(h:Int, m:Int, s:Int) = (17, 8, 21)

let Duration = (Time1, Time2)
let (start, end) = Duration
print("We studied until \(end.h - start.h) hours today")


var meetingRooms:Array<String> = ["0","1","2","3","4","5"]
//array는 순서가 있음. 0,1,2번째... 로 부를수 있음
//반대로, Dictionary는 순서가 없음. 어쩌피 key와 value의 쌍이기 때문에 key로 부름.


var speedHistory:[Int] = []
speedHistory += [currentspeed]
let gpsSpeed0901 = 114.1
speedHistory += [Int(gpsSpeed0901)]

speedHistory[0]
speedHistory.last

let historyBackup = speedHistory
speedHistory += [150]
historyBackup
//array 는 reference type이 아니라 value타입임.



//dictionary는 array처럼 append할때 roomcapacity +=["renoir":40] 이런식으로 하지 못함.
//roomCapacity["Renoir"] = 40 이렇게 해야함

var bundang:[Int:String] = [0:"ori", 1:"migeum", 2:"jeongja", 3:"sunae", 4:"seohyun", 5:"imae", 6:"yatap"]
bundang[7]="PanGyo"



//여행 로그 프로그램

let dummy = [["대한민국"]]


var year:Int = 2016
*/
/*
if year % 4 == 0 {
    if year % 100 == 0 {
        if year % 400 == 0 {
            print ("\(year)는 윤년입니다.")
        } else {
                print ("\(year)는 평년입니다")
        }
    }else {
            print ("\(year)는 윤년입니다")
        }
}else {
    print ("\(year)는 평년입니다")
}
*/

var year:Int = 2016

if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0){
    print ("\(year)는 윤년입니다")
}else {
    print ("\(year)는 평년입니다")
}








