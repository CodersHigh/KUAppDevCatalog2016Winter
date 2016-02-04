//: Playground - noun: a place where people can play

import UIKit

func makeAdder(x:Int) -> (Int)->Int
{
    func new(y:Int) -> Int
    {
        return (x+y)
    }
    
    return new
}

var add5 = makeAdder(5)

add5(2)