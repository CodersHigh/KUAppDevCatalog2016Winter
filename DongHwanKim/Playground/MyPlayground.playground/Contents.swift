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

var year:Int = 2100;

if((year%4 == 0 && year%100 != 0) || year%400 == 0){
    print("\(year)은 윤년입니다.");
} else {
    print("\(year)은 윤년이 아닙니다.");
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}

var title:String = "Storyboard prototyping"
var ratings:[Double]? = nil;
var supportURL:String? = nil;


// print("\(title) has \(rating.count) ratings. \r\n support web page : \(supportURL)");

supportURL = "www.codershigh.com";
var bookDesription:String = "\(title)";

if ratings != nil {
    bookDesription += "has \(ratings!.count) ratings";

}

if supportURL != nil {
    bookDesription += "\r\nsupport web page:\(supportURL)";

}

print("\(bookDesription)");


func ratingRecord(history:Array<Double>) -> (average:Double, min:Double, max:Double)? { // return 타입을 옵셔널로 지정해 nil이 들어갈 수도 있음을 암시
    
    if history.count == 0{
        return nil;
    }
    
    var sum = 0.0, min = history[0], max = history[0];
    
    for value in history {
        
        if min > value {
            min = value;
        }
        if max < value {
            max = value;
        }
        sum += value;
    }
    
    let average = sum / Double(history.count);
    
    return (average, min, max);
    
}


// ratings = [4.5, 3.0, 5.0, 2.5];
ratings = [];

bookDesription = "\(title)";

    
if let theRatings = ratings, record:(average:Double, min:Double, max:Double) = ratingRecord(theRatings) {   // if let을 동시에 줘서 if문을 덜 쓸 수 있다.
                                // , 는 앞에 있는 것을 하고 다음 것을 하라는 의미인 것 같다. &&로 대체하는 것은 불가능.
    
    bookDesription += " has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)";
    } else {
        bookDesription += " has no ratings yet";
}


print(bookDesription);


// 1. record의 타입을 명시하시오
// 2. ratings = []일 때의 문제해결 방식을 고민하시오.
// -> return type을 옵셔널로 지정한 후, 리턴값으로 넘겨받은 변수를 사용하는 시점에서 옵셔널
// 바인딩을 통해 처리해주면 된다.
_ = {

struct Task {
    var title:String//?;
    var time:Int?;
}

var callTask = Task(title: "Call to Randy", time: 10*60);
var reportTask = Task(title: "Report to Boss", time: nil);
// reportTask.title = "Report to Boss";

var todayTask:[Task] = [];
todayTask += [callTask, reportTask];

todayTask[1].time = 15*60;
callTask.title = "Call to Tom";

print("today task = \(todayTask) \r\n callTask = \(callTask) \r\n reportTask = \(reportTask)");

}

struct Resolution {
    var width = 0;
    var height = 0;
}

class VideoMode {
    var resolution = Resolution();
    var interlaced = false;
    var frameRate = 0.0;
    var name:String?;
}


enum Continent {
    case Asia;
    case Europe;
    case America;
    case Australia;
    case Africa;
    case Antractica;
}

class city {
    var name:String?;
    var image:String?;
    var place:String?;
}

class country {
    var name:String?;
    var cities:[city]?;
    var region:Continent?;
}

var seoul = city();

let Korea:country = country();


class Employee {
    var name:String?;
    var phoneNumber:String?;
    var boss:Employee?;
    
    init() {
        
    }
    
    init(selfName:String, selfphoneNumber:String) {
        name = selfName
        phoneNumber = selfphoneNumber;
    }
    
    func report() {
        if let myBoss = boss {
            print("\(self.name) reported to \(myBoss.name)");
        } else {
            print("\(name) don't have boss");
        }
    }
    
    func callTaskToBoss() -> Task? {
        if let myBoss = boss, callNumber = myBoss.phoneNumber {
            var callTask = Task(title: "Call", time: nil, owner: myBoss, participant: nil, type: .Call);
            return callTask;
        }
        return nil;
    }
}

func report(owner:Employee) {
    if let myBoss = owner.boss {
        print("\(owner.name) reported to \(myBoss.name)");
    } else {
        print("\(owner.name) don't have boss");
    }
}


struct Task{
    var title:String;
    var time:Int?
    
    var owner:Employee;
    var participant:Employee?
    
    var type:TaskType
    
    enum TaskType {
        case Call;
        case Report;
        case Meet;
        case Support;
        
        var typetitle:String {
            get {
                let titleString:String;
                switch self {
                case .Call :
                    titleString = "Call";
                    
                case .Meet :
                    titleString = "Meet";
                    
                case .Report :
                    titleString = "Report";
                    
                case .Support :
                    titleString = "Support";
                }
                return titleString;
            }
        }
    }
    
    
    
}

let me:Employee = Employee(selfName: "Cheolsu", selfphoneNumber: "12345");

let toby:Employee = Employee();

toby.name = "Toby";
toby.phoneNumber = "56781234";


var callTask = Task(title: "Call to Toby", time: 10*60, owner: me, participant: toby, type: .Call);

var reportTask = Task(title: "Report to Boss", time: nil, owner: me, participant: nil, type: Task.TaskType.Report);

callTask.participant?.phoneNumber;


func printIndexCharacter(Character:String) {
    
    for (index, value) in Array(Character.characters).enumerate() {
        print("[\(index), \(value)]")
    }
}

printIndexCharacter("MacPro");

func maxArray(numbers:[Int]) -> Int? {
    
    if numbers.count == 0 {
        return nil;
    }
    
    var max:Int = numbers[0];
    
    for num in numbers {
        if max < num{
            max = num;
        }
    }
    return max;
}

let arrayToMax = [43, 56, 12, 23, 87, 27, 98];


let maxNum = maxArray(arrayToMax);

/*
func makeAdder(x) {
    return function(y) {
        return x + y;
    };
};

var add5 = makeAdder(5);
var add10 = makeAdder(10);

add5(2) == 7

*/




func makeAdder(x:Int) -> (Int) -> Int {
    // x를 더하는 함수를 리턴
    let function:(Int) -> Int = {
        return $0 + x
    }
    return function;
    
}

/*
func makeAdder(x:Int) -> (Int) -> Int {
    // x를 더하는 함수를 리턴
    return  {
        return $0 + x;
    }
    
}
*/

var add5 = makeAdder(5);
add5(10);
var add10 = makeAdder(10);
add10(10)




class oneLineAddress {
    var url:String?;
    var title:String?
    var latestUpdatedTime:(h:Int, m:Int, s:Int)?;
    var pushNumber:Int?;
    var presentFilterNumber:Int?
    
    func updatebyPeriod() {
        
    }
    
    func searchFilterNumber() -> Int?{
        return nil;
    }
    
    
}



