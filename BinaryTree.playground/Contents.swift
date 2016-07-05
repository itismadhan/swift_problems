//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class TreeNode {
    var val:    Int?
    var left:   TreeNode?
    var right:  TreeNode?
 
    init(val aVal: Int?, left aLeft: TreeNode? = nil, right aRight: TreeNode? = nil) {
        val     = aVal
        left    = aLeft
        right   = aRight
    }
    
    func printTree() {
        
    }
}


func invertTree(root: TreeNode?) -> TreeNode? {
    if root != nil {
        (root!.right, root!.left) = (invertTree(root!.left), invertTree(root!.right))
    }
    return root
}

let queue = NSOperationQueue

let tree = TreeNode(val: 5)
tree.left = TreeNode(val: 2)
tree.right = TreeNode(val: 7)

let tree2 = invertTree(tree)
print(tree2?.left?.val)
print(tree2?.right?.val)