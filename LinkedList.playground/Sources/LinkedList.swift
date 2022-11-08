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

}
extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        
        guard let head = head else { return "Empty list"}
        
        return String(describing: head)
        
    }
}
