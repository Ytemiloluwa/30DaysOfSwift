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
