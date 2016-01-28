//: Playground - noun: a place where people can play

import UIKit

// var str = "Hello, playground"
print ("\(66+11)")
var greeting = "Hello"
var name = "a"
print ("\(greeting) \(name)")

// let (상수) 프로그램을 죽일 일 거의 없음. 값이 달라지지 않는 안전한 수.  var (변수)  compile error 컴파일러가 이해 못해서 컴퓨터한테 전달 못-앱이 만들어지기도 전의 상황, runtime error 소비자 선에 이미 넘어갔을 때 앱이 에러 ===>>>가능한 한 let을 쓰도록 해야 한다. 현대의 언어의 지향점은 런타임 에러를 가능한ㄴ 한 발생하지 않도록 막는 것. <<<<let 죠은거어>>>>>>
// type- 스타일. 문자타입 숫자타입...모든 변수는 타입을 가지고 있다. 타입이 생략되는 경우 많음.  ex. let greeting: String ="hello" , let maxapeed:Int = 110 ==타입추론(type inferring) 타입을 섞어 쓸 수가 없음. 변수를 차라라리 하나 더 만들라 에러 안 나려면.....
// int. float. double. 
// uint == 양의 정수    용량 마이너스 정수 잡아먹지 않게. 그 공간을 차라리 양의 정수에 주라고
let gpsspeed=15220.123
print ("\(gpsspeed)")

// 프라퍼티

let pi = 3.14
//let halfpi = 3.14/2 
//% == ?
let divider:Double=2
let pi_2=3.14/divider

let time1 = (9,0,48)
time1.0

let mytuple1 = (0,7,2,3)
mytuple1.1

let time2:(h:Int,m:Int,s:Int)=(11,50,48)
time2.h
let duration = (time1, time2)
let (start,end) = duration
let endHour = end.h

let today = ((9,10,23),(17,8,21))
print ("we studied \(today.1.0 - today.0.0) hours today.")

/*ㅇ히;ㅎ';ㄷ
ㄹ힝,ㅎㄷㅎㅎ*/


//이렇게 하면 되긴 하는데... 나만 알아보기 쉬움. 
//today는 (시작(시,분,초), 종료(시,분,초))로 구성된 튜플  이라고 써줘야~

let currentspeed = 120
var sphistory: [Int] = []
sphistory += [currentspeed]
let gpsspeed0000 = 114.2136451
sphistory += [Int(gpsspeed0000)]






