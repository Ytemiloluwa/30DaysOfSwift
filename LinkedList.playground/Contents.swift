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
