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
    
    //MARK: - Dictionary Logic :
    // Program to find get occurence of each element : easy way
    func getOccurences(arr: [Int]) -> [Int:Int] {
        var occurenceDict = [Int:Int]()
        for a in arr {
            if let idx = occurenceDict.index(forKey: a) {
                print("index is \(idx)")
                let value = (occurenceDict[idx]).value
                occurenceDict.updateValue(value + 1, forKey: a)
            } else {
                occurenceDict.updateValue(1, forKey: a)
            }
            
        }
        return occurenceDict
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

print("dictionary value : \(DSAlgorithms.default.getOccurences(arr: [1,1,2,3,4,5,12,3,4,3,1,2,3]))")



var str = "Hello, playground"


func calculateSum(arr:[Int],result: ((Int) -> Void)?) {
    result?(arr.reduce(0) { $0 + $1 } )
}



calculateSum(arr: [1,2,3,4]) { (result) in
    print("sum of numbers is \(result)")
}



let driving = { (place:String) in
    print("driving in \(place)")
}


driving("london")


func whoIsDriving(name: String,driving: ((String) -> (Void))? ) {
    
    driving?("\(name) is driving")
}


whoIsDriving(name: "Pawan") { (str) -> (Void) in
    print(str, separator: " ", terminator: "")
}


let calculateMaturity = { (age: Int) -> String in
    
    if age >= 18 {
        return "Mature"
    } else {
        return "Minor"
    }
    
}



let running = {
    print("I am running")
}


func activity(action: () -> Void) {
    print("\n I am freshen up")
    print("I got ready")
    action()
}

print(activity(action: running))


let driveSafely = {  () -> String in
    return "I'm being a considerate driver"
}
func drive(using driving: () -> String) {
    print("Let's get in the car")
    driving()
    print("We're there!")
}
drive(using: driveSafely)
