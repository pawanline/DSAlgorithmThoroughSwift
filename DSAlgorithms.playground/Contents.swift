import UIKit


class DSAlgorithms {

    
    private let created = Date()
    
    
    
    func executionDuration() {
        let diff = Date().timeIntervalSince(created)
        print("alogrithm takes \(diff) seconds")
    }
    
    
    func executionStart() {
        print("created at: \(created)")
    }
    
   
    
    //default
    public static let `default` = DSAlgorithms()

    
    
    //1:  Count the characters
  
    // brute force methods
    func countTheCharacter(_ str: String,letter: Character) -> Int {
        var letterCount: Int = 0
        for chr in str {
            if chr == letter {
                letterCount += 1
            }
        }
        
        return letterCount
    }
    
    
    // Using reduce methods
    
    func countTheCharacterUsingReduce(_ str: String,letter: Character) -> Int {
        return str.reduce(0){
            $1 == letter ? $0 + 1 : $0
        }
        
    }

    
    
    
    private init () {
        
    }
 
}



DSAlgorithms.default.executionStart()

// Count the characters using reduce methods
DSAlgorithms.default.countTheCharacter("India is great country", letter: "a")

DSAlgorithms.default.executionDuration()

DSAlgorithms.default.executionStart()

DSAlgorithms.default.countTheCharacterUsingReduce("India is great country", letter: "a")

DSAlgorithms.default.executionDuration()
