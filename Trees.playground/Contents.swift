
let beverages = TreeNode("Beverages")
let hot = TreeNode("Hot")
let cold = TreeNode("cold")


beverages.add(hot)
beverages.add(cold)


func makeBeverageTree() -> TreeNode<String> {
    
    let tree = TreeNode("Beverages")
    
    let hot = TreeNode("hot")
    let cold = TreeNode("Cold")
    
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let chocolate = TreeNode("cocoa")
    
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    
    let gingerAle = TreeNode("ginger ale")
    let bitterLemon = TreeNode("bitter lemon")
    
    tree.add(hot)
    tree.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    
    cold.add(soda)
    cold.add(milk)
    
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    
    soda.add(gingerAle)
    soda.add(bitterLemon)
    
    return tree

}

let tree = makeBeverageTree()
tree.forEachDepthFirst { print($0.value) }

//
//let levelTree = makeBeverageTree()
//levelTree.forEachLevelOrder{ print($0.value) }

