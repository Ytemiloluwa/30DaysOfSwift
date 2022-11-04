// import Metal

public struct Stack: Any {
    
    private var storage: [Any] = []
    
    public init(elements: [Any]) {
        
        storage = elements
    }
    
    public mutating func push(_ element: Any) {
        
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Any? {
        
        return storage.popLast()
    }
    
    public func peek() -> Any? {
        
        storage.last
    }
    
    public var isEmpty: Bool {
        
        peek() == nil
    }
}

extension Stack: CustomDebugStringConvertible {

    public var debugDescription: String {

        """
       -----------
      \(storage.map { "\($0)"}.reversed().joined(separator: "\n"))
       -----------
      """
    }
}
