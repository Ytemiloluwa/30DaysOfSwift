import Foundation

/* TIME COMPLEXITY */

// Constant time
func createFirst(names: [String]) {

    if let first = names.first {

        print(first)
    }else {

        print("no names")
    }
}

//createFirst(names: ["Sola", "Yemi", "Bola"])

// Linear time

func printNames(names: [String]) {
  for name in names {
    print(name)
  }
}
//printNames(names: ["Sola", "Yemi", "Bola"])

// Quadratic time

func printName(names: [String]) {
    
    for _ in names {
        
        for name in names {
            
            print(name)
        }
    }
}
//printNames(names: ["Sola", "Yemi", "Bola"])


// Logarithmic time

func naiveContains(_ value : Int, In array: [Int]) -> Bool {
    
    guard !array.isEmpty else { return false }
    
    let middleindex = array.count / 2
    
    if value <= array[middleindex] {
        
        for index in 0...middleindex {
            
            if array [index] == value {
                
                return true
            }
        }
    }else {
        
        for index in middleindex..<array.count {
            
            if array[index] == value {
                
                return true
            }
        }
    }
    
    return false
}
naiveContains(68, In: [1, 3, 56, 66, 68, 80, 99, 105, 45])

// Time complexity comparison

func sumFromOne(upto n: Int) -> Int {
    
    var result = 0
    for i in 1...n {
        
        result += i
    }
    
    return result
}

sumFromOne(upto: 100)

func fromsumTwo(upto n: Int) -> Int {
    
    (1...n).reduce(0, +)

}
fromsumTwo(upto: 100)


func sumFromThree(upto n: Int) -> Int {
    
    ( n + 1 ) * n / 2
}

sumFromThree(upto: 100)


/* SPACE COMPLEXITY */

func printedSorted(_ array: [Int]) {
    
    let sorted = array.sorted()
    
    for elements in sorted {
        
        print(elements)
    }
}

var arrayOfNumbers = Array(1...100)
func printSorted(array: [Int]) {
    
    // 1
    guard !array.isEmpty else { return }
    
    // 2
    var currentCount = 0
    var minValue = Int.min
    
    // 3
    for value in array {
        
        if value == minValue {
            
            print (value)
            
            currentCount += 1
        }
    }
    
    while currentCount < array.count {
        
        //4
        var currentValue = array.max()!
        
        for value in array {
            
            if value < currentValue && value > minValue {
                
                currentValue = value
            }
        }
        
        for value in array {
            
            if value == currentValue {
                
                print(value)
                currentCount += 1
            }
        }
        
        minValue = currentValue
    }
}

//printSorted(array: arrayOfNumbers)
