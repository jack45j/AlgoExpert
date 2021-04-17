def spiralTraverse(array):
    currentLeftEdge = 0
    currentTopDepth = 0
    currentRightEdge = len(array[currentTopDepth]) - 1
    currentBottomDepth = len(array) - 1
    result = []

    while currentLeftEdge <= currentRightEdge and currentTopDepth <= currentBottomDepth:
        print("LeftE:", currentLeftEdge, "RightE:", currentRightEdge)
        print("TopD:", currentTopDepth, "BottomD:", currentBottomDepth)

        # top edge
        for idx in range(currentLeftEdge, currentRightEdge):
            result.append(array[currentTopDepth][idx])
            print("top", result)
        
        # right edge
        for idx in range(currentTopDepth, currentBottomDepth + 1):
            result.append(array[idx][currentRightEdge])
            print("right", result)

        

        # bottom edge
        for idx in range(currentRightEdge - 1, currentLeftEdge, -1):
            if currentTopDepth == currentBottomDepth: continue
            else: result.append(array[currentBottomDepth][idx])
            print("bottom", result)
        
        # left edge
        for idx in range(currentBottomDepth, currentTopDepth, -1):
            if currentLeftEdge == currentRightEdge: continue
            else: result.append(array[idx][currentLeftEdge])
            print("left", result)


        currentLeftEdge += 1
        currentRightEdge -= 1
        currentTopDepth += 1
        currentBottomDepth -= 1

    return result


threeMultiFive = [
    [1, 2, 3],
    [12, 13, 4],
    [11, 14, 5],
    [10, 15, 6],
    [9, 8, 7]
]
twoLine = [
    [4, 2, 3, 6, 7, 8, 1, 9, 5, 10],
    [12, 19, 15, 16, 20, 18, 13, 17, 11, 14]
  ]
single = [[1]]
matrix = [[1, 2, 3, 4], [12, 13, 14, 5], [11, 16, 15, 6], [10, 9, 8, 7]]
square = [[1, 2, 3], [8, 9, 4], [7, 6, 5]]
notSquare = [
    [1, 2, 3, 4], 
    [10, 11, 12, 5], 
    [9, 8, 7, 6]]
print(spiralTraverse([[]]))
