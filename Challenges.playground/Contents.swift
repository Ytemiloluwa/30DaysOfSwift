import Foundation

// STACK CHALLENGES

public struct Stack: Any{
    
    private var storage: [Any] = []
    
    public init() {}
    
    public mutating func push(_ elements: Any) {
        
        storage.append(elements)
        
    }
    
    @discardableResult
    public mutating func pop() -> Any? {
        
        return storage.popLast()
    }
}

// REVERSE AN ARRAY

func reversedArray(_ arrray: [Int]) -> [Int] {
    
    return arrray.reversed()
}
print(reversedArray(Array(1...100)))

// REVERSE AN ARRAY USING STACKS

func ReversedStackArray(_ list: [String]) {
    
    var stack = Stack()
    
    for value in list {
        
        stack.push(value)
        
    }
    while let value = stack.pop() {
        print(value)
    }
}

var arrray = ["A", "B", "C", "D"]

print(arrray)
ReversedStackArray(arrray)

//
//func checkParentheses(_ string: String)-> Bool {
//
//    var stack = Stack()
//
//
//    for character in string {
//
//        if character == "(" {
//
//            stack.push(character)
//        }else if character == ")"{
//            if stack.isEmpty {
//
//                return false
//            } else {
//
//                stack.pop()
//            }
//
//        }
//    }
//    return stack.isEmpty
//}
//
//print(checkParentheses("(Hello World !)"))
