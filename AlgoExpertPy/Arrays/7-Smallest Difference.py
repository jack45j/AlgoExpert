import sys
def smallestDifference(arrayOne, arrayTwo):
    arrayOne.sort()
    arrayTwo.sort()
    smallestDifference = sys.maxsize
    smallestCombination = []
    leftIdx = 0
    rightIdx = 0
    while leftIdx < len(arrayOne) and rightIdx < len(arrayTwo):
        if arrayOne[leftIdx] == arrayTwo[rightIdx]:
            return [arrayOne[leftIdx], arrayTwo[rightIdx]]
        elif arrayOne[leftIdx] < arrayTwo[rightIdx]:
            if arrayTwo[rightIdx] - arrayOne[leftIdx] < smallestDifference:
                smallestDifference = arrayTwo[rightIdx] - arrayOne[leftIdx]
                smallestCombination = [arrayOne[leftIdx], arrayTwo[rightIdx]]
            leftIdx += 1
        elif arrayOne[leftIdx] > arrayTwo[rightIdx]:
            if arrayOne[leftIdx] - arrayTwo[rightIdx] < smallestDifference:
                smallestDifference = arrayOne[leftIdx] - arrayTwo[rightIdx]
                smallestCombination = [arrayOne[leftIdx], arrayTwo[rightIdx]]
            rightIdx += 1
    return smallestCombination

print(smallestDifference([-1, 5, 10, 20, 28, 3], [26, 134, 135, 15, 17]))