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
}
