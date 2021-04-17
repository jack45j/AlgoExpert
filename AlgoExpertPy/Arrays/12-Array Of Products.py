def arrayOfProducts(array):
    
    result = []
    idx = 0
    
    if len(array) < 2: return 0
    while idx < len(array):
        currentMultiple = 1

        leftIdx = idx - 1
        while leftIdx >= 0:
            currentMultiple *= array[leftIdx]
            leftIdx -= 1

        rightIdx = idx + 1
        while rightIdx < len(array):
            currentMultiple *= array[rightIdx]
            rightIdx += 1

        result.append(currentMultiple)

        idx += 1
    
    return result

print(arrayOfProducts([5, 1, 4, 2]))