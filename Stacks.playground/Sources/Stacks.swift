
public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public init() {}
}

extension Stack: CustomDebugStringConvertible {
    
    public var debugDescription: String {
        
        """
      
       ----top----
      \(storage.map { "\($0)"}.reversed().joined(separator: "\n"))
      
      -----------
      """
    }
}
