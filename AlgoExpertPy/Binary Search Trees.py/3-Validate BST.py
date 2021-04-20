from BST.BST import BST
def validateBst(tree):
    
    minValue = -float('inf')
    maxValue = float('inf')
    
    return isValidateNode(tree, minValue, maxValue)


def isValidateNode(node, min, max):
    if node is None: return True
    if node.value < min or node.value > max: return False
    return isValidateNode(node.left, min, node.value - 1) and isValidateNode(node.right, node.value, max)
        
root = BST.sampleBST()
print(validateBst(root))