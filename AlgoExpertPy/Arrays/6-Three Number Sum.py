import time
def threeNumberSum(array, targetSum):
    currentIdx = 0
    leftIdx = 0
    rightIdx = len(array) - 1
    results = []
    array.sort()    
	
    while currentIdx < len(array):
        time.sleep(1)
        print("currentIdx", currentIdx, "< len(array)", len(array))
        print("")
        while rightIdx > leftIdx:
            print("rightIdx > leftIdx")
            currentSum = array[currentIdx] + array[leftIdx] + array[rightIdx]
            if currentSum == targetSum:
                print("currentSum == targetSum")
                results.append([array[currentIdx] + array[leftIdx] + array[rightIdx]])
                break
            elif currentSum < targetSum:
                print("currentSum < targetSum")
                leftIdx += 1
            else:
                print("currentSum > targetSum")
                rightIdx -= 1
        resetPointer(leftIdx, rightIdx, currentIdx, len(array))

    return results

def resetPointer(leftIdx, rightIdx, currentIdx, count):
    print("resetPointer")
    currentIdx += 1
    leftIdx = currentIdx + 1
    rightIdx = count - 1
    print(currentIdx)

print(threeNumberSum([12, 3, 1, 2, -6, 5, -8, 6], 0))