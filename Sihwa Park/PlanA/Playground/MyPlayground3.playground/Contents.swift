//: Playground - noun: a place where people can play

import UIKit

class ETL
{
    func transform(/*old:Dictionary<Int, [String]>*/) -> Dictionary<String, Int>
    {
        let old = [ 1 : [ "A", "E" ], 2: ["D", "G"] ]
        
        print(old.keys)
        
        return ["a" : 1, "e" : 1]
    }
}

let old = [1:["A", "E"], 2:["D", "G"]]
let old_keys = Array(old.keys)
let old_values = Array(old.values)
var expected:Dictionary<String, Int>

for(var i=0; i<old_keys.count; ++i)
{
    for(var j=0; j<old_values[i].count; ++j)
    {
        expected[old_values[i][j]] = old_keys[i]
        
    }
}
