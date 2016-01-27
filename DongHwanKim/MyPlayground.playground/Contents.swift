//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var greeting:String = "Hello";
var names = ["DongHwan", "Cheolsu", "Jammy"];

32+64
print("\(32+64)");
print("\(greeting) \(names)");

for name in names {
    print("\(greeting) \(name)");
}

let myName = "donghwan";  // 상수를 지정하는 키워드 let

// myName = "kdh"; 상수를 변경하였기 때문에 에러 발생

print("\(myName)");

let maxSpeed:Int = 110;
// maxSpeed += 10;

var currentSpeed = 110;
currentSpeed += 10;
//currentSpeed = 105.7;

var gpsSpeed:Double = 105.7;    // 변수아끼지마라

print("\(currentSpeed)");

let character = myName.characters;
let count = character.count;

let url = "www.naver.com";
let hasProtocol:Bool = url.hasPrefix("http://");


let intValue:Int = 64;
let nextValue = intValue.successor();
let priorValue = intValue.predecessor();

let phi = 3.14; // type inferring에 의해 double로 추리한다.
let divider:Double = 2
let phi2 = phi/divider;



let time1 = (9, 0, 48);
time1.0;

let time2:(h:Int, m:Int, s:Int) = (11, 51, 5);
time2.h;

let duration = (time1, time2);

let (start, end) = duration;
let endHour = end.h;


typealias Time = (h:Int, m:Int, s:Int);
typealias Duration = (start:Time, end:Time);

let today:Duration = ((9, 10, 23), (17, 8, 21));

print("\(today.end.h - today.start.h)");

// today는 시작(시, 분, 초)와 끝(시, 분, 초)로 구성된 튜플
print("\(today.1.0 - today.0.0)");


var groups:Array<Int> = [10, 3, 2];

var speedHistory:[Int] = [];
speedHistory += [currentSpeed];
let gpsSpeed0901 = 114.1;
speedHistory.append(Int(gpsSpeed0901));
speedHistory += [Int(gpsSpeed0901)];

speedHistory[0];
speedHistory.last;


var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":19, "Cezanne":20, "Matisse":30];
roomCapacity["Renoir"] = 40;
roomCapacity["Kahlo"];


let roomNames = Array<String>(roomCapacity.keys);
let capacities = Array<Int>(roomCapacity.values)

// 이제 얘네들을 알파벳 순서로 나열.


var sortedNames = roomNames.sort();


sortedNames;

    
















