//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//------------------------------------------------------------------------------------------------

/*

let myNumber = [101, 2, 509, 301, 322, 21, 69, 190, 874, 240]

var numberMax = 0

for tempNum in myNumber {
    if tempNum > numberMax {
        numberMax = tempNum
    }
}

print(myNumber)
print("위의 데이터 중 최대값은 \(numberMax) 입니다")

*/

//------------------------------------------------------------------------------------------------

/*

let myGrade = "A학점"

switch myGrade {
    case "A학점":
        let msgStr = "90점 이상이군요"
        print(msgStr)
    case "B학점":
        let msgStr = "80점 이상이군요"
        print(msgStr)
    case "C학점":
        let msgStr = "70점 이상이군요"
        print(msgStr)
    case "D학점":
        let msgStr = "60점 이상이군요"
        print(msgStr)
    default:
        let msgStr = "50점 이상이군요"
        print(msgStr)
}

*/

//------------------------------------------------------------------------------------------------

/*

let myGrade = "A학점"

switch myGrade {
    case "A학점", "B학점":
        let msgStr = "장학금 대상자입니다. 축하합니다."
        print(msgStr)
        break
    case "C학점", "D학점":
        let msgStr = "장학금 대상자가 아닙니다. 열심히 공부하세요"
        print(msgStr)
        break
    default:
        let msgStr = "더 이상 학교에 나오지 마세요."
        print(msgStr)
}

*/

//------------------------------------------------------------------------------------------------

/*

let myScore = 75

switch myScore {
case 85 ... 100:
    let msgStr = "A 학점입니다."
    print(msgStr)
    break
case 75 ... 84:
    let msgStr = "B 학점입니다."
    print(msgStr)
    break
case 60 ... 74:
    let msgStr = "C 학점입니다."
    print(msgStr)
    break
case 50 ... 59:
    let msgStr = "D 학점입니다."
    print(msgStr)
    break
default:
    let msgStr = "F 학점입니다."
    print(msgStr)
}

*/

//------------------------------------------------------------------------------------------------

/*

let myPoint = (1, 1)

switch myPoint {
case (0, 0):
    print("(0, 0)는 원점에 있다")
case (_, 0):
    print("(\(myPoint.0), 0)는 X축에 있다.")
case (0, _):
    print("(0, \(myPoint.1))는 Y 축에 있다.")
case (-2 ... 2, -2 ... 2):
    print("(\(myPoint.0), \(myPoint.1))는 사각형 안에 있다.")
default:
    print("(\(myPoint.0), \(myPoint.1))는 사각형 밖에 있다.")
}

*/

//------------------------------------------------------------------------------------------------

/*

let myPoint = (1, -1)

switch myPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

*/

//------------------------------------------------------------------------------------------------

/*

var i : Int

for i = 0; i < 30; i++ {
    print("책을 읽는다")
}

*/

//------------------------------------------------------------------------------------------------

var i : Int
var addTotal = 0

for i = 0; i <= 10; i++ {
    addTotal = addTotal + i
    print("현재의 \(i)를 더하면 \(addTotal)이 됩니다.")
}