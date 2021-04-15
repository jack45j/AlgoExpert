def threeNumberSum(array, targetSum):
    currentIdx = 0
    leftIdx = 1
    rightIdx = len(array) - 1
    results = []
    array.sort()    
    print(array)
	
    while currentIdx < len(array):
        while rightIdx > leftIdx:
            currentSum = array[currentIdx] + array[leftIdx] + array[rightIdx]
            if currentSum == targetSum:
                print(array[currentIdx], array[leftIdx], array[rightIdx])
                results.append([array[currentIdx], array[leftIdx], array[rightIdx]])
                leftIdx += 1
            elif currentSum < targetSum:
                print("leftIdx:", leftIdx, "value:", array[leftIdx])
                leftIdx += 1                
            else:
                print("rightIdx:", leftIdx, "value:", array[rightIdx])
                rightIdx -= 1
                
            
        currentIdx += 1
        leftIdx = currentIdx + 1
        rightIdx = len(array) - 1
        
        

    return results

print(threeNumberSum([12, 3, 1, 2, -6, 5, -8, 6], 0))