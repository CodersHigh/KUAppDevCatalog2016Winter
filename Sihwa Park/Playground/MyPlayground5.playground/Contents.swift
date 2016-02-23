//: Playground - noun: a place where people can play

import UIKit

//struct Stack {
//    var stackArray:[String] = []
//    
//    mutating func push(element:String) {
//        stackArray.append(element)
//    }
//    
//    mutating func pop() ->String {
//        return stackArray.removeLast()
//    }
//    
//    var topItem:(String?) {
//        return stackArray.last!
//    }
//}
//
//var newStack = Stack()
//newStack.push("HistoryListController")
//newStack.push("HistoryDetailViewController")
//newStack.push("HistoryTimelineViewController")
//newStack.push("HistoryChartViewController")
//
//if let topVC = newStack.topItem {
//    print("Top View Controller is \(topVC)")
//}



//struct Engine {
//    let fuel:String
//    var valve:Int
//}
//class Vehicle {
//    let engine:Engine
//    var capacity = 0
//    init(engine:Engine){
//        self.engine = engine
//    }
//}
//let v8 = Engine(fuel:"Gasoline", valve:8)
//var v4 = v8
//v4.valve = 4
//let sportsCar = Vehicle(engine:v8)
//sportsCar.capacity = 2
//let suv = Vehicle(engine:v8)
//suv.capacity = 5
//
//print("SportsCar has \(sportsCar.capacity) seats and SUV has \(suv.capacity) seats")


//func maxArray (numbers:[Int]) -> Int {
//    
//    
//    var max:Int = numbers[0]
//    
//    for(var i=1; i<numbers.count; ++i)
//    {
//        if max < numbers[i]
//        {
//            max = numbers[i]
//        }
//    }
//    
//    return max
//    
//}
//
//let arrayToMax = [55, 47, 98, 11, 0, 5]
//let maxNum = maxArray(arrayToMax)




//struct Queue {
//    var queueArray:[String] = []
//    mutating func enqueue (element:String) {
//        
//        queueArray.append(element)
//        
//    }
//    mutating func dequeue() -> String {
//        
//        let returnValue = queueArray.removeFirst()
//        return returnValue
//    }
//}
//
//    var newQueue = Queue()
//    newQueue.enqueue("Leonard")
//    newQueue.enqueue("Sheldon")
//    
//    newQueue.enqueue("Penny")
//    newQueue.enqueue("Howard")
//    newQueue.enqueue("Rajesh")
//    let firstOne = newQueue.dequeue()


class Anagram {
    
    let word:String
    
    
    init(word:String)
    {
        self.word = word
    }
    
    func match(test:Array<String>) -> Array<String>
    {
        let input_array = word.characters
        var return_array:Array<String> = []
        
        for(var i=0; i<test.count; ++i)
        {
            var ok = 0
            
            
            let test_array = test[i].characters
            
            var input_array2 = input_array
            var test_array2 = test_array
            
            if(test_array.count == input_array.count)
            {
                ++ok
            }
            
            for(var j=0; j<input_array.count; ++j)
            {
                let k = input_array2.removeFirst()
                for(var m=0; m<test_array.count; ++m)
                {
                    if(test_array2.contains(k))
                    {
                        ++ok
                        test_array2.removeFirst(m)
                    }
                }
                
            }
            
            
            
            if(ok==(1+test_array.count))
            {
                return_array.append(test[i])
            }
            
        }
        
        return return_array
        
    }
}


let anagram = Anagram(word: "corn")
let results = anagram.match(["corn", "dark", "Corn", "rank", "CORN", "cron", "park"])




















import Foundation

class Anagram {
    
    let word:String
    
    
    init(word:String)
    {
        self.word = word
    }
    
    func match(test:Array<String>) -> Array<String>
    {
        let input_array = word.characters
        var return_array:Array<String> = []
        
        for(var i=0; i<test.count; ++i)
        {
            var ok = 0
            var input_array2 = input_array
            
            let test_array = test[i].characters
            if(test_array.count == input_array.count)
            {
                ++ok
            }
            
            for(var j=0; j<input_array.count; ++j)
            {
                if(test_array.contains(input_array2.removeFirst()))
                {
                    ++ok
                }
            }
            
            
            
            if(ok==(1+test_array.count))
            {
                return_array.append(test[i])
            }
            
        }
        
        return return_array
        
    }
}










