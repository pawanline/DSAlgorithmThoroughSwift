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

    
    
   
    // left shifting
    func leftShifting( arr: inout [Int],movement: Int) {
        print("initial array is \(arr)")
        for i in 0..<movement {
            print("i is \(i)")
             print("arr is \(arr[i])")
            print("last element is \(arr[arr.count - i - 1])")
            let temp = arr[i]
            arr[i] = arr[arr.count - i - 1]
            arr[arr.count - i - 1] = temp
            
            print("array after first sorting \(arr)")
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
 var arr = [1,2,3,4,5,6]

print(DSAlgorithms.default.leftShifting(arr: &arr, movement: 3))


print(" left shifting \(arr)")
