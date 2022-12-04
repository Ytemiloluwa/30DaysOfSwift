import Foundation

public class TreeNode<T> {
    
    public var value: T
    public var children: [TreeNode] = []
    
    public init(_ value: T) {
         
        self.value = value
    }
    
    public func add(_ child: TreeNode) {
        
        children.append(child)
    }
}

extension TreeNode {
    
    public func forEachDepthFirst(visit: (TreeNode) -> Void) {
        
        visit(self)
        
        children.forEach {
            
            $0.forEachDepthFirst(visit: visit)
        }
    }
}

//extension TreeNode {
//
//    public func forEachLevelOrder(visit: (TreeNode) -> Void) {
//        
//        visit(self)
//        var queue = Queue<TreeNode>()
//        children.forEach{ queue.enqueue($0)}
//
//        while let node = queue.dequeue() {
//
//            visit(node)
//
//            node.children.forEach{ queue.enqueue ($0)}
//        }
//    }
//}

public struct QueueArray<T>: Queue {
    
    private var array: [T] = []
    
    public var isEmpty: Bool {
        
        array.isEmpty
    }
    
    public mutating func enqueue(_ element: T) -> Bool {
        
        array.append(element)
        
        return true
    }
    
    public mutating func dequeue() -> T? {
        
        array.isEmpty ? nil : array.removeFirst()
    }
    
    public var peek: T? {
        
        array.first
    }
    
}

extension QueueArray : CustomStringConvertible {
    
    public var description: String {
        
        String(describing: array)
    }
}

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


// Search Algorithm

extension TreeNode where T: Equatable {
    
    public func search(_ value: T) -> TreeNode? {
        
        var result: TreeNode?
        
        forEachDepthFirst{ node in
            
            if node.value == value {
                
                result = node
            }
            
        }
        
        return result
    }
}
