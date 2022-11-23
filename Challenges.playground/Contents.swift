import Foundation

// STACK CHALLENGES

public struct Stack<Element>{
    
    private var storage: [Element] = []
    
    public init() {}
    
    public mutating func push(_ elements: Element) {
        
        storage.append(elements)
        
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        
        return storage.popLast()
    }
    
    func peek() -> Element? {
        
        storage.last
    }
    
    public var isEmpty: Bool {
        
        peek() == nil
    }
}

// REVERSE AN ARRAY

func reversedArray(_ arrray: [Int]) -> [Int] {
    
    return arrray.reversed()
}
print(reversedArray(Array(1...100)))

// REVERSE AN ARRAY USING STACKS

func ReversedStackArray(_ list: [String]) {
    
    var stack = Stack<String>()
    
    for value in list {
        
        stack.push(value)
        
    }
    while let value = stack.pop() {
        print(value)
    }
}

var arrray = ["A", "B", "C", "D"]

print(arrray)
ReversedStackArray(arrray)


func checkParentheses(_ string: String)-> Bool {
    
    var stack = Stack<Character>()
    
    
    for character in string {
        
        if character == "(" {
            
            stack.push(character)
        }else if character == ")"{
            if stack.isEmpty {
                
                return false
            } else {
                
                stack.pop()
            }
            
        }
    }
    return stack.isEmpty
}

print(checkParentheses("(Hello World !)"))

// LINKED LIST CHALLNEGES

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
        
        guard let nextValue = nextValue else { return "\(value)" }
        
        return "\(value) -> " + String(describing: nextValue) + ""
        
    }
}


var node1 = Node(value: 1)
var node2 = Node(value: 2)
var node3 = Node(value: 3)
var node4 = Node(value: 4)


node1.nextValue = node2
node2.nextValue = node3
node3.nextValue = node4

print(node1)
print(node2)
print(node3)
print(node4)

public struct LinkedList<Value> {
    
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init(){}
    
    public var isEmpty: Bool {
        
        head == nil
    }
    
    public mutating func push(_ value: Value) {
        
        head = Node(value: value, nextValue: head)
        
        if tail == nil {
            
            tail = head
        }
    }
}

extension LinkedList: CustomStringConvertible {
    
    
    public var description: String {
        
        
        guard let head = head else { return " Empty List" }
        
        
        return String(describing: head)
    }
}
 

func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    var slow = list.head
    var fast = list.head
    while let nextFast = fast?.nextValue{
        fast = nextFast.nextValue
        slow = slow?.nextValue
    }
    return slow
    
}
var list = LinkedList<Int>()
list.push(3)
list.push(2)
list.push(1)
print(list)
if let middleNode = getMiddle(list) {
  print(middleNode)
}

//let Lists = [1, 2, 3, 4, 5]
//
//var sum = 0
//
//for total in Lists {
//
//    sum += total
//}
//
//print("Sum of Array is: \(sum)")

let Lists = [1, 2, 3, 4, 5]
func printSumOfNumbers(_ arrays: [Int]) -> Int {
    
    var sum = 0
    
    for total in arrays {
        
        sum += total
    }
    
    return sum

}
print("The sum of intergers in the array is: \(printSumOfNumbers(Lists))")
