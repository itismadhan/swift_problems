//: Playground - noun: a place where people can play

import UIKit

// Takes any collection of T and returns an array of permutations
func permute<C: CollectionType>(items: C) -> [[C.Generator.Element]] {
    var scratch = Array(items) // This is a scratch space for Heap's algorithm
    var result: [[C.Generator.Element]] = [] // This will accumulate our result
    
    // Heap's algorithm
    func heap(n: Int) {
        if n == 1 {
            result.append(scratch)
            return
        }
        
        for i in 0..<n-1 {
            heap(n-1)
            let j = (n%2 == 1) ? 0 : i
            swap(&scratch[j], &scratch[n-1])
        }
        heap(n-1)
    }
    
    // Let's get started
    heap(scratch.count)
    
    // And return the result we built up
    return result
}

// We could make an overload for permute() that handles strings if we wanted
// But it's often good to be very explicit with strings, and make it clear
// that we're permuting Characters rather than something else.

//let string = "ABCD"
//let perms = permute(string.characters) // Get the character permutations
//let permStrings = perms.map(String.init) // Turn them back into strings
//print(permStrings) // output if you like

let combinationsArray: [String] = ["A", "B", "C"]
func printCombinations()
{
    var totalCombinations = 0
    var str: String = ""
    for letter in combinationsArray {
        for nextLetter in combinationsArray {
            for nextNextLetter in combinationsArray {
                totalCombinations += 1
                str += (letter + nextLetter + nextNextLetter + "\n")
            }
        }
    }
    
   print(str)
}


printCombinations()