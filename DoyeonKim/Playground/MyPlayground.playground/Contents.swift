
//Tuple

let time1 = (9,0,48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h

let duration = (time1, time2)

let (start, end) = duration

let endHour = end.h

//typealias Time = (h:Int, m:Int, s:Int)
//typealias Duration = (start:Time, end:Time)

let today = ((9,10,23),(17,8,21))

//Juseok Juseok Juseok

print("We studied until \(today.1.0 - today.0.0) hours today")

//print("We studied until \(today.end.h - today.start.h) hours today")

/* ------------------------------------------------------------ */

var meetingRooms : Array<String> = ["Banksy", "Rivera", "Kahlo"]

var groups:[Int] = [10,8,14,9]

meetingRooms += ["Renoir"]
meetingRooms.append("Hi")

let currentSpeed = 120

var speedHistory:[Int] = []

speedHistory += [currentSpeed]
speedHistory += [currentSpeed]
speedHistory += [130]

speedHistory.first

var RoomCapacity:[String:Int] = [ "A" : 4, "B" : 5]

var Day : (m:Int, d:Int)

//leap year

var year:Int = 1300

if year % 4 == 0 {
    if year % 100 != 0 {
        print("\(year)년은 윤년")
    }
    else{
        if year % 400 == 0{
            print("\(year)년은 윤년")
        }
        else{
            print("\(year)년은 윤년 아님")
        }
    }
}
    
else{
    print("아님")
}



//RememberDay

