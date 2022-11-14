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
    
    @discardableResult public mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            
            if node.nextValue === tail {
                
                tail = node
            }
            node.nextValue = node.nextValue?.nextValue
            
        }
        
        return node.nextValue?.value
    }
    
}
extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        
        guard let head = head else { return "Empty list"}
        
        return String(describing: head)
        
    }
}

extension LinkedList: Collection {
    
    public struct Index: Comparable {
        
        public var node : Node<Value>?
        
        static public func ==(lhs: Index, rhs: Index) -> Bool {
            
            switch (lhs.node, rhs.node) {
            case let (left?, right?):
                return left.nextValue === right.nextValue
            case (nil, nil):
                return true
            default:
                return false
            }
        }
        
        static public func <(lhs: Index, rhs: Index) -> Bool {
            
            guard lhs != rhs else { return false }
            
            let nodes = sequence(first: lhs.node) { $0?.nextValue }
            
            return nodes.contains{ $0 === rhs.node }
            
        }
    }
    
    public var startIndex: Index {
        
        Index(node: head)
    }
    
    public var endIndex: Index {
        
        Index(node: tail?.nextValue)
    }
    
    public func index(after i: Index) -> Index {
        
        Index(node: i.node?.nextValue)
    }
    
    public subscript(position: Index) -> Value {
        
        position.node!.value
    }
    
}
