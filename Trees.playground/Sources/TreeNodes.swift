import Foundation

public class TreeNode<T> {
    
    public var value: T
    public var childeren: [TreeNode] = []
    
    public init(_ value: T) {
        
        self.value = value
    }
}

