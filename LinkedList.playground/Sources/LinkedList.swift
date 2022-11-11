import Foundation

public struct LinkedList<Value> {
    
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        
        head == nil
    }
    
    // Push or head - first Operation
    public mutating func push(_ value: Value) {
        
        head = Node(value: value, nextValue: head)
        
        if tail == nil {
            
            tail = head
        }
    }
    
    // Append or tail - end insertion
    
    public mutating func append(_ value: Value) {
        
        guard !isEmpty else {
            
            push(value)
            
            return
        }
        
        tail!.nextValue = Node(value: value)
        
        tail = tail!.nextValue
    }
    
    public func node(at index: Int) -> Node<Value>? {
        
        var currentNode = head
        
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            
            currentNode = currentNode!.nextValue
            
            currentIndex += 1
        }
        return currentNode
    }
    
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        
        guard tail !== node else {
            append(value)
            return tail!
            
        }
        node.nextValue = Node(value: value, nextValue: node.nextValue)
        
        return node.nextValue!
    }
    
    @discardableResult public mutating func pop() -> Value? {
        
        defer {
            
            head = head?.nextValue
            
            if isEmpty {
                
                tail = nil
            }
        }
        
        return head?.value
    }
    
    @discardableResult public mutating func removeLast() -> Value? {
        
        guard let head =  head else { return nil }
        
        guard head.nextValue != nil else { return pop()}
        
        var prev = head
        
        var current = head
        
        while let next = current.nextValue {
            
            prev = current
            
            current = next
        }
        
        prev.nextValue = nil
        
        tail = prev
        
        return current.value
    }

}
extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        
        guard let head = head else { return "Empty list"}
        
        return String(describing: head)
        
    }
}
