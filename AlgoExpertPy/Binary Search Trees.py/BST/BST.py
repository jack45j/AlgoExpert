# This is the class of the input tree. Do not edit.
class BST:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

    def insert(self, value):
        if value < self.value:
            if self.left is None:
                self.left = BST(value)
            else:
                self.left.insert(value)
        else:
            if self.right is None:
                self.right = BST(value)
            else:
                self.right.insert(value)
        return self

    def contains(self, value):
        if value == self.value:
            return True
        elif value < self.value:
            if self.left is None: return False
            else: return self.left.contains(value)
        else:
            if self.right is None: return False
            else: return self.right.contains(value)
        

    def remove(self, value, parent = None):
        # print(self, value, parent)
        currentNode = self
        while currentNode is not None:
            # Find the Node which is going to be remove
            if value < currentNode.value:
                parent = currentNode
                currentNode = currentNode.left
            elif value > currentNode.value:
                parent = currentNode
                currentNode = currentNode.right
            else:
                # do the remove action
                if currentNode.left is not None and currentNode.right is not None:
                    # currentNode has both left and right node.
                    currentNode.value = currentNode.right.getMinValue()
                    currentNode.right.remove(currentNode.value, currentNode)
                elif parent is None:
                    # top most node AND only has single child node.
                    if currentNode.left is not None:
                        # Notice the order of assignee left or right node.
                        currentNode.value = currentNode.left.value
                        currentNode.right = currentNode.left.right
                        currentNode.left = currentNode.left.left
                    elif currentNode.right is not None:
                        currentNode.value = currentNode.right.value
                        currentNode.left = currentNode.right.left
                        currentNode.right = currentNode.right.right
                    else:
                        # single node tree. 
                        # do nothing.
                        pass
                elif parent.left == currentNode:
                    parent.left = currentNode.left if currentNode.left is not None else currentNode.right
                elif parent.right == currentNode:
                    parent.right = currentNode.left if currentNode.left is not None else currentNode.right
                break    
        return self

    def getMinValue(self):
        if self.left is not None:
            return self.left.getMinValue()
        else: return self.value


    @staticmethod
    def sampleBST():
        sampleBST = BST(10)
        sampleBST.left = BST(5)
        sampleBST.left.left = BST(2)
        sampleBST.left.left.left = BST(1)
        sampleBST.left.right = BST(5)
        sampleBST.right = BST(15)
        sampleBST.right.left = BST(13)
        sampleBST.right.left.right = BST(14)
        sampleBST.right.right = BST(22)
        return sampleBST

#         10
#       /   \
#      5    15
#     / \   / \
#    2   5 13 22
#   /       \
#  1        14
#
#
#
