import Foundation

public class Node<Value> {
    
    public var value: Value
    public var nextValue: Node?
    
    public init(value: Value, nextValue: Node? = nil) {
        
        self.value = value
        self.nextValue = nextValue
        
    }
}

extension Node: CustomStringConvertible {
    
    public var description: String {
        
        
        guard let nextValue = nextValue else {
            
            return "\(value)"
        }
        
        return "\(value) -> " + String(describing: nextValue) + ""
    }
}

