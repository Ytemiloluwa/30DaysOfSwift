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





