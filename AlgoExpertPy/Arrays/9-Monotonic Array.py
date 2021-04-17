def isMonotonic(array):
    
    isIncreasing = False
    isDecreasing = False
    
    for idx in range(len(array) - 1):
        if array[idx] == array[idx + 1]:
            continue
        elif array[idx] < array[idx + 1]:
            print("Increasing")
            isIncreasing = True
        else:
            print("Decreasing")
            isDecreasing = True
        
        print(idx)
        if isIncreasing and isDecreasing:
            return False
        
    return True

print(isMonotonic([-1, 0, 1, 21]))
