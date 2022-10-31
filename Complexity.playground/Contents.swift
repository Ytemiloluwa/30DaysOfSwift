import Foundation

// Constant time
func createFirst(names: [String]) {
    
    if let first = names.first {
        
        print(first)
    }else {
        
        print("no names")
    }
}


createFirst(names: ["Sola", "Yemi", "Bola"])
