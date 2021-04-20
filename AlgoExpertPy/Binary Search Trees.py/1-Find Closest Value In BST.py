from BST.BST import BST
def findClosestValueInBst(tree, target):
    
    return findClosestValue(tree, target, float('inf'))

def findClosestValue(node, target, closest):
    currentNode = node
    while currentNode is not None:
        print("current", currentNode.value)
        if abs(currentNode.value - target) < abs(target - closest):
            print("closer")
            closest = currentNode.value
        if target < currentNode.value:
            print("target < currentNode.value(", currentNode.value ,")")
            currentNode = currentNode.left
        elif target > node.value:
            print("target > currentNode.value(", currentNode.value ,")")
            currentNode = currentNode.right
        else: break
        
    return closest


root = BST(10)
root.left = BST(5)
root.left.left = BST(2)
root.left.left.left = BST(1)
root.left.right = BST(5)
root.right = BST(15)
root.right.left = BST(13)
root.right.left.right = BST(14)
root.right.right = BST(22)

print(findClosestValueInBst(root, 12))