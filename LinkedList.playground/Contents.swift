//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class LinkedListNode {
    var next:LinkedListNode?
    var value:Int?
    
    init(value:Int?) {
        self.value = value
    }
    
    static func printNodes(root:LinkedListNode!) {
        var node = root
        var nodeList:Array<Int> = []
        while node != nil {
            nodeList.append(node.value!)
            node = node.next
        }
        
        print(nodeList)
    }
    
    func reverse() -> LinkedListNode {
        var current:LinkedListNode? = self
        var prev:LinkedListNode? = nil
        var next:LinkedListNode?
        
        while (current != nil) {
            next  = current!.next
            current!.next = prev
            prev = current
            current = next
        }
        
        current = prev
        
        return current!
    }
}

let root = LinkedListNode(value: 1)
root.next = LinkedListNode(value: 2)
root.next!.next = LinkedListNode(value: 3)

LinkedListNode.printNodes(root.reverse())