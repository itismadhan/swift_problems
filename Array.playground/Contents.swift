//: Playground - noun: a place where people can play

import UIKit

extension Array {
    func distinctPairs(target:Int) -> Array<(Int, Int)> {
        var lookupDict:Dictionary<Int, Bool> = [:]
        var tupleArray:Array<(Int, Int)> = []
        
        for number in self {
            let number = number as! Int
            let hasValue = lookupDict[target - number] ?? false
            if hasValue {
                if number > target - number {
                    tupleArray.append((target-number, number))
                } else {
                    tupleArray.append((number, target-number))
                }
            } else  {
                lookupDict[number] = true
            }
        }
        
        return tupleArray
    }
}

let list = [1, 2, 5, 7, 6, 6]
list.distinctPairs(12)
