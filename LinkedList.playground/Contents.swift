import Foundation

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)
let node4 = Node(value: 4)
let node5 = Node(value: 5)


node1.nextValue = node2
node2.nextValue = node3
node3.nextValue = node4
node4.nextValue = node5

print(node1)
print(node2)
print(node3)
print(node4)
print(node5)

// Push Operation
var list = LinkedList<Int>()

list.push(4)
list.push(3)
list.push(2)
list.push(1)

print(list)

var list2 = LinkedList<Int>()
list2.append(1)
list2.append(2)
list2.append(3)

print(list2)


var list3 = LinkedList<Int>()

list3.push(3)
list3.push(2)
list3.push(1)

print("Before inserting: \(list3)")

var middleNode = list3.node(at: 1)!

for _ in 1...4 {
    
    middleNode = list3.insert(0, after: middleNode)
}
print("After inserting: \(list3)")


var list4 = LinkedList<Int>()
list4.push(4)
list4.push(3)
list4.push(2)
list4.push(1)

print("Before popping list: \(list4)")
let poppedValue = list4.pop()
print("After popping list4: \(list4)")


var list5 = LinkedList<Int>()

list5.push(4)
list5.push(3)
list5.push(2)
list5.push(1)

print("Before removing last node: \(list5)")
let removeValue = list5.removeLast()

print("After removing last node: \(list5)")


var list6 = LinkedList<Int>()
list6.push(4)
list6.push(3)
list6.push(2)
list6.push(1)

print("Before removing at particluar index: \(list6)")
let index = 1
let node = list.node(at: index - 1)!
let removedValue = list6.remove(after: node)

print("After removing at index: \(index): \(list6)")
print("Removed value: " + String(describing: removeValue))


var list7 = LinkedList<Int>()
for i in 0...9 {
    
    list7.append(i)
    
}

print("List: \(list7)")
print("First element: \(list[list7.startIndex])")
print("Last element: \(list[list7.endIndex])")
//print("Index After: \(list7.index(after: node))")
print("Array containing first 3 elements: \(Array(list7.prefix(3)))")
print("Array containing last 3 elements: \(Array(list7.suffix(3)))")


let sum = list7.reduce(0, +)
print("Sum of all values: \(sum)")

var array1 = [1, 2]
var array2 = array1

print("Array One: \(array1)")
print("Array Two: \(array2)")

// adding 3 to array two
array2.append(3)
print("Array One: \(array1)")
print("Array Two: \(array2)")


print("------------------------------------------------------")

// Applying copy on write


var listOne = LinkedList<Int>()
listOne.append(1)
listOne.append(2)

var listTwo = listOne

print("List1:\(listOne)")
print("List2:\(listTwo)")

print("After appending 3 to list2")
listTwo.append(3)

print("List1:\(listOne)")
print("List2:\(listTwo)")
//
//if let node = listTwo.node(at: 0) {
//
//    listTwo.remove(after: node)
//}
//
//print("ListTwo: \(listTwo)")

//
//print("-----------------------------------------------------")
//
//print("ListOne uniquely referenced: \(isKnownUniquelyReferenced(&listOne.head))")
//var listTwo = listOne
//
//print("ListOne uniquely referenced: \(isKnownUniquelyReferenced(&listOne.head))")



private func printInReverse<T>(_ node: Node<T>?) {
    
    guard let node = node else { return }
    
    printInReverse(node.nextValue)
    
}
func printInReverse<T>(_ list: LinkedList<T>) {
    
    printInReverse(list.head)
}

var listA = LinkedList<Int>()
listA.push(3)
listA.push(2)
listA.push(1)

print("Original list: \(listA)")
print("Printing in reverse:")
printInReverse(listA)


func RunnersTechnique<T>(_ list: LinkedList<T>) -> Node<T>? {
    
    var slow = list.head
    var fast = list.head
    
    while let nextFast = fast?.nextValue {
        
        fast = nextFast.nextValue
        slow = slow?.nextValue
        
    }
    
    return slow
}

var RunnersTechniqueList = LinkedList<Int>()
RunnersTechniqueList.push(3)
RunnersTechniqueList.push(2)
RunnersTechniqueList.push(1)

print(RunnersTechniqueList)

if let middleNode = RunnersTechnique(RunnersTechniqueList) {
    
    print(middleNode)
}

extension LinkedList {
    
    mutating func reverse() {
        
        tail = head
        var prev = head
        var current = head?.nextValue
        prev?.nextValue = nil
   
        while current != nil {
            
            let next = current?.nextValue
            current?.nextValue = prev
            prev = current
            current = next
        }
        
        head = prev
    }
}

var reverseList = LinkedList<Int>()
reverseList.push(3)
reverseList.push(2)
reverseList.push(1)


print("Original list: \(reverseList)")
reverseList.reverse()
print("Reversed List: \(reverseList)")
