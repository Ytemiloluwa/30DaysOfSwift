import Foundation

// STACK CHALLENGES

public struct Stack<Elements> {
    
    private var storage: [Elements] = []
    
    public init() {}
    
    public mutating func push(_ elements: Elements) {
        
        storage.append(elements)
        
    }
    
    @discardableResult
    public mutating func pop() -> Elements? {
        
        return storage.popLast()
    }
    
    public func peek() -> Elements? {
        
        storage.last
        
    }
    
    public var isEmpty: Bool {
        
        peek() == nil
    
    }
}
// REVERSE AN ARRAY

func reversedArray(_ arrray: [Int]) -> [Int] {
    
    return arrray.reversed()
}
print(reversedArray(Array(1...100)))

// REVERSE AN ARRAY USING STACKS

func ReversedStackArray(_ list: [String]) {
    
    var stack = Stack<String>()
    
    for value in list {
        
        stack.push(value)
        
    }
    while let value = stack.pop() {
        
        print(value)
    }
}
