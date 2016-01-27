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

