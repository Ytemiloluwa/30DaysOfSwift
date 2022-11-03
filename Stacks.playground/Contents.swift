var stack = Stack()
stack.push(1)
stack.push("Temi")
stack.push(true)
stack.push(1.0)
print(stack)

if let poppedElement = stack.pop() {
  print("Popped: \(poppedElement)")
}

