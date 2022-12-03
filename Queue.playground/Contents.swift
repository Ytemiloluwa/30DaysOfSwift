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

extension QueueArray: CustomStringConvertible {
    
    public var description: String {
        
        String(describing: array)
    }
}

var queue = QueueArray<String>()
queue.enqueue("Femi")
queue.enqueue("Semi")
queue.enqueue("Demi")
queue
queue.dequeue()
queue
queue.peek

print(queue)


// Double Stack Implementation

public struct QueueStack<T>: Queue {

    private var leftStack: [T] = []
    
    private var rightStack: [T] = []
    
    public init() {}
    
    public mutating func enqueue(_ element: T) -> Bool {
        
        rightStack.append(element)
        return true
    }
    
    public mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        
        return leftStack.popLast()
            
    }
    
    public var peek: T? {
        
        !leftStack.isEmpty ? leftStack.last : rightStack.first
        
    }
    
    public var isEmpty: Bool {
        
        leftStack.isEmpty && rightStack.isEmpty
    }
    
}

extension QueueStack: CustomStringConvertible {
    
    public var description: String {
        
        String(describing: leftStack.reversed() + rightStack)
    }
}

var queuestack = QueueStack<String>()
queuestack.enqueue("Ray")
queuestack.enqueue("Brian")
queuestack.enqueue("Eric")
queuestack
queuestack.dequeue()
queuestack
queuestack.peek

print(queuestack)
