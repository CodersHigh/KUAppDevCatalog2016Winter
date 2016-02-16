//: Playground - noun: a place where people can play

import UIKit

var year:Int = 2016

if (year%4) == 0
{
    if (year%100) == 0
    {
        if (year%400) == 0
        {
            print("\(year)는 윤년입니다.")
        }
        else
        {
            print("\(year)는 윤년이 아닙니다.")
        }
    }
    else
    {
        print("\(year)는 윤년입니다.")
    }
}
else
{
    print("\(year)는 윤년이 아닙니다.")
}