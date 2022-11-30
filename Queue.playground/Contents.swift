public struct QueueArray<T>: Queue {
    
    private var array: [T] = []
    
    public init() {}
    
    public var isEmpty: Bool {
        
        array.isEmpty
    }
    
    public var peek: T? {
        
        array.first
    }
    
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    public mutating func dequeue() -> T? {
        
        isEmpty ? nil : array.removeFirst()
    }
    
}
