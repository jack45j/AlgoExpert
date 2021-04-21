from BST.BST import BST
def minHeightBst(array):
    return fasterConstructBST(array)

def constructBST(array, node):
    middleIdx = (len(array) - 1) // 2
    if middleIdx >= 0:
        print("middleIdx", middleIdx)
        if node is None:
            node = BST(array[middleIdx])
        else:
            print("insert", array[middleIdx])
            node.insert(array[middleIdx])

        print(array[0: middleIdx])
        constructBST(array[0: middleIdx], node)
        print(array[middleIdx + 1: len(array)])
        constructBST(array[middleIdx + 1: len(array)], node)

    return node
    
def fasterConstructBST(array):
    middleIdx = (len(array) - 1) // 2
    if middleIdx >= 0:
        print(array[middleIdx])
        bst = BST(array[middleIdx])
        bst.left = fasterConstructBST(array[0: middleIdx])
        bst.right = fasterConstructBST(array[middleIdx + 1: len(array)])
        return bst
    
    
array = [1, 2, 5, 7, 10, 13, 14, 15, 22]
root = minHeightBst(array)

if __name__ == '__nmain__':
    print(root.value)
    print(root.left.value)
    print(root.right.value)
    print(root.left.left.value)
    print(root.left.right.value)
    print(root.left.right.right.value)
    print(root.right.left.value)
    print(root.right.right.value)
    print(root.right.right.right.value)

