def moveElementToEnd(array, toMove):
    leftIdx = 0
    rightIdx = len(array) - 1
    
    print(array)
    while leftIdx < rightIdx:
        print(leftIdx, array[leftIdx], rightIdx, array[rightIdx])
        if array[leftIdx] == toMove and array[rightIdx] != toMove:
            array[leftIdx], array[rightIdx] = array[rightIdx], array[leftIdx]
        elif array[leftIdx] == toMove and array[rightIdx] == toMove:
            rightIdx -= 1
            continue
        elif array[leftIdx] != toMove and array[rightIdx] != toMove:
            leftIdx += 1
            continue
        leftIdx += 1
        rightIdx -= 1
    return array

def moveElementToEnd2(array, toMove):
    leftIdx = 0
    rightIdx = len(array) - 1

    while leftIdx < rightIdx:
        if array[rightIdx] == toMove:
            rightIdx -= 1
            continue
        if array[leftIdx] == toMove:
            array[leftIdx], array[rightIdx] = array[rightIdx], array[leftIdx]
        leftIdx += 1
    return array


print(moveElementToEnd2([2, 1, 2, 6, 8, 9, 10, 2], 2))
    
