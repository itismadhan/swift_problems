//: Playground - noun: a place where people can play

extension String {
    internal func sorted() -> String {
        let sortedList:Array = self.characters.sort()
        return String(sortedList)
    }
    
    func isAnagram(of str:String!) -> Bool! {
        if self.characters.count != str.characters.count {
            return false
        }
        
        if self.sorted() == str.sorted() {
            return true
        }
        
        return false
    }
    
    func isPalindrome() -> Bool {
        let mid = self.characters.count/2
        var i = 0
        var j = self.characters.count - 1
        
        while i <= mid && j > mid {
            if self[self.startIndex.advancedBy(i)] != self[self.startIndex.advancedBy(j)] {
                return false
            }
            
            i += 1
            j -= 1
        }
        
        return true
    }
}

"madam".isPalindrome()

let list = ["mad", "dam", "adm"]

func doesListContainAnagrams(list:Array<String>) -> Bool! {
    if list.count < 2 {
        return false
    }
    
    for (index, element) in list.enumerate() {
        if index - 1  >= 0 {
            if !element.isAnagram(of: list[index - 1]) {
                return false
            }
        }
    }
    
    return true
}

print(doesListContainAnagrams(list))
