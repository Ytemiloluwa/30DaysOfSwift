import Foundation

public class Node<Value> {
    
    public var value: Value
    public var reference: Node?
    
    public init(value: Value, reference: Node? = nil) {
        
        self.value = value
        self.reference = reference
        
    }

}

