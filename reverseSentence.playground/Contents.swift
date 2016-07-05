//: Playground - noun: a place where people can play

import UIKit

var str = "Hello playground what the hell is going"


func reverseSentence(str:String) -> String? {
    if str.characters.count < 2 {
        return nil
    }
    
    let strList = str.componentsSeparatedByString(" ").reverse()
    return strList.joinWithSeparator(" ")
}

reverseSentence(str)
