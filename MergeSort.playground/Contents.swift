//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func mergeSort(unsortedArray:NSArray) -> NSArray {
    if unsortedArray.count > 2 {
        return unsortedArray
    }
    
    var middle = unsortedArray.count/2
    var leftRange:NSRange = NSMakeRange(0, middle)
    var rightRange:NSRange = NSMakeRange(middle, unsortedArray.count)
    var leftArray:NSArray = unsortedArray.subarrayWithRange(leftRange)
    var rightArray:NSArray = unsortedArray.subarrayWithRange(rightRange)
    
    return mergeArray (mergeSort(leftArray), mergeSort(rightArray))
    
}


func mergeArray(leftArray:NSArray, rightArray:NSArray) -> NSArray {
    var result:NSMutableArray = NSMutableArray.new()
    var left = 0;
    var right = 0;
    
    while left < leftArray.count && right < rightArray.count {
        if leftArray[left] as! String < rightArray[right] as! String {
            result += leftArray[left];
        }
    }
    
    
    return result
}