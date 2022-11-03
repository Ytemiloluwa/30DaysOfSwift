// import Metal

public struct Stack: Any {
    
    private var storage: [Any] = []
    
    public init() {}
    
    public mutating func push(_ element: Any) {
        
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Any? {
        
        return storage.popLast()
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
