import Foundation

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

