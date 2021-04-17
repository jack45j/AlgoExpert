def firstDuplicateValue(array):
    
    for val in array:
        idx = abs(val) - 1
        if array[idx] < 0:
            return abs(val)
        else:
            array[idx] *= -1

    return -1

print(firstDuplicateValue([1, 3, 2, 3]))